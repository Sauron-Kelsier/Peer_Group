<%@page import="com.mysql.jdbc.ResultSet"%>
<%@ page import="test.Hello" %>

<%
	Hello obj=new Hello();
	String subject=new String(request.getParameter("subject"));
	System.out.println(subject);
	
	ResultSet res=obj.viewQuestionSubject(subject);

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
	
