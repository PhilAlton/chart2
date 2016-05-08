import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


public class Patient extends ContainsObservationTypedObject {
	
	
	// Exposed Methods
				public TriggerSet 				getTriggerArray() 							{return triggerArray;															}	// Returns an object containing the triggers for patient's scores
				public List<PatientObsDataSet> 		getPatientObsSets()							{return patientObsSets;															}	// Returns the observations sets belonging to the patient
				public PatientObsDataSet 			getPatientObsSets(int index)				{return patientObsSets.get(index);												}	// Returns a specific observation set belonging to the patient, identified by an index
	@Override	public Map<String, Threshold<?>> 	getParamList()								{return paramList;																}	// Returns a map containing the thresholds belonging to each patient
	@Override	public Threshold<?> 				getParamList(String key)					{return paramList.get(key);														}	// Returns a specific threshold, in the map, identified by its name, e.g. "RespRate"
	@Override	public void 						addToParamList(Observations observation)	{paramList.put(observation.getName(), new Threshold<Observations>(observation));}	// Adds a threshold into the paramList, by passing it an observation
//				public void 						setTriggerArray(TriggerArray triggerArray) 	{this.triggerArray = triggerArray;												}	// Sets the trigger array. TODO - this isn't used at the moment


	
	
	// Class fields
	private static Map<String, Threshold<?>> paramList = new HashMap<>();
	
	
	// Instance fields
	private TriggerSet triggerArray = new TriggerSet();
	private List<PatientObsDataSet> patientObsSets = new ArrayList<>();
	
	
	// Instance methods
	private void addObsSet(Map<String, Object> obsSet){		
		patientObsSets.add(new PatientObsDataSet());
		for (String key : obsSet.keySet()){
			patientObsSets.get(patientObsSets.size()-1).getParamList(key).setValue(obsSet.get(key));
		}
	}	
	
	
	
	// Patient Constructor
	Patient(String patientID){
		
		super();																												// Super constructor creates different instances of Thresholds with the different observations initiated in
																																// chart as parameters (i.e. Threshold<RespRate>, Threshold<HeartRate>, etc).
		//over-write any generic thresholds with specific thresholds
			// TODO - load from the database using patientID
			// <--TESTcode follows
				testMain.TestDataBase.testRetrieve_Thresholds(patientID);
			// TESTcode ends-->	
				
		
		//over-write any generic triggers with specific triggers
			// TODO - load from the database using patientID
			// <--TESTcode follows
				testMain.TestDataBase.testRetrieve_Triggers(patientID);
			// TESTcode ends-->
		
		//Load obsSets from the database
			// TODO - load ObsSets from the database using patientID
			// <--TESTcode follows
				for (Map<String, Object> obsSet : testMain.TestDataBase.testRetrieve_ObsSets(patientID)){
					addObsSet(obsSet);					
				}
				
			// TESTcode ends-->
	}
	
	
	

	
	

	class Threshold <Ob extends Observations> extends ObservationTyped<Ob>{														// Threshold Class, initiated with an Observation as a type through extending ParameterTyped
		 
		 Threshold(Observations parameter){																						// super Constructor stores the observation with which the threshold is initiated within the a field "Type" 
	    	super(parameter);																									// belonging to all ParameterTyped objects, accessible through the public method getType(). 
	     }
	
		
		private List<Patient.TriggerSet.Triggers[]> triggerResponses = new ArrayList<>(); 
		public List<Patient.TriggerSet.Triggers[]> getTriggerResponses(){return triggerResponses;} 
		public void addTriggerResponses(Patient.TriggerSet.Triggers[] trigger){triggerResponses.add(trigger);}
		
		// Map containing all of the ThresholdValue objects belonging to a threshold, indexed by an integer 
		private Map<Integer, ThresholdValue<?>> thresholdValues = new HashMap<>();											
																																	// TODO - rather than this being a Map, a list would probably be more appropriate, though the question of overriding
																																	//	thresholdValues with those specific to an individual patient is pertinent to this discussion, as overriding 
																																	//	thresholdValues will mean potentially deleting a default thresholdValue, which will need to be determined by an index
																																	//	location. 
																																	//	The most practical way to enable overwriting of thresholdValues will govern whether a map, or list or another is used
																																	// 	for the type of thresholdMap.
		
		// Method to overwrite all the thresholdValues belonging to a threshold
		void setThresholds(Map<Integer, ThresholdValue<?>> thresholdValues){this.thresholdValues = thresholdValues;}	 		
		
		// Method to set an individual thresholdValue, by calling the setThresholds method with the threshold value itself, its comparator, and the weight associated with crossing that threshold value
		<cT extends ComparatorThan> void setThresholds(Object threshold, cT comparator, int weight){							 
			ThresholdValue<cT> thresholdValue = new ThresholdValue<>(threshold, comparator, weight);
			this.thresholdValues.put(this.thresholdValues.size(), thresholdValue);
		}	
		
		
		<cT extends ComparatorThan> void setThresholds(Object threshold, cT comparator, TriggerSet.Triggers... triggers){							 
			ThresholdValue<cT> thresholdValue = new ThresholdValue<>(threshold, comparator, triggers);
			this.thresholdValues.put(this.thresholdValues.size(), thresholdValue);
		}	
			
		
		<cT extends ComparatorThan> void setThresholds(Object threshold, cT comparator, int weight, TriggerSet.Triggers... triggers){							 
			ThresholdValue<cT> thresholdValue = new ThresholdValue<>(threshold, comparator, weight, triggers);
			this.thresholdValues.put(this.thresholdValues.size(), thresholdValue);
		}	
		
		// Exposed method to retrieve the threholdVlaues of the threshold
		public Map<Integer, ThresholdValue<?>> getThresholds() {return thresholdValues;}	
		
		// Method to clear all thresholdValues from the threshold
		void clearThresholds(){thresholdValues.clear();}
			
		 
	 }

	 
	 
	
	
	 public class ThresholdValue<Ct extends ComparatorThan>{
			
			ThresholdValue(Object threshold, Ct comparator, int weight){									// TresholdValue constructed with a threshold value itself, a comparator for that value, and a weight associated with crossing that threshold
				setThreshold(threshold);
				setComparator(comparator);
				setWeight(weight);	
				setTriggers();
			}
			
			ThresholdValue(Object threshold, Ct comparator, TriggerSet.Triggers[] trigger){				// Second constructor to allow special parameter trigger responses.
				setThreshold(threshold);
				setComparator(comparator);
				setWeight(0);	
				setTriggers(trigger);	
			}
			
			ThresholdValue(Object threshold, Ct comparator, int weight, TriggerSet.Triggers[] trigger){	// third constructor to allow general parameter trigger + weight responses.
				setThreshold(threshold);
				setComparator(comparator);
				setWeight(weight);	
				setTriggers(trigger);	
			}
			
			
			
			
			// Exposed Methods.
			public Object getThreshold() {return threshold;}
			public void setThreshold(Object threshold) 
				{this.threshold = threshold; 
				TypeCheck.typeCheck(threshold.getClass());	}
						
			public Ct getComparator() {	return comparator;}
			public void setComparator(Ct comparator) {this.comparator = comparator;}
						
			public int getWeight() {return weight;}
			
			public void setWeight(int weight) {this.weight = weight;}	
			
			public void setTriggers(TriggerSet.Triggers[] triggers) {this.triggers = triggers;}	
			public void setTriggers(){triggers = new TriggerSet.Triggers[0];}
			public TriggerSet.Triggers[] getTriggers() {return triggers;}
			
			
			// Instance fields
			private Object threshold;
			private Ct comparator;
			private int weight = 0;
			private TriggerSet.Triggers[] triggers;
						
						
			
	// Compare Logic
			// TODO - Compare-steam needs to be rationalised and abstrctified via use of ComparableType interface. Compare logic should be lifted nearly entirely from the concrete classes,
			//			including the Result class, leaving the concrete classes with just the initial compare method (which will be abstract in the abstract parent class, to ensure 
			//			over-writing), which will ensure proper handling of the result from the compare-stream.
			//		- This being the case, result handling should be removed from the ComparatorThan classes, which should instead dispatch back to the initial compare method, which will then
			//			handle the results.
			
			private double compare;
			public double getCompare() {return compare;}
			public void setCompare(double compare) {this.compare = compare; if(Double.isNaN(compare)){this.compare = 1;}}							// set the value of compare, but first test for NAN as a result, and return 1, if NaN has been returned
			
		
			
			// Result class holds a template for information to be returned to the compare-stream initialiser
			public class Result{
				
				public int tempScore;
				public List<TriggerSet.Triggers[]> triggering;
				Result(int tempScore, List<TriggerSet.Triggers[]> triggers){
					this.tempScore = tempScore;
					this.triggering = triggers;
				}
				
			}
			
			
			// Initial compare method, called on this ThresholdValue object, dispatches to the compare method in TypeCheck
			public <Pa extends PatientObsDataSet.Parameter<?>> Result compare(Pa param){ 
												
				int tempScore = TypeCheck.typeMap.get(this.getThreshold().getClass()).compare(param, this);
				List<TriggerSet.Triggers[]> triggers = this.getComparator().trigger;
				Result result = new Result(tempScore, triggers);
								
				return result;
			}
			

			
			// Compare methods overloaded as part of double-dispatch implementation.
			// TypeCheck compare method dispatches back to one of the following compare methods, depending on the types of the threshold value and the parameter value
			public int compare(int param, int comparator){setCompare((double)param / (double)comparator); return getComparator().compare(this);}
			public int compare(double param, int comparator){setCompare(param / comparator); return getComparator().compare(this);}
			public int compare(int param, double comparator){setCompare(param / comparator); return getComparator().compare(this);}
			public int compare(double param, double comparator){setCompare(param / comparator); return getComparator().compare(this);}
			public int compare(String param, String comparator){setCompare(param == comparator ? 1 : -1); return getComparator().compare(this);}

			public int compare(){setCompare(0); return 0;}
			
			
			
		} 
	
	

	public static class TriggerSet extends ContainsObservationTypedObject{
		// TriggerSet - object contains three fields to represent the three triggers to action
		// TriggerSet is similar to Patient and ObsSet in that it contains Observation-Parameterised objects (in this case, triggers).
		//		TriggerSet also creates some global Triggers (i.e. not related to a parameter, but (in this case), the whole obsSet, 
		//		and therefore parametrised with the parent Observation, Observations.
		// However, TriggerSet also contains the Triggers Definitions -an emum containing all of the different possible trigger responses.
		
		// Constants 	// Holds each of the possible responses
		public enum Triggers{
			// The list below is in, and must be in, order of most-to-lease importance.
			// Triggers higher up on the list WILL override triggers lower down.
			MET (Escalation.getInstance()), 
			ESC (Escalation.getInstance()), 
			fifteenminOBS (ObsFrequency.getInstance()), 
			thirtyminOBS (ObsFrequency.getInstance()), 
			hourlyOBS (ObsFrequency.getInstance()), 
			twohourlyOBS (ObsFrequency.getInstance()),
			fourhourlyOBS (ObsFrequency.getInstance()), 
			TDSobs (ObsFrequency.getInstance());
			
			public TypeOfResponse typeOfResponse;
			
			Triggers(TypeOfResponse typeOfResponse){
				this.typeOfResponse = typeOfResponse;
				
			}
			
			interface TypeOfResponse{public static List<TypeOfResponse> listOfResponses = new ArrayList<>();}
			static class Escalation implements TypeOfResponse{private Escalation(){listOfResponses.add(this);}; private static final Escalation Escalation = new Escalation(); public static Escalation getInstance(){return Escalation;}}
			static class ObsFrequency implements TypeOfResponse{private ObsFrequency(){listOfResponses.add(this);}; private static final ObsFrequency obsFrequency = new ObsFrequency(); public static ObsFrequency getInstance(){return obsFrequency;}}
		
		}	
		
		
		
		
		// Class fields
		private static Map<String, Trigger<?>> tempParamList = new HashMap<>();
		
		// Instance fields
		private Map<String, Trigger<?>> triggerList;
		private Map<String, Trigger<?>> globaltriggersList = new HashMap<>();
		
		// ObsSet (rather than a specific observation) (global)Triggers
	//	public Trigger<Observations> singleObservationTrigger;
		public Trigger<Observations> escalationTrigger;
		public Trigger<Observations> metcallTrigger;

		
		// Exposed Methods
		@Override public void addToParamList(Observations observation) {tempParamList.put(observation.getName(), new Trigger<Observations>(observation));}
		@Override public Map<String, Trigger<?>> getParamList() {return triggerList;}
		@Override public Trigger<?> getParamList(String key) {return triggerList.get(key);}
	
		public Map<String, Trigger<?>> getGlobaltriggersList() {return globaltriggersList;}
		public void setGlobaltriggersList(Map<String, Trigger<?>> globaltriggersList) {this.globaltriggersList = globaltriggersList;}
		public void setGlobaltriggersList(Trigger<?> globalTrigger) {this.globaltriggersList.put(globalTrigger.getTriggerName(), globalTrigger);}
		
		
		// Constructor
		TriggerSet(){																		// TriggerSet constructor call the parent constructor, to initialise and store a set of Triggers, parameterised with the observations 
			super();																		//		constructed in the instantiation of the Chart.
			triggerList = new HashMap<>(tempParamList);
			
			// create "global" triggers
	//		singleObservationTrigger = new Trigger<>("singleObservationTrigger");
			escalationTrigger = new Trigger<>("EscalationTrigger");
			metcallTrigger = new Trigger<>("MetcallTrigger");
		}
		
		
		

		// Trigger class extends ObservationTyped in the normal way, to allow creation of Triggers parameterised with Observations.
		//	However, thanks to the overloaded constructors, the class can also be used to create triggers with a more generic type,
		//	which relate to triggers associated with a whole obsSet or chart, etc, rather than  a particular observation-
		//	parameterised object.
		class Trigger<Ob extends Observations> extends ObservationTyped<Ob>{
			
			// Overloaded Constructor to create an <Observation> parameterised Trigger
			Trigger(Observations parameter) {
				super(parameter);
				this.setTriggerName(parameter.getName() + "Trigger");
			}
			
			// Overloaded Constructor to create a global trigger - parameterised with the non-specific <Observations>
			Trigger(String triggerName) {
				super(new Observations());
				this.setTriggerName(triggerName);
				triggerList.put(triggerName, this);
				globaltriggersList.put(triggerName, this);
			}
			
						
			// Instance fields
			private int triggerThreshold;					// Triggers are created with a threshold,
			private Triggers[] triggerResponses;			// 		a Response to that trigger
			private String triggerName;						//		a name.
			
			
			// Exposed Methods
			public void setTrigger(int triggerThreshold, Triggers... triggerResponses){setTriggerThreshold(triggerThreshold); setTriggerResponses(triggerResponses);}
			private void setTriggerThreshold(int triggerThreshold){this.triggerThreshold = triggerThreshold;}
			private void setTriggerResponses(Triggers... triggerResponses){this.triggerResponses = triggerResponses;}
			
			public int getTriggerThreshold(){return triggerThreshold;}
			public Triggers[] getTriggerResponse(){return triggerResponses;}
			public void setTriggerName(String triggerName){this.triggerName = triggerName;}
			public String getTriggerName(){return triggerName;}
			
		}
		
		


	}
	
}
