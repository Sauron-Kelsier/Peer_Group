package test;

import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.Statement;

public class Server 
{	
	Connection databaseConnection;
	
	// constructor that establishes a connection with the database
	// the database contains all the required tables
	public Server()
	{
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			databaseConnection = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","database");
			System.out.println("Connection established! Congratulations!");
			
			Statement start=(Statement)databaseConnection.createStatement();
            String query=new String("SELECT * FROM teacher");

            ResultSet res=(ResultSet) start.executeQuery(query);
            if(res.next())
            {
            	System.out.println("Hahahaha!!!");
            }
						
		}
		catch (SQLException e) 
		{
			System.out.println("SQL Exception");
		}
		catch (ClassNotFoundException e) 
		{
			System.out.println("Lost not found Exception");
		}
	}
	
}
	
