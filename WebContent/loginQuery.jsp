

<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page 
    import="java.sql.DriverManager"
    import="java.sql.*"
    
%>






   
<%
	Connection con=null;
	try 
	{
		Class.forName("com.mysql.jdbc.Driver");
		con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","database");
		out.println("Hahaha!! :-D");
		Statement start=(Statement)con.createStatement();
        String query=new String("SELECT * FROM teacher");

        ResultSet res=start.executeQuery(query);
        if(res.next())
        {
        	out.println("Hahah!!");
        	
        }
        else
        {
        	out.println("Utter failure!!");
        }
		//out.println("Done");			
	}
	catch (SQLException e) 
	{
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	catch (ClassNotFoundException e) 
	{
		// TODO Auto-generated catch block
		out.println("Sorry. Class not found!!");
	}
	finally
	{
		out.println("Champa");
	}

%>