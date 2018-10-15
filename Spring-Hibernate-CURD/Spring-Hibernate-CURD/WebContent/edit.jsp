<%
int p=Integer.parseInt(request.getParameter("pid"));
%>
<center>
	<form action="edit.form">
	<input type="hidden" name="pid" value="<%=p%>">
	<table border="1">
	<caption><b>Edit a Product</b></caption>
	<tr>
		<td>PID</td><td><input type=text value='<%=p%>' disabled="disabled"></td>
	</tr>
	<tr>
		<td>PNAME</td><td><input type=text name="pname" placeholder="enter product name"></td>
	</tr>
	<tr>
		<td>PRICE</td><td><input type=text name="price" placeholder="enter product name"></td>
	</tr>
	<tr>
		<td> </td><td><input type="submit" value="SUBMIT"></td>
	</tr>
	</table>
	</form>
	<br><hr>
Created By: MD SAIYED KIRMANI
</center>