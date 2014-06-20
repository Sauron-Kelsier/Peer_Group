package com.example.peerbased;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.SocketException;
import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;


public class MainClass {
	
	public static void main(String name,String pass)
	{
		/* Make a connection with the local mysql database using JDBC
		 * mysql-java-connection jar file must be included in the External Jar files for this to run
		 */
		try 
		{
			Runtime.getRuntime().addShutdownHook(new Thread() {
			    public void run() {
			    	System.out.println("Yayya!!!");
			    	DatagramSocket sock = null;
					try {
						sock = new DatagramSocket();
					} catch (SocketException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					}
					byte[] b = new byte[1];
					b[0] = 0;
					DatagramPacket pack = new DatagramPacket(b, b.length, Utilities.broadcastIP, Utilities.clientErrorPort);
					try {
						sock.send(pack);
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					sock.close();
			    }
			});
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/peer01","root","database");
			// Session object is created to start the Application
			StartSession session = new StartSession(con);
			session.start();
		}
		catch (SQLException e){
			e.printStackTrace();
		}
		catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
}
