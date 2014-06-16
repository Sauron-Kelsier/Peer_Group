<%@page import="com.mysql.jdbc.ResultSet"%>
<%@ page import="test.Server" %>

<%
	Server obj=new Server();
	
	String rollNumber=new String(request.getParameter("rollNumber"));
	String name=new String(request.getParameter("name"));
	String standard=new String(request.getParameter("standard"));
	
	
	
	
%>