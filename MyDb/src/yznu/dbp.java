package yznu;

import java.io.UnsupportedEncodingException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;


public class dbp {
	private static final ArrayList<Student> students = null;
	int size=5;
	Connection con = null;
	PreparedStatement pre = null;
	Statement sta = null;
	ResultSet rs;
	boolean f=false;
	
	public boolean insert(String id,String text,String bookname,String price){
		
		 try {
			 dbpool conns = new dbpool();
			con = conns.getConnection();
			pre=con.prepareStatement("insert into stuser1 values(?,?,?,?,?,?,?)");
			
			   pre.setString(1,id);
			   pre.setString(2, "");
			   pre.setString(3,text);
			   pre.setString(4, "");
			   pre.setString(5,price);
			   pre.setString(6,bookname);
			   pre.setString(7, "");
			     int temp=pre.executeUpdate();
			    if(temp!=0){
			System.out.println("ͼ����Ϣ��   �ӳɹ�");
			f=true;
		} 
		 }
			    catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			  
		return f;
	}
	
	public boolean addcart(String id,String text,String bookname,String price){
		
		 try {
			 dbpool conns = new dbpool();
			con = conns.getConnection();
			pre=con.prepareStatement("insert into my_indent values(?,?,?,?)");
			
			   pre.setString(1,id);
			   pre.setString(2,text);
			   pre.setString(3,bookname);
			   pre.setString(4,price);
			  
			     int temp=pre.executeUpdate();
			    if(temp!=0){
			System.out.println("��ӹ��ﳵ�ɹ�");
			f=true;
		} 
		 }
			    catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			  
		return f;
	}
	
	
	
	public ArrayList<Student> dis( int currentPage){
		
		ArrayList<Student> students=new ArrayList<Student>();
		try {
			dbpool conns = new dbpool();
			con = conns.getConnection();
			sta=con.createStatement();
			rs=sta.executeQuery("select * from stuser1 limit "+(currentPage-1)*size+","+size);
			while(rs.next()){
				Student student=new Student();
				student.setId(rs.getString("id"));
				student.setName(rs.getString("authorname"));
				student.setBookName(rs.getString("bookname"));
				student.setPrice(rs.getString("price"));//
				student.setImg(rs.getString("img"));
				students.add(student);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return students;
	}
	
public ArrayList<Student> main( int currentPage){
		
		ArrayList<Student> students=new ArrayList<Student>();
		try {
			dbpool conns = new dbpool();
			con = conns.getConnection();
			sta=con.createStatement();
			rs=sta.executeQuery("select * from stuser1 limit "+(currentPage-1)*size+","+size);
			while(rs.next()){
				Student student=new Student();
				student.setId(rs.getString("id"));
				//student.setName(rs.getString("authorname"));
				student.setPublish(rs.getString("publish"));
				student.setBookName(rs.getString("bookname"));
				student.setImg(rs.getString("img"));
				student.setPrice(rs.getString("price"));
				students.add(student);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return students;
	}


//�޸�
public ArrayList<Student> getBooks(String Id){
	
	ArrayList<Student> students = new ArrayList<Student>();
	String sql = "select * from stuser1 where Id ="+Id;
	dbpool conns = new dbpool();
	con = conns.getConnection();
	try {
		
		sta=con.createStatement();
		rs=sta.executeQuery(sql);
		while(rs.next()){
			Student student=new Student();
			student.setId(rs.getString("id"));
			student.setName(rs.getString("authorname"));
			student.setPublish(rs.getString("publish"));
			student.setBookName(rs.getString("bookname"));
			student.setImg(rs.getString("img"));
			student.setPrice(rs.getString("price"));
			students.add(student);//��ӵ�����
		};
	} 
	catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return students;
}
//�޸�


	public  boolean deleteStudent(String id) {
		dbpool conns = new dbpool();
		con = conns.getConnection();
		try {
			pre=con.prepareStatement("DELETE FROM stuser1 WHERE id=?");
			pre.setString(1,id);
			int temp=pre.executeUpdate();
		    if(temp!=0){
		    System.out.println("�鼮ɾ���ɹ�");
		    f=true;
		    }
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return f;
		
	}
	public ArrayList<Student> serch(String text) {
		ArrayList<Student> students=new ArrayList<Student>();
		try {
			dbpool conns = new dbpool();
			con = conns.getConnection();
			pre=con.prepareStatement("SELECT * FROM stuser1 WHERE authorname LIKE ?");
			pre.setString(1, "%" + text + "%");
			
			rs=pre.executeQuery();
			while(rs.next()){
				Student student=new Student();
				student.setId(rs.getString("id"));
				student.setName(rs.getString("authorname"));
				student.setBookName(rs.getString("bookname"));
				student.setPrice(rs.getString("price"));
				student.setImg(rs.getString("img"));

				students.add(student);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return students;
		
	}
	public boolean updateStudent(String id, String text, String bookname,String price) {

		 try {
			 dbpool conns = new dbpool();
			con = conns.getConnection();
			pre=con.prepareStatement("UPDATE stuser1 SET bookname=?,authorname=?,price=? WHERE id=?");
			   pre.setString(2,text);
			   pre.setString(1,bookname);
			   pre.setString(3,price);
			   pre.setString(4,id);
			     int temp=pre.executeUpdate();
			    if(temp!=0){
			System.out.println("ѧ����Ϣ�޸ĳɹ�");
			f=true;
		} 
		 }
			    catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return f;
	}
	//�޸�
	public ArrayList<Student> show(int currentPage){
		ArrayList<Student> books = new ArrayList<Student>();
		 dbpool conns = new dbpool();
			con = conns.getConnection();
		String sql = "select * from stuser1 limit ?,?";
		
		try {
			pre = con.prepareStatement(sql);
			pre.setInt(1, (currentPage-1)*size);
			pre.setInt(2, size);
			rs = pre.executeQuery();
			while(rs.next()){
				
				Student student=new Student();
				student.setId(rs.getString("id"));
				student.setName(rs.getString("authorname"));
				student.setBookName(rs.getString("bookname"));
				student.setImg(rs.getString("img"));
				student.setPrice(rs.getString("price"));
				
				students.add(student);//�޸�
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return students;
	}
	//�޸�
	public int countPage(){
		int countPage=0;   //�洢��ҳ��
		// �������ݿ� ������ݵ�¼�����
		Connection con = null;
		PreparedStatement pre = null;
		ResultSet rs=null;
		dbpool conns = new dbpool();
		con = conns.getConnection();
		try {
			pre = con.prepareStatement("SELECT COUNT(*) total FROM stuser1 ");
			
			rs=pre.executeQuery();
			if(rs.next()){
				//���ʽ ? ֵ :ֵ
				int total=rs.getInt("total");
				countPage=total%size==0?total/5:total/5+1;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	
		return countPage;
	}
	
}

	

