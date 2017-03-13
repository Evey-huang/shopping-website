package yznu;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class LoginDb {
	boolean f=false;
	 PreparedStatement pre = null;
		Statement sta = null;
		ResultSet rs;
		Connection con = null;
		//注册
	public boolean insert(String name,String password){
		 try {
			 dbpool conns = new dbpool();
			con = conns.getConnection();
			pre=con.prepareStatement("insert into user values(?,?)");
			   pre.setString(1,name);
			   pre.setString(2,password);
			   int temp=pre.executeUpdate();
			   if(temp!=0){
			    System.out.println("注册加成功");
			    System.out.println(name);
			    System.out.println(password);
			   f=true;
			   con.close();
			   pre.close();
		      } 
		 }
		catch (SQLException e) {
			e.printStackTrace();
		}  
		return f;
	}
	public boolean insert2(String name,String password){
		 try {
			 dbpool conns = new dbpool();
			con = conns.getConnection();
			pre=con.prepareStatement("insert into admin values(?,?)");
			   pre.setString(1,name);
			   pre.setString(2,password);
			   int temp=pre.executeUpdate();
			   if(temp!=0){
			    System.out.println("注册加成功");
			    System.out.println(name);
			    System.out.println(password);
			   f=true;
			   con.close();
			   pre.close();
		      } 
		 }
		catch (SQLException e) {
			e.printStackTrace();
		}  
		return f;
	}

	//登录
	public boolean login(String text,String password){
		 try {
			dbpool conns = new dbpool();
			con = conns.getConnection();
			pre=con.prepareStatement("SELECT * FROM user WHERE username=? AND password=?");
			pre.setString(1,text);
		    pre.setString(2,password);
			rs=pre.executeQuery(); 
			if(rs.next())
			{
				f=true;
			}
			  
		 }
			    catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}			  
		return f;
	}
	public boolean login2(String name, String password) {
		 try {
				dbpool conns = new dbpool();
				con = conns.getConnection();
				pre=con.prepareStatement("SELECT * FROM admin WHERE username=? AND password=?");
				pre.setString(1,name);
			    pre.setString(2,password);
				rs=pre.executeQuery(); 
				if(rs.next())
				{
					f=true;
				}
				  
			 }
			catch (SQLException e) {
				e.printStackTrace();
	           }
		 return f;
	}
	
}
	

