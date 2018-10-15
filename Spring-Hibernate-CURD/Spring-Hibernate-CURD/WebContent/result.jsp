<%@ page import="java.util.*,com.sathya.hibernate.model.*"		%>
<%
List list=(List)request.getAttribute("products");
Iterator it=list.iterator();
out.println("<center><table border='2'>");
out.println("<tr bgcolor='yellow'> <td>PID</td> <td>PNAME</td> <td>PRICE</td> <td>MORE OPERATION</td> </tr>");
while(it.hasNext())
{
	Product p=(Product)it.next();
out.println("<tr>");
out.println("<td>"+p.getPid()+"</td>");
out.println("<td>"+p.getPname()+"</td>");
out.println("<td>"+p.getPrice()+"</td>");
out.println("<td><a href=edit.jsp?pid="+p.getPid()+">Edit</a>");
out.println("&nbsp; &nbsp; &nbsp;");
out.println("<a href=delete.form?pid="+p.getPid()+">Delete</a></td>");
out.println("</tr>");
}
out.println("</table></center>");
%>
<center>
<br><hr>
Created By: MD SAIYED KIRMANI
</center>