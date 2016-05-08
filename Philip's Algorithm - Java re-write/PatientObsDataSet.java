import java.util.ArrayList;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


public class PatientObsDataSet extends ContainsObservationTypedObject {


	// Class fields
	private static Map<String, Parameter<?>> tempParamList = new HashMap<>();
	
	// Instance fields
	private Map<String, Parameter<?>> paramList;
	public Result result;
	
	// Exposed Methods.
	@Override public void addToParamList(Observations observation){tempParamList.put(observation.getName(), new Parameter<Observations>(observation));}
	@Override public Map<String, Parameter<?>> getParamList(){return paramList;}
	@Override public Parameter<?> getParamList(String key){return paramList.get(key);}
	
	
	// Constructor
	PatientObsDataSet(){
		super();
		paramList = new HashMap<>(tempParamList);
	}
	
	
		
	
	 class Parameter <Ob extends Observations> extends ObservationTyped<Ob>{														// Parameter Class, initiated with an Observation as a type through extending ParameterTyped
		 
		Parameter(Observations parameter){																							// super Constructor stores the observation with which the parameter is initiated within the a field "Type" 
	    	super(parameter);																										// belonging to all ParameterTyped objects, accessible through the public method getType(). 
	     }
	

		// Instance fields
		private Object value;																										// Parameters have two fields - a value for the parameter
		private int score;																											//		and a score calculated from comparing the parameter value against thresholds associated with the parameter
		
		// Exposed Methods
		public Object getValue(){return this.value;}							 
		public void setValue(Object value){
			this.value = value;
			TypeCheck.typeCheck(value.getClass());		
		}
		
		int getScore(){return this.score;}
		
		void calcScore(){  																															// calcScore method initiates a compare-steam with each threshold associated with the parameter 
			score = 0;																																//		as an argument into the compare stream.
			for (Patient.ThresholdValue<?> threshold : getPatient().getParamList().get(this.getType().getName()).getThresholds().values()){			//		Associated thresholds are retrieved by passing the parameter's observation-type into the
				score = score + threshold.compare(this).tempScore;																					//		patient's paramList (observation list). This returns the thresholds also instantiated with 
				result.setTriggerResponses(threshold.compare(this).triggering);																		// 		the same Observation.
			}																																		// The results of the compare-stream (a score, and triggers) are then dealt with appropriately.
			
			result.ScoreAndTrigger(this); 
			
			
		}
		
		
		
		
	}
	
	
	 // TODO - the Following classes and methods were written in just one draft, plus changes in response to errors, in some haste, and have not been re-written
	 // They therefore need re-examining and planning

	class Result{
		

		// Aggregate score associated with the entire ObsSet
		private int totalScore;
		private void setScore(int score) {this.totalScore += score; this.setTriggerResponses();}
		
		// Instance fields for triggerResponses and their sorting and ordering
		private List<Patient.TriggerSet.Triggers[]> triggerResponses = new ArrayList<>();
		private List<Patient.TriggerSet.Triggers> orderedTriggerResponses = new ArrayList<>();
		private EnumSet<Patient.TriggerSet.Triggers> triggerSet = EnumSet.of(Patient.TriggerSet.Triggers.TDSobs); 
		private List<Patient.TriggerSet.Triggers> reducedTriggers = new ArrayList<>();
		
		// Exposed Methods
		public void ScoreAndTrigger(Parameter<?> param){this.setScore(param.getScore());}
		public int getScore() {return totalScore;}
		public List<Patient.TriggerSet.Triggers> getTriggerResponses() {return reducedTriggers;}
		
		
		
		
		// Two overloaded methods to respond to triggers on individual parameters (the second case), and respond to triggers relating to the entire observation set appropriately, storing all of the responses which have been triggered in a list
		
		private void setTriggerResponses() {
			for (Patient.TriggerSet.Trigger<?> trigger : Chart.getInstance().getPatient().getTriggerArray().getGlobaltriggersList().values()){ 
				if (this.getScore() >= trigger.getTriggerThreshold()){
					triggerResponses.add(trigger.getTriggerResponse());	
				}
			}
			
		}
		
		private void setTriggerResponses(List<Patient.TriggerSet.Triggers[]> triggers) {
			if (triggers != null) {	
			
				for (Patient.TriggerSet.Triggers[] trigger : triggers){
					if (!triggers.isEmpty()){
						triggerResponses.add(trigger);
					}
			}
				
		}	
			
							
		}
		
		// Method to then sort out the unordered trigger-responses List and remove duplicates.
		// This is achieved through making use of an EnumSet and it's efficiency.
		// The result is stored in an EnumSet orderedTriggerResponses
		public void orderTriggers() {
			for (Patient.TriggerSet.Triggers[] triggers : triggerResponses){		
				for (Patient.TriggerSet.Triggers trigger : triggers){		
					triggerSet.add(trigger);		
				}
				
			}		
			
			for (Patient.TriggerSet.Triggers trigger : triggerSet){
				orderedTriggerResponses.add(trigger);
			}
			
		
		}
		
		// Method to reduce the trigger-responses to the 'highest level' response of each Trigger category.
		// I.e there is no point triggering an escalation (in category (TypeOfResponse) Escalation) if a MET has also been triggered.
		// This is achieved by making using of Enum Ordinals. The Triggers Enum needs to be set up with the highest ranking triggers ahead of lower ranking triggers to work correctly.
		public void reduceTriggers() { 
			
			for (Patient.TriggerSet.Triggers.TypeOfResponse typeOfResponse : Patient.TriggerSet.Triggers.TypeOfResponse.listOfResponses){	
				for (Patient.TriggerSet.Triggers trigger : orderedTriggerResponses){
					if (trigger.typeOfResponse == typeOfResponse){reducedTriggers.add(trigger); break;}
					
				}
			}
			
		}
	
		
		
	}
	
	
	// Method to calculate the aggregate score and triggers for the observation Set.
	public Result ACEWScore(){
		result = new Result();
		for (PatientObsDataSet.Parameter<?> param : getParamList().values()){
			param.calcScore();
		}
		result.orderTriggers();		
		result.reduceTriggers();
		
		return result;
		
	}
	
	
}	
	