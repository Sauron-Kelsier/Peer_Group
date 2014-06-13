package test;

import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.Map;

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
			databaseConnection = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/peer01","root","database");
			System.out.println("Connection established! Congratulations!");
			
			
            
						
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
	
	
	// Method for displaying all the records received after querying
	public void display(ResultSet res) throws SQLException
	{
		while(res.next())
		{
			System.out.println("Roll Number: "+res.getString("roll_number")+' ');
			System.out.println("Name: "+res.getString("name")+' ');
			System.out.println("Subject: "+res.getString("subject")+' ');
			System.out.println("Standard: "+res.getString("standard")+' ');
			System.out.println("Date: "+res.getString("date")+' ');
			System.out.println("Questions Attempted: "+res.getString("questions_attempted")+' ');
			System.out.println("Correct Answers: "+res.getString("correct_answers")+"\n");
		}
	}


	// 
	public void babaQuery(Map<String,String> map,int count) throws SQLException
	{
		/*int flag=0;		// to decide whether toDate, forDate or both are given by the user
		System.out.println(map.get("fromDate".toString()));
		String fdate=new String((map.get("fromDate").toString()));	// extracting the toDate and fromDate values for analysis
		String tdate=new String((map.get("toDate").toString()));
		
		String suffixFromToDate=new String(" date BETWEEN '"+fdate+"' AND '"+tdate+"'");
		String suffixFromDate=new String(" date > '"+fdate+"'");
		String suffixToDate=new String(" date < '"+tdate+"'");
		
		
		// 3 cases for querying when dates are given
		if((fdate.compareTo("")!=0 && tdate.compareTo("")!=0))
		{
			flag=1;				// both the dates have been provided by the teacher
		}
		else if(fdate.compareTo("")!=0)
		{
			flag=2;				// From Date field has been provided. Thus, all the dates that are greater than the fromDate value need to be picked up.
		}
		else if(tdate.compareTo("")!=0)
		{
			flag=3;				// To Date field has been provided. Thus, all the dates that are lesser than the toDate value need to be used for querying
		}
			
		System.out.println(flag);*/
		Iterator it=map.entrySet().iterator();
		ResultSet res;
		Statement start=(Statement)databaseConnection.createStatement();
		String query;
		
		switch(count)
		{
		
			// When no value has been entered
			case 0:
				System.out.println("Please enter value in the fields");
				break;
				
			// When 1 parameter has been added by the user	
			case 1:
				Map.Entry case1Par1=(Map.Entry)it.next();
				
				//System.out.println(pairs.getKey().toString());
				//System.out.println(pairs.getValue().toString());
				
				// dynamic query for a request containing a single parameter
				
				/*if(flag==2)
				{
					//query=new String("SELECT * FROM student_performance WHERE"+suffixFromDate); 
				}
				else if(flag==3)
				{
					//query=new String("SELECT * FROM student_performance WHERE"+suffixToDate); 
				}
				else
				{*/
					query=new String("SELECT * FROM student_performance WHERE "+case1Par1.getKey().toString()+" LIKE '"+case1Par1.getValue().toString()+"'");
				
				
				res=(ResultSet) start.executeQuery(query);
				display(res);
				
				break;
			
			// when 2 fields are filled by the teacher in the front end
			case 2:
				Map.Entry case2Par1=(Map.Entry)it.next();	// extracting the 1st parameter
				Map.Entry case2Par2=(Map.Entry)it.next();	// extracting the 2nd parameter
				
				query=new String("SELECT * FROM student_performance WHERE "+case2Par1.getKey().toString()+" LIKE '"+case2Par1.getValue().toString()+"' AND "+case2Par2.getKey().toString()+" LIKE '"+case2Par2.getValue().toString()+"'");
				
				res=(ResultSet)start.executeQuery(query);
				display(res);
				
				break;
				
			// when 3 fields are filled by the teacher in the front end	
			case 3:
				Map.Entry case3Par1=(Map.Entry)it.next();	// extracts the 1st parameter
				Map.Entry case3Par2=(Map.Entry)it.next();	// extracts the 2nd parameter
				Map.Entry case3Par3=(Map.Entry)it.next();	// extracts the 3rd parameter
				
				query=new String("SELECT * FROM student_performance WHERE "+case3Par1.getKey().toString()+" LIKE '"+case3Par1.getValue().toString()+"' AND "+case3Par2.getKey().toString()+" LIKE '"+case3Par2.getValue().toString()+"' AND "+case3Par3.getKey().toString()+" LIKE '"+case3Par3.getValue().toString()+"'");
				
				res=(ResultSet)start.executeQuery(query);
				display(res);
				
				break;
				
			// when 4 fields are filled by the teacher in the front end form
			case 4:
				Map.Entry case4Par1=(Map.Entry)it.next();	// extracts the 1st parameter
				Map.Entry case4Par2=(Map.Entry)it.next();	// extracts the 2nd parameter
				Map.Entry case4Par3=(Map.Entry)it.next();	// extracts the 3rd parameter
				Map.Entry case4Par4=(Map.Entry)it.next();	// extracts the 4th parameter
				
				query=new String("SELECT * FROM student_performance WHERE "+case4Par1.getKey().toString()+" LIKE '"+case4Par1.getValue().toString()+"' AND "+case4Par2.getKey().toString()+" LIKE '"+case4Par2.getValue().toString()+"' AND "+case4Par3.getKey().toString()+" LIKE '"+case4Par3.getValue().toString()+"' AND "+case4Par4.getKey().toString()+" LIKE '"+case4Par4.getValue().toString()+"'");
				
				res=(ResultSet)start.executeQuery(query);
				display(res);
				
				break;
				
		}
	}
}

	
