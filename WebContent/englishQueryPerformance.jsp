<%@page import="com.mysql.jdbc.ResultSet"%>
<%@page import="test.Server" %>





<%
	Server obj=new Server();
	int flag=0;		// to understand when to use AND in the query

	String rollNumber=new String(request.getParameter("rollNumber"));		// getting the roll number from the front end
	String name=new String(request.getParameter("name"));				// getting the name
	String subject=new String(request.getParameter("subject"));	// getting the subject
	String standard=new String(request.getParameter("standard"));		// getting the class of the student
	String fromDate=new String(request.getParameter("fromDate"));	// getting the 'from date' from the front end
	String toDate=new String(request.getParameter("toDate"));	
	
	//System.out.println(rollNumber+' '+name+' '+subject+' '+standard);
	
	String query=new String("SELECT * FROM student_performance WHERE");
		
	if(!rollNumber.equals(""))
	{
		query=query.concat(" roll_number LIKE '"+rollNumber+"'");
		flag=1;			// Denoting that 1 conditional clause has been used and for further conditions AND has to be used
	}
	
	if(!name.equals(""))
	{
		String roll=new String(obj.getRollQuery(name));	// extracting the roll number from the name
		//System.out.println(roll);
		if(flag==1)		// checking if 1st conditional clause or not
		{
			query=query.concat(" AND");
		}
		
		query=query.concat(" roll_number LIKE '"+roll+"'");
		flag=1;
	}
	
	if(!subject.equals(""))
	{
		if(flag==1)
		{
			query=query.concat(" AND");
		}
		query=query.concat(" subject LIKE '"+subject+"'");
		flag=1;
	}
	
	if(!standard.equals(""))
	{
		if(flag==1)
		{
			query=query.concat(" AND");
		}
		query=query.concat(" standard LIKE '"+standard+"'");
		flag=1;
	}
	
	// if both dates are given then the query has to be done for a range
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
	
	System.out.println(query);
	ResultSet res=obj.donQuery(query);		// call to the method for getting the result
	
	
 out.print("<table border='5' cellspacing=5 cellpadding=2>");
out.print("<tr><th><B>Roll No</B></a></th><th><B>Name</B></th><th><B>Subject</B></th><th><B>Standard</B></th><th><B>Date</B></th><th><B>Questions Attempted</B></th><th><B>Correct Answers</B></th></tr>");	
	
	
	while(res.next())
	{
		out.println("<tr><td align='center'>"+res.getString("roll_number")+"</td>");
		out.println("<td align='center'>"+res.getString("name")+"</td>");
		out.println("<td align='center'>"+res.getString("subject")+"</td>");
		out.println("<td align='center'>"+res.getString("standard")+"</td>");
		out.println("<td align='center'>"+res.getString("date")+"</td>");
		out.println("<td align='center'>"+res.getString("questions_attempted")+"</td>");
		out.println("<td align='center'>"+res.getString("correct_answers")+"</td></tr>");
	}
out.print("</table>");
%>


  

