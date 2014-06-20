<%@page import="com.mysql.jdbc.ResultSet"%>
<%@ page import="test.Server" %>

<%
	Server obj=new Server();
	
	String id=new String(request.getParameter("teacherID"));
	String standard=new String(request.getParameter("standard"));
	String subject=new String(request.getParameter("subject"));
	
	if(obj.insertSubject(id,standard,subject)!=0)
	{
%>
<script>
	alert("You have successfully inserted the class and subject");
</script>
<%
	}
	else
	{
%>
<script>
	alert("Sorry, your insertion wasn't successful. Please try agin, if you want");
</script>
<%
		out.println("Unsuccessful! The teacher record is not present. Please register before choosing the subjects!");
	}

%>

<meta http-equiv="refresh" content="0;classAndSubject.html">