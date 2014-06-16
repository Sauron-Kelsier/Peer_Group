<%@page import="com.mysql.jdbc.ResultSet"%>
<%@page import="test.Server" %>


<%
	Server obj=new Server();
	
	String rollNumber=new String(request.getParameter("rollNumber"));
	String standard=new String(request.getParameter("standard"));
	String password=new String(request.getParameter("pass"));
	
	System.out.println(rollNumber+' '+standard+' '+password);
	
	obj.modifyStudentDetails(rollNumber,standard,password);
	/*{
		// Print that the update is successful and redirect to some page
		System.out.println("Update is successful!! Congratulations");
	}
	else
	{
		// Print that the update has been unsuccessful and redirect to the form page
		System.out.println("Update is unsuccessful!!");
	}
*/	
%>
	


	