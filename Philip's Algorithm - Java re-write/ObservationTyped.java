// Super Class to instantiate classes with generic type extending observations

@SuppressWarnings("unused")
public class ObservationTyped<Ob extends Observations>{															// ObservationTyped class allow the creation of Objects parameterised with Observations.
																												//		This allows various concrete classes to be created parameterised with different Observations, and therefore linkable. 	
																												//		In other words, for example, a Threshold<RespRate> can be securely compared to a Parameter<RespRate>, by referencing  
																												// 		the parameter Map of the parent class of the other, and passing it's own .Type (referring the the field below) into
																												//		the Map, thus returning the associated OBservationTyped Object.
	
	private Observations type;																					// Type, stores the Observation with which the ObservatinTyped instance is parameterised.
		public Observations getType() {return type;}															//		Type Getter
		public void setType(Observations type) {this.type = type;}    											//		Type Setter
		
		ObservationTyped(Observations parameter){																// Constructor for ObservationTyped objects takes in the observation with which the object is parameterised, and stores this in
	    	setType(parameter);																					//		the Type field.
	     }
	
		
		static ObservationTyped<Observations> generateParameter(Observations observation){						// Static method used to create the particular concreate instances 
			return new ObservationTyped<Observations> (observation);
			
		}
		
		
		
}

