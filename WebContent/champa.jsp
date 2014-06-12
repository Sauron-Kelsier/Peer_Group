<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="test.HindiHello" %>
<%@page import="com.mysql.jdbc.ResultSet" %>

<% 

	HindiHello obj=new HindiHello();
	
	ResultSet res;
	res=obj.test();
	res.next();
	out.println(res.getString("data"));
	res.next();
	out.println(res.getString("data"));
	res.next();
	out.println(res.getString("data"));
	res.next();
	out.println(res.getString("data"));
	
%>
	