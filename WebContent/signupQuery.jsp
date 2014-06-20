<%@page import="com.mysql.jdbc.ResultSet"%>
<%@page import="test.Server" %>

<%
	Server obj=new Server();

	String teacherID=new String(request.getParameter("teacherID"));
	String password=new String(request.getParameter("password"));
	String name=new String(request.getParameter("name"));
	
	
	if(obj.signupTeacher(teacherID,name,password)==1)
	{
%>

<script>
	var decision=confirm("Register for a class and subject");
	if(decision==true)
		{
</script>
			<meta http-equiv="refresh" content="0;classAndSubject.html">
<script>
		}
	else
		{
</script>
			<meta http-equiv="refresh" content="0;login.html">
<script>
		}

</script>
<%
	}
	else
	{
%>
<script>
	alert("Sorry!! The registration is unsuccessful. Please try again");
	
</script>
	<meta http-equiv="refresh" content="0;signup.html">
<%
	}

%>


