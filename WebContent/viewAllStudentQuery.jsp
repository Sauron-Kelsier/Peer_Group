<%@page import="com.mysql.jdbc.ResultSet"%>
<%@ page import="test.Hello" %>

<%
	Hello obj=new Hello();
	
	ResultSet res=obj.viewAllStudentDetails();
%>
	<table>
		<tr>
			<th>Roll Number</th>
			<th>Name</th>
			<th>Marks</th>
		</tr>
<%
	while(res.next())
	{
%>
		<tr>
		   	<td align="center"><%=res.getInt("roll_number")%></td>
		   	<td align="center"><%=res.getString("name")%></td>
		   	<td align="center"><%=res.getInt("overall_marks") %><br>
		</tr>
<%
	}

%>
	
	</table>
	<p id="bottom" align="right">
	<input type="button" value="Back" onclick="javascript:window.location='http://localhost:9000/viewOneStudent.jsp'">		
	
