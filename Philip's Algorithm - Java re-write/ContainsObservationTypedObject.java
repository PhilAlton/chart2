// Super class to instantiate classes containing classes with generic type extending parameters
// EG. Patient Class, TriggerArray Class, PatientObsDataSet class

import java.util.Map;


public abstract class ContainsObservationTypedObject{


	public Patient getPatient(){return Chart.getInstance().getPatient();}							// Link back to invoking patient class
	public static ContainsObservationTypedObject instance; 											// Link to current instance
	
	public abstract void addToParamList(Observations observation);									// Abstract method to enable all concrete instances of ObservationTyped objects linked to this ContainsObservationTypedObject Instance
																									//		and stored, with each similar concrete instance, in a list (paramList).
	public abstract Map<?, ?> getParamList();														// Abstract method to retrieve the paramList in its entirety.
	public abstract ObservationTyped<?> getParamList(String key);										// Abstract method to retrieve one of the stored concrete instances of a ObservationTyped Object linked to this ContainsObservationTypedObject instance.
	
	
	ContainsObservationTypedObject(){																// Constructor, stores the instance, and then loops through all of the observations in the Chart
		instance = this;																			//		and creates ObservationTyped object instances initiated with each of the observations created in the Chart.
		for (Observations observation : Chart.getChartMakeUp().toArray(new Observations[0])){
			addToParamList(observation);															// The concrete addToParamList methods deals with creating the concrete, initialised ObservationTyped instances
		}
		
	}
	
	
	
	 abstract class Observation <Ob extends Observations> extends ObservationTyped<Ob>{				// SubClasses of ObservationTyped Objects overwritten in each concrete ContainsObservationTypedObject Class to create their own concrete subclasses
		 Observation(Observations observation){														//	of ObservationTyped Objects.
		    	super(observation);
		     }
	 }
	
	
}


