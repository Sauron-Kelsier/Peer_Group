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
	
%>
	