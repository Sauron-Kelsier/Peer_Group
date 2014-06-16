<%@page import="com.mysql.jdbc.ResultSet"%>
<%@page import="test.Server" %>

<%
	Server obj=new Server();
	int flag=0;

	String rollNumber=new String(request.getParameter("rollNumber"));
	String standard=new String(request.getParameter("standard"));
	
	String query=new String("SELECT * FROM student_info WHERE ");
	
	if(!standard.equals(""))
	{
		query=query.concat(" std LIKE '"+standard+"'");
		flag=1;
	}
	
	if(!rollNumber.equals(""))
	{
		if(flag==1)
		{
			query=query.concat("AND ");
		}
		query=query.concat("roll_number LIKE '"+rollNumber+"'");
		flag=1;
	}
	
	ResultSet res=obj.viewStudent(query);
	
	out.print("<table border='5' cellspacing=5 cellpadding=2>");
	out.print("<tr><th><B>Roll No</B></a></th><th><B>Name</B></th><th><B>Standard</B></th><th><B>Questions Attempted</B></th><th><B>Correct Answers</B></th></tr>");	
		
		
		while(res.next())
		{
			out.println("<tr><td align='center'>"+res.getString("roll_number")+"</td>");
			out.println("<td align='center'>"+res.getString("name")+"</td>");
			out.println("<td align='center'>"+res.getString("std")+"</td>");
			out.println("<td align='center'>"+res.getString("questions_attempted")+"</td>");
			out.println("<td align='center'>"+res.getString("correct_answers")+"</td></tr>");
		}
	out.print("</table>");
%>
