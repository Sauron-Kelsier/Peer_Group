<%@page import="com.mysql.jdbc.ResultSet"%>
<%@page import="test.Server" %>

<%
	Server obj=new Server();

	String teacherID=new String(request.getParameter("teacherID"));
	String password=new String(request.getParameter("password"));
	String name=new String(request.getParameter("name"));
	
	if(obj.signupTeacher(teacherID,name,password)==1)
	{
		out.println("Congrats!! Registered");
	}
	else
	{
		out.println("Sorry... Not registered!");
	}

%>

<meta http-equiv="refresh" content="3;classAndSubject.html">
