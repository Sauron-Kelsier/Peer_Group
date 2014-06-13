package test;

import java.sql.*;
import com.mysql.jdbc.*;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.Statement;

import java.sql.SQLException;
import java.util.Map;

public class Hello 
{	
	Connection databaseConnection;
	
	// constructor that establishes a connection with the database
	// the database contains all the required tables
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
			System.out.println("Lost not found Exception");
		}
		
	}
	
	
	
	
	
	// method for teacher login
	// checks whether the credentials given by the teacher are correct or not
	public boolean loginQuery(int id,String pass) throws SQLException
	{
		Statement start=(Statement)databaseConnection.createStatement();
        String query=new String("SELECT * FROM teacher WHERE teacher_id = "+id+" AND password like '"+pass+"'");
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
	
	
	
	//method for adding a new student in the database
	// takes in the student id, student name, auto generated password from addStudentQuery.jsp file and inserts a new record in the student_info table
	public boolean addStudentRecord(int id,String name,String pass) throws SQLException
	{
		Statement start=(Statement)databaseConnection.createStatement();
        String query=new String("INSERT INTO student_info (roll_number,name,password,overall_marks) VALUES ("+id+",'"+name+"','"+pass+"',"+0+')');
        
             
        if(start.executeUpdate(query)!=0)
        {
        	return true;
        }
        else
        {
        	return false;
        }
       
	}
	
	
	
	// method for displaying the record of 1 student
	// takes as parameter the roll number of the student whose record needs to be viewed
	// returns the resultant table back to the .jsp file for display purpose
	public ResultSet viewOneStudentDetails(int roll) throws SQLException
	{
		Statement start=(Statement)databaseConnection.createStatement();
        String query=new String("SELECT * FROM student_info where roll_number="+roll);
        ResultSet res=(ResultSet)start.executeQuery(query);
        
        return res;
	}
	
	
	
	// method for displaying the record of all the students of the class
	// simply selects all the records from the table and returns to viewAllStudentQuery.jsp file
	public ResultSet viewAllStudentDetails() throws SQLException
	{
		Statement start=(Statement)databaseConnection.createStatement();
        String query=new String("SELECT * FROM student_info");
        ResultSet res=(ResultSet)start.executeQuery(query);
        
        return res;
	}
	
	
	// method for displaying all the questions containing a given keyword
	// takes in as argument the keyword by which the search has to be done
	// returns all the records, which contain the keyword
	public ResultSet viewQuestionKeyword(String keyword) throws SQLException
	{
		Statement start=(Statement)databaseConnection.createStatement();
        String query=new String("SELECT * FROM question_table WHERE question REGEXP '"+keyword+"'");
        ResultSet res=(ResultSet)start.executeQuery(query);
        
        return res;
	}
	
	
	// method that displays all the questions of one subject
	// takes in as parameter the subject name and queries from 'question_table'
	// returns the entire result set to viewQuestionSubjectQuery.jsp for display purpose
	public ResultSet viewQuestionSubject(String subject) throws SQLException
	{
		Statement start=(Statement)databaseConnection.createStatement();
        String query=new String("SELECT * FROM question_table WHERE subject LIKE '"+subject+"'");
        ResultSet res=(ResultSet)start.executeQuery(query);
        
        return res;
	}
	
	
	// method that displays all the questions asked on a particular date
	// takes in as parameter the date and queries from the database for all the questions
	// returns the result set to viewQuestionDateQuery.jsp for display purpose
	public ResultSet viewQuestionDate(String date) throws SQLException
	{
		Statement start=(Statement)databaseConnection.createStatement();
        String query=new String("SELECT * FROM question_table WHERE date LIKE '"+date+"'");
        ResultSet res=(ResultSet)start.executeQuery(query);
        
        return res;
	}
	
	
	
	// method for displaying the performance roll number wise 
	// simply extracts all the records in the increasing order of roll number
	public ResultSet viewAllPerformanceRoll() throws SQLException
	{
		Statement start=(Statement)databaseConnection.createStatement();
        String query=new String("SELECT * FROM student_report ORDER BY roll_number");
        ResultSet res=(ResultSet)start.executeQuery(query);
        
        return res;
	}
	
	
	
	
	// method for displaying the performance subject wise
	// selects all the records from the table in the increasing order of subject, i.e, english comes before maths
	public ResultSet viewAllPerformanceSubject() throws SQLException
	{
		Statement start=(Statement)databaseConnection.createStatement();
        String query=new String("SELECT * FROM student_report ORDER BY subject");
        ResultSet res=(ResultSet)start.executeQuery(query);
        
        return res;
	}
	
	
	
	// method that displays performance date wise
	// selects all the records from the table starting from the latest to the first	
	public ResultSet viewAllPerformanceDate() throws SQLException
	{
		Statement start=(Statement)databaseConnection.createStatement();
        String query=new String("SELECT * FROM student_report ORDER BY date desc");
        ResultSet res=(ResultSet)start.executeQuery(query);
        
        return res;
	}
	
	
	
	// method that displays all the performances of a particular student
	// the roll number of the student goes into the method as the parameter
	// records are ordered by date
	public ResultSet viewPerformanceRoll(int roll) throws SQLException
	{
		Statement start=(Statement)databaseConnection.createStatement();
        String query=new String("SELECT * FROM student_report WHERE roll_number="+roll+" ORDER BY date DESC");
        ResultSet res=(ResultSet)start.executeQuery(query);
        
        return res;		
	}
	
	
	// method returns all the performances of a particular subject
	// report of all the quiz sessions of a particular subject can be extracted using this option
	// the method takes in the subject as the parameter and queries the student_report table for the required records
	public ResultSet viewPerformanceSubject(String subject) throws SQLException
	{
		Statement start=(Statement)databaseConnection.createStatement();
        String query=new String("SELECT * FROM student_report WHERE subject='"+subject+"' ORDER BY date");
        ResultSet res=(ResultSet)start.executeQuery(query);
        
        return res;		
	}
	
	
	// method returns all the performances on a particular date
	// it takes in the date as the parameter and queries the records that match the date
	// records displayed according to the subject
	public ResultSet viewPerformanceDate(String date) throws SQLException
	{
		Statement start=(Statement)databaseConnection.createStatement();
        String query=new String("SELECT * FROM student_report WHERE date='"+date+"' ORDER BY subject");
        ResultSet res=(ResultSet)start.executeQuery(query);
        
        return res;		
		
	}
	
	
}
