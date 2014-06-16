<%@page import="com.mysql.jdbc.ResultSet"%>
<%@page import="test.Server" %>



<%


// Building the query and finally sending it for execution and record retrieving
	Server obj=new Server();
	int flag=0;			// for knowing whether 1 WHERE clause has been sued in the query or not
	
	String subject=new String(request.getParameter("subject"));
	String standard=new String(request.getParameter("standard"));
	String level=new String(request.getParameter("level"));
	String keyword=new String(request.getParameter("keyword"));
	String fromDate=new String(request.getParameter("fromDate"));
	String toDate=new String(request.getParameter("toDate"));
	
	String query=new String("SELECT * FROM question_table WHERE");
	
	if(!subject.equals(""))
	{
		query=query.concat(" subject LIKE '"+subject+"'");
		flag=1;		// denoting that one WHERE has been used and AND has to be used in the coming conditions
	}
	
	
	// if standard field is given, then this block will be entered
	if(!standard.equals(""))
	{
		if(flag==1)		// checking if 1st conditional clause or not
		{
			query=query.concat(" AND");
		}
		query=query.concat(" std LIKE '"+standard+"'");
		flag=1;
	}
	
	
	// search on the basis of level of question assigned by the teacher during authentication
	if(!level.equals(""))
	{
		if(flag==1)		// checking if 1st conditional clause or not
		{
			query=query.concat(" AND");
		}
		query=query.concat(" level LIKE '"+level+"'");
		flag=1;
	}
	
	
	// adding the query for using regular expressions for searching questions via keyword
	if(!keyword.equals(""))
	{
		if(flag==1)		// checking if 1st conditional clause or not
		{
			query=query.concat(" AND");
		}
		query=query.concat(" question REGEXP '"+keyword+"'");
		flag=1;
	}

	
	// if both the dates are given then the questions within the range will come as the output
	if(!fromDate.equals("") && !toDate.equals(""))
	{
		if(flag==1)
		{
			query=query.concat(" AND");
		}
		query=query.concat(" date between '"+fromDate+"' AND '"+toDate+"'");
	}
	
	// if From Date is given then the parameter is the lower value 
	else if(!fromDate.equals(""))
	{
		if(flag==1)
		{
			query=query.concat(" AND");
		}
		query=query.concat(" date > '"+fromDate+"'");
	}
	
	// if To Date is given then the parameter is the higher value
	else if(!toDate.equals(""))
	{
		if(flag==1)
		{
			query=query.concat(" AND");
		}
		query=query.concat(" date < '"+toDate+"'");
	}
	
	ResultSet res=obj.questionQuery(query);
	out.print("<table border='5' cellspacing=5 cellpadding=2>");
	out.print("<tr><th><B>Question</B></a></th><th><B>Answer</B></th><th><B>Date</B></th><th><B>Subject</B></th><th><B>Level</B></th><th><B>Standard</B></th></tr>");	
		
		while(res.next())
		{
			out.println("<tr><td align='center'>"+res.getString("question")+"</td>");
			out.println("<td align='center'>"+res.getString("answer")+"</td>");
			out.println("<td align='center'>"+res.getString("date")+"</td>");
			out.println("<td align='center'>"+res.getString("subject")+"</td>");
			out.println("<td align='center'>"+res.getString("level")+"</td>");
			out.println("<td align='center'>"+res.getString("std")+"</td></tr>");
		}
		
		out.print("</table>");		
	%>


