package yznu;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class dbpool{
	private String driverName = "com.mysql.jdbc.Driver"; 
	private String url="jdbc:mysql://localhost/user2?user=root&password=&useUnicode=true&characterEncoding=gb2312";
	
	Connection con;
	public Connection getConnection(){
		Connection con=null;
		try {
			Class.forName(driverName);
			con =DriverManager.getConnection(url); 
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
		
	}
}