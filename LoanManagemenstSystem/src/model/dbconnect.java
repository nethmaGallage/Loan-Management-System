package model;

import java.sql.Connection;
import java.sql.DriverManager;


public class dbconnect {

	
	private static String url="jdbc:mysql://localhost:3306/ems";
	private static String user="root";
	private static String pass="99923";
	
	private static Connection con;
	
	public static Connection getconnection() {
		
		try {
			

			Class.forName("com.mysql.jdbc.Driver");
		    con = DriverManager.getConnection(url,user,pass);
		
			
			
		}
		
		catch(Exception e) {
			
			System.out.println("ERROR !  DB CONNECTION IS NOT SUCCESS");
		}
		
		
		return con;
	}
	
	
	
}
