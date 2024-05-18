package com.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;



public class DBConnection { 
	
	private static Connection conn;

	public static Connection getConn() {
	      try {
	    	  
	    	 
	    	  
	    	  Class.forName("com.mysql.cj.jdbc.Driver");
		      conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_ms", "root", "Marc_12_elo128");
		      

	    	  	         
	      }
	      catch(SQLException e) {
	         e.printStackTrace();
	      }	      catch(Exception e) {
		         e.printStackTrace();
		      }
		return conn;
	}
	
	

}
