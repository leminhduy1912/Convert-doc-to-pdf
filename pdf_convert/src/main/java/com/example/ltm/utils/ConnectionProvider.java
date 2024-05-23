package com.example.ltm.utils;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionProvider {
	private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
	private static final String URL = "jdbc:mysql://localhost:3306/ltm";
	private static final String USER ="root";
	private static final String PASSWORD ="Duyphuc1912@";
	private static Connection connection;
	
	public static Connection getConnection() {
		if(connection ==null) {
			try {
				Class.forName(DRIVER);
				connection = DriverManager.getConnection(URL,USER,PASSWORD);
				//stmt = conn.createStatement();
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return connection;
	}
}
