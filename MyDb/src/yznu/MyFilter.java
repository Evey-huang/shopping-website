package yznu;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class MyFilter extends HttpServlet implements Filter {
	public MyFilter() {
		super();
	}
	public void destroy() {
		super.destroy(); 
	}
	public void doFilter(ServletRequest request, ServletResponse response,FilterChain filterChain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
	HttpSession session=((HttpServletRequest) request).getSession();
	response.setCharacterEncoding("gb2312");
	if(session.getAttribute("username")==null){
		PrintWriter out=response.getWriter();
		out.print("����û�е�¼");
	}
	else{
		filterChain.doFilter(request,response);
	}
	}
	public void init(FilterConfig filterConfig) throws ServletException {
		
	}
}
