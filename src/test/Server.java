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
	
	// method that takes in the teacher login details and queries to verify whether the details are correct or not
	// The teacher id and teacher password come in as input into the method
	// A boolean value is sent back to tell whether a record exists in the table or not
	public boolean loginQuery(String id,String pass) throws SQLException
	{
		Statement start=(Statement)databaseConnection.createStatement();
        String query=new String("SELECT * FROM teacher_login WHERE teacher_id LIKE '"+id+"' AND password like '"+pass+"'");
        ResultSet res=(ResultSet) start.executeQuery(query);
       
        if(res.next())			// if record is present means the given details are correct
        {
        	return true;
        }
        else					// record is not present and the given details are incorrect
        {
        	return false;
        }
        
	}
	
	
	
	// method that inserts a new record in the teacher_login table
	// Registers a new teacher
	public int signupTeacher(String id,String name,String password) throws SQLException
	{
		Statement start=(Statement)databaseConnection.createStatement();
        String query=new String("INSERT INTO teacher_login VALUES ('"+id+"','"+name+"','"+password+"')");
        int res=start.executeUpdate(query);
        
        return res;
	}
	
	
	// method that lets teacher insert class and the subject that she teaches in that class
	// teacher id, subject and standard and taken in as arguments and a query is made for execution
	public int insertSubject(String id,String standard,String subject) throws SQLException
	{
		Statement start=(Statement)databaseConnection.createStatement();
		String query=new String("INSERT INTO teacher_detail VALUES ('"+id+"','"+subject+"','"+standard+"')");
		
		int res=start.executeUpdate(query);
		
		return res;
	}
	
	
	
	// This method is for the teacher, if she has to change the password when a student forgets his password after changing
	// method that takes in the roll number, standard and new password to change the existing password after proper verification
	// a query is fired that changes the password based on the roll number and standard provided
	public int modifyStudentDetails(String rollNumber, String standard, String newPassword) throws SQLException
	{
		Statement start=(Statement)databaseConnection.createStatement();
		String query=new String("UPDATE student_info SET password='"+newPassword+"' WHERE roll_number LIKE '"+rollNumber+"' AND std LIKE '"+standard+"'");
		int res=start.executeUpdate(query);
		
		return res;
	}
	
	
	// Method for displaying all the records received after querying
	// NOT requires now because result isn't displayed in the console now.
	public void displayPerformance(ResultSet res) throws SQLException
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
	
	
	// Method for displaying all the questions along with the associated details 
	// Not in use now because now, console isn't used for display purpose
	public void displayQuestion(ResultSet res) throws SQLException
	{
		while(res.next())
		{
			System.out.println("Question: "+res.getString("question")+' ');
			System.out.println("Answer: "+res.getString("answer")+' ');
			System.out.println("Date: "+res.getString("date")+' ');
			System.out.println("Subject: "+res.getString("subject")+' ');
			System.out.println("Level: "+res.getString("level")+' ');
			System.out.println("Standard: "+res.getString("std")+' ');
		}
		
	}
	
	
	// method to view the student's information
	// Depending on the whether roll number or standard or both are entered, a query is executed
	public ResultSet viewStudent(String query) throws SQLException
	{
		Statement start=(Statement)databaseConnection.createStatement();
		ResultSet res=(ResultSet)start.executeQuery(query);
		
		return res;
	}
	


	// 
	/*public void babaQuery(Map<String,String> map,int count) throws SQLException
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
			
		System.out.println(flag);
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
				{
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
	*/
	
	
	// Method to add a new student in the student_info table
	// Takes in the roll, name, password and standard as the parameters
	// Name, Roll Number and standard are supplied by the user in the front end form
	// Password is auto generated by extracting the first name and then appending the roll number to it
	// Total number of questions attempted and the total number of correct answers are 0 at the beginning for a new student
	public boolean addStudent(String roll,String name,String pass,String standard) 
	{
		try
		{
		Statement start=(Statement)databaseConnection.createStatement();
		
		String query=new String("INSERT INTO student_info (roll_number,name,password,std,questions_attempted,correct_answers) VALUES ('"+roll+"','"+name+"','"+pass+"','"+standard+"','0','0')");
		
		if(start.executeUpdate(query)!=0)
        {
        	return true;
        }
        else
        {
        	return false;
        }
		}
		catch(SQLException e)
		{
			System.out.println("Please select a different username");
		}
		return false;
		
		
	}
	
	
	// Method that executes the query for performance retrieval of students
	// Concatenating all the queries, forming the entire query
	public ResultSet donQuery(String q) throws SQLException
	{
		Statement start=(Statement)databaseConnection.createStatement();
		ResultSet res=(ResultSet) start.executeQuery(q);
		
		return res;
		
	}
	
	
	// method for extracting the roll number when the name has been given by the user as parameter
	// name field is not there in the student_performance table. So, if a search is requested based on the name, for querying the roll number has to be fetched from the student_info table.
	public String getRollQuery(String name) throws SQLException
	{
		Statement start=(Statement)databaseConnection.createStatement();
		String query=new String("SELECT roll_number FROM student_info WHERE name LIKE '"+name+"'");
	
		ResultSet res=(ResultSet)start.executeQuery(query);
		res.next();
		
		return res.getString("roll_number");
	}
	
	
	// Method that executes the query for retrieving the questions from the table based on parameters given by the teacher
	// method for searching out questions based on the parameters given by the user
	public ResultSet questionQuery(String q) throws SQLException
	{
		Statement start=(Statement)databaseConnection.createStatement();
		ResultSet res=(ResultSet)start.executeQuery(q);
		
		return res;
	}
	
	
}

	
