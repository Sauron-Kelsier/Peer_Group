package bean;

import java.util.*;
import java.sql.*; 

public class ConnectionBean 
{

	private String driver = new String("com.mysql.jdbc.Driver");
	private String url= new String("jdbc:mysql://192.168.1.40/test");
	private String user = new String("root");
	private String password= new String("password");

	private Connection dbCon;

	public ConnectionBean(){
	super();
	}

	public boolean connect() throws ClassNotFoundException,SQLException{
	Class.forName(driver);
	dbCon = DriverManager.getConnection(url,user,password);
	return true;
	}

	public void close() throws SQLException{
	dbCon.close();
	}
	public int updateSQL(String sql) throws SQLException{
	Statement s = dbCon.createStatement();
	int r = s.executeUpdate(sql);
	return (r == 0) ? 0 : r;
	}
	public ResultSet execSQL(String sql) throws SQLException{

	Statement s = dbCon.createStatement();
	ResultSet r = s.executeQuery(sql);
	return (r == null) ? null : r;
	} 
	
}
