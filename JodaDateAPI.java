import java.text.SimpleDateFormat;
import java.util.Date;
 
import org.joda.time.DateTime;
import org.joda.time.Days;
import org.joda.time.Hours;
import org.joda.time.Minutes;
import org.joda.time.Seconds;
 
public class JodaDateAPI {
 
  public static void main(String[] h) {
 
	String dateStart = "01/1/2012 09:29:50";
	String dateStop = "01/1/2013 10:31:28";
 
	SimpleDateFormat format = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");
 
	Date d1 = null;
	Date d2 = null;
 
	try {
		d1 = format.parse(dateStart);
		d2 = format.parse(dateStop);
 
		DateTime dt1 = new DateTime(d1);
		DateTime dt2 = new DateTime(d2);
 
		System.out.print(Days.daysBetween(dt1, dt2).getDays() + " days, ");
		System.out.print(Hours.hoursBetween(dt1, dt2).getHours() % 24 + " hours, ");
		System.out.print(Minutes.minutesBetween(dt1, dt2).getMinutes() % 60 + " minutes, ");
		System.out.print(Seconds.secondsBetween(dt1, dt2).getSeconds() % 60 + " seconds.");
 
	 } catch (Exception e) {
		e.printStackTrace();
	 }
 
  }
 
}