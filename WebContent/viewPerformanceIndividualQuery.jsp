<%@page import="com.mysql.jdbc.ResultSet"%>
<%@ page import="test.Hello" %>

<%

	Hello obj=new Hello();
	String roll=new String(request.getParameter("rollNumber"));
	System.out.println(roll);
	Integer r=Integer.parseInt(roll);
	
	ResultSet res=obj.viewPerformanceRoll(r);
%>
	<table>
		<tr>
			<th> Roll Number</th>
			<th> Subject</th>
			<th> Date</th>
			<th> Questions Attempted </th>
			<th> Correct Answers </th>
		</tr>
<%
	while(res.next())
	{
%>
		<tr>
		   	<td align="center"><%=res.getInt("roll_number")%></td>
		   	<td align="center"><%=res.getString("subject")%></td>
		   	<td align="center"><%=res.getString("date") %></td>
		   	<td align="center"><%=res.getInt("questions_attempted") %></td>
		   	<td align="center"><%=res.getInt("correct_answers") %><br></td>
		</tr>
<%
	}

%>
	
	</table>
	<p id="bottom" align="right">
	<input type="button" value="Back" onclick="javascript:window.location='http://localhost:9000/viewPerformanceIndividual.jsp'">		
	
