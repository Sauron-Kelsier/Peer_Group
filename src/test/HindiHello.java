package test;

import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.Statement;
//import java.sql.*;

public class HindiHello 
{
	Connection con;
	public HindiHello()
	{
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/hindi","root","database");
			System.out.println("Congratulations! You have successfully established a connection");
			System.out.println("This is the Hindi database! Lucky chap!");
		}
		catch (ClassNotFoundException e) 
		{
			System.out.println("Class not found");
		} 
		catch (SQLException e) 
		{
			System.out.println("SQL Exception");
		}
		
	}
	
	public ResultSet test() throws SQLException
	{
		Statement start=(Statement)con.createStatement();
		String query=new String("Select * from hindi");
		ResultSet res=(ResultSet)start.executeQuery(query);
		return res;
	}
}
