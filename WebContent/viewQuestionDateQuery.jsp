<%@page import="com.mysql.jdbc.ResultSet"%>
<%@ page import="test.Hello" %>

<%
// this method is not working

/* Pay attention. Seaching questions by date is not working.
The matter has to be looked into*/

	Hello obj=new Hello();
	String date=new String(request.getParameter("date"));
	System.out.println(date);
	
	ResultSet res=obj.viewQuestionDate(date);
// displaying the records linearly and not in a tabular form
	while(res.next())
	{
%>
		<b>Question: </b><%= res.getString("question") %><br>
		<b>Answer: </b><%= res.getString("answer") %><br>
		<b>Subject: </b><%=res.getString("subject") %><br><br>
		
<%
	}

%>
	
	<p id="bottom" align="right">
	<input type="button" value="Back" onclick="javascript:window.location='http://localhost:9000/viewQuestions.jsp'">		
	
