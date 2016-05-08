import java.util.ArrayList;
import java.util.List;

// ComparatorThan classes hold some of the compare logic to compare parameters against thresholds.

abstract class ComparatorThan {													// Abstract ComparatorThan class ensure that ComparatorThan concrete classes are constructed with:
	int compareResult;															//		An int holding the compare result
	List<Patient.TriggerSet.Triggers[]> trigger;								//		An Array holding the trigger results
	public abstract String toString();							
	
	ComparatorThan(){}	
	
	public abstract int compare(Patient.ThresholdValue<?> threshold);			//		The key "compare" method which takes in a threshold and executes comparison logic
	
}




class GreaterThan extends ComparatorThan {										// GreaterThan concrete class
																				
	private static final String name = "GreaterThan";
	public String toString() {return name;}
	private static GreaterThan instance = new GreaterThan();
	public static GreaterThan getInstance(){return instance;}
	private GreaterThan(){}

	
	public int compare(Patient.ThresholdValue<?> threshold){					// Compare method
		compareResult = 0;
		trigger = new ArrayList<>();											
		if (threshold.getCompare() >= 1){										// Checks if the result of previous compare logic indicates the initiator (of the compare stream) is greater than the comparator which the compare stream was passed.
			threshold.compare(); compareResult = threshold.getWeight();			// 		If passes; then reset the compare stream, and return the threshold.weight as the result.
			trigger.add(threshold.getTriggers());								//		Also add any triggers attached to the threshold to the trigger list.
		}
		return compareResult;													
	}
	
}
	

// As for the above, except these check whether the compare-stream initiator is less-than, equal-to or not-equal to the comparator (in turn).

class LessThan extends ComparatorThan {

	private static final String name = "LessThan";
	public String toString() {return name;}
	private static LessThan instance = new LessThan();
	public static LessThan getInstance(){return instance;}
	private LessThan(){}
	
	
	
	public int compare(Patient.ThresholdValue<?> threshold){
		compareResult = 0;
		trigger = new ArrayList<>();
		if (threshold.getCompare() <= 1){
			threshold.compare(); compareResult = threshold.getWeight();
			trigger.add(threshold.getTriggers());
		}
		return compareResult;
	}
	
	
	

	
}


class EqualThan extends ComparatorThan{

	private static final String name = "EqualThan";
	public String toString() {return name;}
	private static EqualThan instance = new EqualThan();
	public static EqualThan getInstance(){return instance;}
	private EqualThan(){}
	
	
	public int compare(Patient.ThresholdValue<?> threshold){
		compareResult = 0;
		trigger = new ArrayList<>();
		if (threshold.getCompare() == 1){
			threshold.compare(); compareResult = threshold.getWeight();
			trigger.add(threshold.getTriggers());
		}
		return compareResult;
	}
	
	
}



class NotEqualThan extends ComparatorThan{

	private static final String name = "NotEqualThan";
	public String toString() {return name;}
	private static NotEqualThan instance = new NotEqualThan();
	public static NotEqualThan getInstance(){return instance;}
	private NotEqualThan(){}
	
	  
	public int compare(Patient.ThresholdValue<?> threshold){

		compareResult = 0;
		trigger = new ArrayList<>();
		if (threshold.getCompare() != 1){
			threshold.compare(); compareResult = threshold.getWeight();
			trigger.add(threshold.getTriggers());
		}
		return compareResult;
	}
	
	
}



