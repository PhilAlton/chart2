import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;



// Exposed Methods.
// Class fields
// Instance fields
// Constructor
// Abstract methods

public class testMain {

	public static void main(String[] args) {
		
		
		// create New Chart
		Chart chart = new NEWSChart("test");   // patientID = "test"

		
		addThresholds(chart);
		debugScoreCalculation(chart);
		printCreatedChart(chart);
		
		
		
	}
	
	private static void addThresholds(Chart chart){
//		TESTcode to add new Thresholds - works
			ComparatorThan gT = GreaterThan.getInstance();
			chart.getPatient().getParamList("RespRate").setThresholds(21, gT, 2);
			
	}
		
		
			
			
	private static void printCreatedChart(Chart chart){	
		System.out.println(Chart.getInstance().getClass().getName() + "\n");
		// Print out thresholds (generated as default in Patient Class
		System.out.println();

		for (Patient.Threshold<?> parameter : chart.getPatient().getParamList().values()){
			System.out.println(parameter.getType().getName() + "Threshold");
			printThresholds(parameter);
			System.out.println();
		}
		
		
		// Print out typeMap
		System.out.println();
		printTypeMap(TypeCheck.typeMap);
		
		System.out.println();
		for (Patient.TriggerSet.Trigger<?> trigger : chart.getPatient().getTriggerArray().getParamList().values()){
			System.out.println((trigger.getTriggerName()));
		}
		
		System.out.println();
		for (int i = 0; i < chart.getPatient().getPatientObsSets().size(); i++){
			PatientObsDataSet obsSet = chart.getPatient().getPatientObsSets(i);
			
			System.out.println();
			System.out.println();
			System.out.println("ObsSet: " + i);
			

			System.out.println("------------");
			
			for (PatientObsDataSet.Parameter<?> param : obsSet.getParamList().values()){
				System.out.println( ""
									+ param.getClass().getSimpleName() + "\t" 
									+ param.getType().getClass().getName() + "    \t " 
									+ param.getValue() + "  \t " 
									+ param.getScore()
									);
			}
			

			System.out.print("score: " + obsSet.result.getScore() + "  - ");
			
			System.out.print("triggers: ");
			for (Patient.TriggerSet.Triggers triggers : obsSet.result.getTriggerResponses()){
				System.out.print(triggers+", ");
				
			}
			System.out.println();
			
		}

		
	}
	
	
	
	
	private static void debugScoreCalculation(Chart chart){
		
		// DEBUG_code for Score Calculation: print scores grouped by parameter, rather than obsSet
		
		System.out.println("----------------------------------------------------");
		System.out.println();
		System.out.println();
		System.out.println("Score Calculation -debugging");
		System.out.println("____________________________________________________");
		
		for (String observation : chart.getPatient().getPatientObsSets().get(0).getParamList().keySet()){
			if (observation == "InspiredO2"){																											// Use this line to debug one parameter only
				for (int i = 0; i < chart.getPatient().getPatientObsSets().size(); i++){
				PatientObsDataSet.Parameter<?> param = chart.getPatient().getPatientObsSets().get(i).getParamList(observation);
					System.out.println( ""
										+ param.getClass().getSimpleName() + " " 
										+ param.getType().getClass().getName() + "   \t " 
										+ param.getValue() + "  \t " 
										+ param.getScore()
										);
				}
				System.out.println();
			}
		}
		
		
		/*
		for (String observation : chart.getPatient().getPatientObsSets().get(0).getParamList().keySet()){
			for (int i = 0; i < chart.getPatient().getPatientObsSets().size(); i++){
			PatientObsDataSet.Parameter<?> param = chart.getPatient().getPatientObsSets().get(i).getParamList(observation);
				param.calcScore();
				System.out.println( ""
									+ param.getClass().getSimpleName() + " " 
									+ param.getType().getClass().getName() + "   \t " 
									+ param.getValue() + "  \t " 
									+ param.getScore()
									);
			}
			System.out.println();
		}
		*/

	}	
		
		
		
		
	
	
	
	
	
	//TESTcode Database
	static class TestDataBase{
		
		
		public static void testRetrieve_Thresholds(String patientID){
			if (patientID == "test"){
					
			}			
		}
		
		public static void testRetrieve_Triggers(String patientID){
			if (patientID == "test"){
				
			}		
		}
		
		public static List<Map<String, Object>> testRetrieve_ObsSets(String patientID){
			Map<String, Object> obsSet = new HashMap<>(); 
			List<Map<String, Object>> patientObsSets = new ArrayList<>();
			
			
			if (patientID == "test"){

				obsSet.put("RespRate",22);
				obsSet.put("SpO2",92);
				obsSet.put("InspiredO2","RA");
				obsSet.put("Temp",38.0);
				obsSet.put("SistBP",112);
				obsSet.put("HeartRate",71);
				obsSet.put("AVPU","V");
				patientObsSets.add(new HashMap<String, Object>(obsSet));
				obsSet.clear();
				
				
				
				obsSet.put("RespRate",22);
				obsSet.put("SpO2",96);
				obsSet.put("InspiredO2","fine");
				obsSet.put("Temp",36.0);
				obsSet.put("SistBP",108);
				obsSet.put("HeartRate",114);
				obsSet.put("AVPU","A");
				patientObsSets.add(new HashMap<String, Object>(obsSet));
				obsSet.clear();
				
				
				
				obsSet.put("RespRate",26);
				obsSet.put("SpO2",95);
				obsSet.put("InspiredO2",100);
				obsSet.put("Temp",35.0);
				obsSet.put("SistBP",220);
				obsSet.put("HeartRate",40);
				obsSet.put("AVPU","A");
				patientObsSets.add(new HashMap<String, Object>(obsSet));
				obsSet.clear();
					
				
				obsSet.put("RespRate",19);
				obsSet.put("SpO2",94);
				obsSet.put("InspiredO2",0);
				obsSet.put("Temp",37.3);
				obsSet.put("SistBP",98);
				obsSet.put("HeartRate",134);
				obsSet.put("AVPU","P");
				patientObsSets.add(new HashMap<String, Object>(obsSet));
				obsSet.clear();
				
				
				obsSet.put("RespRate",11);
				obsSet.put("SpO2",93);
				obsSet.put("InspiredO2","RA");
				obsSet.put("Temp",38.3);
				obsSet.put("SistBP",78);
				obsSet.put("HeartRate",124);
				obsSet.put("AVPU","V");
				patientObsSets.add(new HashMap<String, Object>(obsSet));
				obsSet.clear();
				
				
				obsSet.put("RespRate",31);
				obsSet.put("SpO2",92);
				obsSet.put("InspiredO2",0);
				obsSet.put("Temp",39.3);
				obsSet.put("SistBP",108);
				obsSet.put("HeartRate",104);
				obsSet.put("AVPU","U");
				patientObsSets.add(new HashMap<String, Object>(obsSet));
				obsSet.clear();
				
					
			}				
			

			return patientObsSets;
		}
		
		
	}
	
	
	// Method to iterate through threshold map and print values
	static <Th extends Patient.Threshold<?>> void printThresholds(Th threshold){
		Map<Integer, Patient.ThresholdValue<?>> thresholder = threshold.getThresholds();
		Iterator<Integer> iterator = thresholder.keySet().iterator();  
		while (iterator.hasNext()) {
		   Integer key = iterator.next();
		   Object thresholdValue =  thresholder.get(key).getThreshold();
		   ComparatorThan comparator =  thresholder.get(key).getComparator();
		   int weight = thresholder.get(key).getWeight();
		  
		   String value = thresholdValue.toString() + ", " + comparator.toString() + ", " + weight;
		   System.out.println(key + "- " + value);
		}	
	}
	
	
	// Method to iterate through typeMap and print out different types encountered
	static void printTypeMap(Map<Class<?>, TypeCheck.Type> typeMap){
		Iterator<Class<?>> iterator = typeMap.keySet().iterator();  
		while (iterator.hasNext()) {
			Class<?> key = iterator.next(); 		  
		  	TypeCheck.Type value = typeMap.get(key);
		  	System.out.println(key + "\t-  " + value.getClass().getName());
		}	
	}
	
	
	

}


