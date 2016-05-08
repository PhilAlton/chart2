//Type Check classes contains a constructor which checks the run-time type of an object, and attaches to that object a "type" which can then be retrieved through querying the typeMap

import java.util.HashMap;
import java.util.Map;

public class TypeCheck {
	
	public static Type type;
	
	// Establish run-time type and return a "Type" object to be attached to the invoking object.
	TypeCheck(Class<?> returnType){
		if (returnType.getName() == "java.lang.Integer"){type = I.getInstance();}
		else if (returnType.getName() == "java.lang.String"){type = S.getInstance();}
		else if (returnType.getName() == "java.lang.Double"){type = D.getInstance();}
		else {type = T.getInstance();}
		
	}
	

	public static Map<Class<?>, Type> typeMap = new HashMap<>();
	
	public static void typeCheck(Class<?> returnType){
		if (TypeCheck.typeMap.get(returnType) == null){
			new TypeCheck(returnType);
			TypeCheck.typeMap.put(returnType, type);}
					
	}
	
	
	
	// Type Classes: Singleton classes representing different (primitive) types
	// S for String objects, I for Integer objects, D for double objects, T for other types
	// Continuing double dispatch logic in order to accept an object of one type and compare against another type
	
	
	interface Type {
		public <Pa extends PatientObsDataSet.Parameter<?>> int compare(Pa param, Patient.ThresholdValue<?> threshold);
		public <Pa extends PatientObsDataSet.Parameter<?>> int dispatch(T type, Pa param, Patient.ThresholdValue<?> threshold);
		public <Pa extends PatientObsDataSet.Parameter<?>> int dispatch(I type, Pa param, Patient.ThresholdValue<?> threshold);
		public <Pa extends PatientObsDataSet.Parameter<?>> int dispatch(S type, Pa param, Patient.ThresholdValue<?> threshold);
		public <Pa extends PatientObsDataSet.Parameter<?>> int dispatch(D type, Pa param, Patient.ThresholdValue<?> threshold);
		
	}
	
	
	
	public static class T implements Type{		
		
		private T(){}
		private static Type instance = new T();
		public static Type getInstance() {return instance;}
		
		
		public <Pa extends PatientObsDataSet.Parameter<?>> int compare(Pa param, Patient.ThresholdValue<?> threshold) 
			{return typeMap.get(param.getValue().getClass()).dispatch(this, param, threshold);}

		public <Pa extends PatientObsDataSet.Parameter<?>> int dispatch(
			T type, Pa param, Patient.ThresholdValue<?> threshold)
			{return threshold.compare();}
		
		public <Pa extends PatientObsDataSet.Parameter<?>> int dispatch(
			I type, Pa param, Patient.ThresholdValue<?> threshold) 
			{return threshold.compare();}
		
		public <Pa extends PatientObsDataSet.Parameter<?>> int dispatch(
			S type, Pa param, Patient.ThresholdValue<?> threshold)
			{return threshold.compare();}
		
		public <Pa extends PatientObsDataSet.Parameter<?>> int dispatch(
			D type, Pa param, Patient.ThresholdValue<?> threshold)
			{return threshold.compare();}
		
	}
	
	
	
	public static class I implements Type{		
		
		private I(){}
		private static Type instance = new I();
		public static Type getInstance() {return instance;}
		
		public <Pa extends PatientObsDataSet.Parameter<?>> int compare(Pa param, Patient.ThresholdValue<?> threshold) 
			{return typeMap.get(param.getValue().getClass()).dispatch(this, param, threshold);}
		
		public <Pa extends PatientObsDataSet.Parameter<?>> int dispatch(
			T type, Pa param, Patient.ThresholdValue<?> threshold)
			{return threshold.compare();}
		
		public <Pa extends PatientObsDataSet.Parameter<?>> int dispatch(
			I type, Pa param, Patient.ThresholdValue<?> threshold) 
			{return threshold.compare((int) param.getValue(), (int) threshold.getThreshold());}
		
		public <Pa extends PatientObsDataSet.Parameter<?>> int dispatch(
			S type, Pa param, Patient.ThresholdValue<?> threshold)
			{return threshold.compare();}
		
		public <Pa extends PatientObsDataSet.Parameter<?>> int dispatch(
			D type, Pa param, Patient.ThresholdValue<?> threshold)
			{return threshold.compare((int) param.getValue(), (double) threshold.getThreshold());}
	}
	
	
	
	public static class S implements Type{		
		
		private S(){}
		private static Type instance = new S();
		public static Type getInstance() {return instance;}
		
		
		public <Pa extends PatientObsDataSet.Parameter<?>> int compare(Pa param, Patient.ThresholdValue<?> threshold) 
			{return typeMap.get(param.getValue().getClass()).dispatch(this, param, threshold);}
		
		public <Pa extends PatientObsDataSet.Parameter<?>> int dispatch(
			T type, Pa param, Patient.ThresholdValue<?> threshold)
			{return threshold.compare();}
		
		public <Pa extends PatientObsDataSet.Parameter<?>> int dispatch(
			I type, Pa param, Patient.ThresholdValue<?> threshold) 
			{return threshold.compare();}
		
		public <Pa extends PatientObsDataSet.Parameter<?>> int dispatch(
			S type, Pa param, Patient.ThresholdValue<?> threshold)
			{return threshold.compare((String) param.getValue(), (String) threshold.getThreshold());}
		
		public <Pa extends PatientObsDataSet.Parameter<?>> int dispatch(
			D type, Pa param, Patient.ThresholdValue<?> threshold)
			{return threshold.compare();}
	}
	
	
	
	public static class D implements Type{	
		
		private D(){}
		private static Type instance = new D();
		public static Type getInstance() {return instance;}
		
		public <Pa extends PatientObsDataSet.Parameter<?>> int compare(Pa param, Patient.ThresholdValue<?> threshold) 
			{return typeMap.get(param.getValue().getClass()).dispatch(this, param, threshold);}
		
		public <Pa extends PatientObsDataSet.Parameter<?>> int dispatch(
			T type, Pa param, Patient.ThresholdValue<?> threshold)
			{return threshold.compare();}
		
		public <Pa extends PatientObsDataSet.Parameter<?>> int dispatch(
			I type, Pa param, Patient.ThresholdValue<?> threshold) 
			{return threshold.compare((double) param.getValue(), (int) threshold.getThreshold());}
		
		public <Pa extends PatientObsDataSet.Parameter<?>> int dispatch(
			S type, Pa param, Patient.ThresholdValue<?> threshold)
			{return threshold.compare();}
		
		public <Pa extends PatientObsDataSet.Parameter<?>> int dispatch(
			D type, Pa param, Patient.ThresholdValue<?> threshold)
			{return threshold.compare((double) param.getValue(), (double) threshold.getThreshold());}
	}
}
