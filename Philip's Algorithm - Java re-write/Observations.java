// Define all possible Parameter types here.

public class Observations{
	
	public String getName(){return this.getClass().getName();}
}


	

// Set up various parameter classes



// Physiological
 class UrineOutput 	extends Observations{}
 class RespRate extends Observations{}
 class SpO2 extends Observations{}
 class InspiredO2 	extends Observations{}
 class Temp extends Observations{}
 class SistBP extends Observations{}
 class DiastBP extends Observations{}
 class HeartRate extends Observations{}
 class AVPU extends Observations{}


// Biochemical
 class Hb extends Observations{}
 class WCC extends Observations{}
 class PLTs extends Observations{}
 class CRP extends Observations{}

 class K extends Observations{}
 class Na extends Observations{}
 class Urea extends Observations{}
 class Creat extends Observations{}

 class Alb extends Observations{}
 class Bili extends Observations{}
 class ALT extends Observations{}
 class ALP extends Observations{}
 class PT extends Observations{}
 class APPT extends Observations{}

 class Trop extends Observations{}
 class Lactate extends Observations{}


// Clinical
 class Crepitations extends Observations{} 
 
