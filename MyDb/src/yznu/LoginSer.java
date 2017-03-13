package yznu;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginSer extends HttpServlet {
	private static final Object students = null;
	public void destroy() {
		super.destroy(); 
	}
	/* (non-Javadoc)
	 * @see javax.servlet.http.HttpServlet#doGet(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("gb2312");
		response.setContentType("text/html;charset=gb2312");
		PrintWriter out = response.getWriter();
		String status=request.getParameter("status"); 
		//用户注册
		if(status.equals("res")){
		String name=request.getParameter("username"); 
	    String password=request.getParameter("password");
	    byte [] b=name.getBytes("iso-8859-1");
	    name=new String(b,"gb2312");
	    LoginDb db=new LoginDb();
	    boolean f= db.insert(name, password);
		if(f!=true)
		{
			response.sendRedirect("res.jsp");
		}
		else{response.sendRedirect("Login.jsp");
		 }
		}
		//管理员注册
		else if(status.equals("res2")){
			String name=request.getParameter("username"); 
		    String password=request.getParameter("password");
		    byte [] a=name.getBytes("iso-8859-1");
		    name=new String(a,"gb2312");
		    LoginDb db=new LoginDb();
		    boolean f= db.insert2(name, password);
			if(f!=true)
			{
				response.sendRedirect("res2.jsp");
			}
			else{response.sendRedirect("Login2.jsp");
			 }
		}
		//登录
		
		else if(status.equals("login"))
		{
			String name=request.getParameter("username"); 
		    String password=request.getParameter("password");
		    byte [] b=name.getBytes("iso-8859-1");
		    name=new String(b,"gb2312");
		    LoginDb db=new LoginDb();
		    String select=new String(request.getParameter("select").getBytes("iso-8859-1"));
		   
		    if(select.equals("管理员")){
		    	boolean f=db.login2(name, password);
		    	if(f!=true){
			    	response.sendRedirect("Login2.jsp");
			    }
		    	else{
			    	HttpSession session=request.getSession(true);
			    	session.setAttribute("username", name);
			    	
			    	RequestDispatcher dispatcher=request.getRequestDispatcher("/jsp/index.jsp");
					 dispatcher.forward(request, response);
			    }
		    }
		    else if(select.equals("用户")){
		    	boolean f=db.login(name, password);
		    	if(f!=true){
			    	response.sendRedirect("Login.jsp");
			    }
		    	else{
			    	HttpSession session=request.getSession(true);
			    	session.setAttribute("username", name);
				    dbp dbp = new dbp();
				    ArrayList<Student> students = dbp.main(1);
					 request.setAttribute("students", students);
					
			    	RequestDispatcher dispatcher=request.getRequestDispatcher("/jsp/main.jsp");
			    	
					 dispatcher.forward(request, response);
			    }
		    }
		   
		}
		out.flush();
		out.close();
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doGet(request, response);
		
	}
	public void init() throws ServletException {
		// Put your code here
	}

}
