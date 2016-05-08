import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;


public abstract class Chart {
	
	

	// Exposed Methods
	public static 	Chart 				getInstance()		{return instance;	}		// returns the instance of the chart created
	public static 	List<Observations> 	getChartMakeUp()	{return chartMakeUp;}		// returns the chartMakeUp (i.e. List of all observations in the chart)
	public 			Patient 			getPatient()		{return patient;	}		// returns the patient that the chart is displaying
	
	
	// Class fields
	private static Chart instance;
	private static List<Observations> chartMakeUp = new ArrayList<>();
	
	// Instance fields
	private Patient patient;
	
	
	//Chart Constructor
	Chart(String patientID){
		instance = this;
		populateChart();
		patient = new Patient(patientID);
		setThresholds();
		setTriggers();
		for (int i = 0; i < this.getPatient().getPatientObsSets().size(); i++){
			patient.getPatientObsSets(i).ACEWScore();
		}
	}
	
	// Chart abstract methods
	public abstract void populateChart();		// override with chart specific observations
	public abstract void setThresholds();		// override with chart specific thresholds
	public abstract void setTriggers();			// override with chart specific triggers
	
	// Comparator Objects for use with defining thresholds
	protected ComparatorThan gT = GreaterThan.getInstance();
	protected ComparatorThan lT = LessThan.getInstance();
	protected ComparatorThan eT = EqualThan.getInstance();
	protected ComparatorThan nT = NotEqualThan.getInstance();
	
	// Enum Triggers - refreshed here for (easier) use within the Chart Classes.
	protected Patient.TriggerSet.Triggers ESC = Patient.TriggerSet.Triggers.ESC;
	protected Patient.TriggerSet.Triggers MET = Patient.TriggerSet.Triggers.MET;
	protected Patient.TriggerSet.Triggers fifteenminOBS = Patient.TriggerSet.Triggers.fifteenminOBS;
	protected Patient.TriggerSet.Triggers thirtyminOBS = Patient.TriggerSet.Triggers.thirtyminOBS;
	protected Patient.TriggerSet.Triggers hourlyOBS = Patient.TriggerSet.Triggers.hourlyOBS;
	protected Patient.TriggerSet.Triggers twohourlyOBS = Patient.TriggerSet.Triggers.twohourlyOBS; 
	protected Patient.TriggerSet.Triggers fourhourlyOBS = Patient.TriggerSet.Triggers.fourhourlyOBS;
	protected Patient.TriggerSet.Triggers TDSobs = Patient.TriggerSet.Triggers.TDSobs;
	
}



class NEWSChart extends Chart{
	

	
	NEWSChart(String patientID) {super(patientID);}

	
	@Override public void populateChart(){
		getChartMakeUp().addAll(Arrays.asList(	new RespRate(), 
												new SpO2(), 
												new InspiredO2(), 
												new Temp(),	
												new SistBP(), 
												new DiastBP(), 
												new HeartRate(), 
												new AVPU()		
		));
	}
	
	@Override public void setThresholds(){
	
		
		getPatient().getParamList("RespRate").setThresholds(21, gT, 2);
		getPatient().getParamList("RespRate").setThresholds(25, gT, 1, ESC);
		getPatient().getParamList("RespRate").setThresholds(11, lT, 1);
		getPatient().getParamList("RespRate").setThresholds(8, lT, 2, ESC);
		
		getPatient().getParamList("SpO2").setThresholds(95, lT, 1);
		getPatient().getParamList("SpO2").setThresholds(93, lT, 1);
		getPatient().getParamList("SpO2").setThresholds(91, lT, 1, ESC);
		
		getPatient().getParamList("InspiredO2").setThresholds("RA", eT, 0);	
		getPatient().getParamList("InspiredO2").setThresholds("RA", nT, 2);	
		getPatient().getParamList("InspiredO2").setThresholds(1, gT, 2);
		
		getPatient().getParamList("Temp").setThresholds(38.1, gT, 1);
		getPatient().getParamList("Temp").setThresholds(39.1, gT, 1);
		getPatient().getParamList("Temp").setThresholds(36.0, lT, 1);
		getPatient().getParamList("Temp").setThresholds(35.0, lT, 2, ESC);
		
		getPatient().getParamList("SistBP").setThresholds(220, gT, 3, ESC);
		getPatient().getParamList("SistBP").setThresholds(110, lT, 1);
		getPatient().getParamList("SistBP").setThresholds(100, lT, 1);
		getPatient().getParamList("SistBP").setThresholds(90, lT, 1, ESC);
		
		getPatient().getParamList("HeartRate").setThresholds(91, gT, 1);
		getPatient().getParamList("HeartRate").setThresholds(111, gT, 1);
		getPatient().getParamList("HeartRate").setThresholds(131, gT, 1, ESC);
		getPatient().getParamList("HeartRate").setThresholds(50, lT, 1);
		getPatient().getParamList("HeartRate").setThresholds(40, lT, 2, ESC);
		
		getPatient().getParamList("AVPU").setThresholds("A", eT, 0);
		getPatient().getParamList("AVPU").setThresholds("V", eT, 3, ESC);
		getPatient().getParamList("AVPU").setThresholds("P", eT, 3, ESC);
		getPatient().getParamList("AVPU").setThresholds("U", eT, 3, ESC);
		
		
	}
	
	
	@Override public void setTriggers(){

	//	getPatient().getParamList("RespRate").setThresholds(30, gT, ESC);
	//	getPatient().getParamList("RespRate").setThresholds(9, lT, ESC);
				
		
	//	getPatient().getTriggerArray().singleObservationTrigger.setTrigger(3, ESC, hourlyOBS);
		getPatient().getTriggerArray().escalationTrigger.setTrigger(5, ESC, hourlyOBS);
		getPatient().getTriggerArray().metcallTrigger.setTrigger(7, MET, fifteenminOBS);
		
	}
	
	
}
class MEWSChart extends Chart{

	MEWSChart(String patientID) {super(patientID);}
	@Override public void populateChart(){} // set chart parameters for MEWS chart
	@Override public void setThresholds(){} // set chart thresholds for MEWS chart
	@Override public void setTriggers(){} // set chart triggers for MEWS chart
}

class ACEWSChart extends Chart{

	ACEWSChart(String patientID) {super(patientID);} 
	@Override public void populateChart(){} // set chart parameters for ACEWS chart
	@Override public void setThresholds(){} // set chart thresholds for ACEWS chart
	@Override public void setTriggers(){} // set chart triggers for ACEWS chart
}








