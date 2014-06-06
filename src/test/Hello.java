package test;

import java.sql.*;
import com.mysql.jdbc.*;
import com.mysql.jdbc.Connection;

public class Hello 
{	
	Connection databaseConnection;
	
	public Hello()
	{
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			databaseConnection = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","database");
			System.out.println("Connection established! Congratulations!");
						
		}
		catch (SQLException e) 
		{
			System.out.println("SQL Exception");
		}
		catch (ClassNotFoundException e) 
		{
			System.out.println("Class not found Exception");
		}
	}
	
}
