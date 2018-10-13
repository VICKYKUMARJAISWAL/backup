import javax.xml.bind.*;
import com.sathya.jaxb.*;

public class Marshal
{
	public static void main(String [] args)throws Exception{
		JAXBContext context=JAXBContext.newInstance("com.sathya.jaxb");
         Marshaller m = context.createMarshaller();
		 Address a = new Address();
		 a.setStreet("Ameerpet");
		 a.setCity("Hyd");
		 a.setState("A.P");
		 Employee e = new Employee();
		 e.setId(101);
		 e.setName("ABC");
		 e.setDesignation("Manager");
		 e.setAddress(a);
		 Employees ee = new Employees();
		 ee.getEmployees().add(e);
		 m.marshal(ee,new java.io.File("emp.xml"));
	}

}