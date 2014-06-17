<%@page import="com.mysql.jdbc.ResultSet"%>
<%@ page import="test.Server" %>

<%
	Server obj=new Server();
	
	String id=new String(request.getParameter("teacherID"));
	String standard=new String(request.getParameter("standard"));
	String subject=new String(request.getParameter("subject"));
	
	if(obj.insertSubject(id,standard,subject)==1)
	{
		out.println("Successful!");
	}
	else
	{
		out.println("Unsuccessful!!");
	}

%>

<meta http-equiv="refresh" content="3;classAndSubject.html">