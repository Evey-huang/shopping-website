package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class res_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=gb2312");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write('\r');
      out.write('\n');

String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n");
      out.write("<html>\r\n");
      out.write(" <head>\r\n");
      out.write("   \r\n");
      out.write("    <title>login</title>\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"css/login.css\">  \r\n");
      out.write("</head>\r\n");
      out.write(" <body class=\"login-page\">\r\n");
      out.write("\t\r\n");
      out.write("\t\t<div class=\"login-block\">\r\n");
      out.write("\t\t\t<a href=\"#\">\r\n");
      out.write("\t\t\t   <img src=\"img/login.jpg\" width=\"138px\" height=\"100px\" alt=\"\">\r\n");
      out.write("\t\t\t</a>\r\n");
      out.write("\t\t\t<h1>HELLO WORLD!</h1>\r\n");
      out.write("\t\t\t<form action=\"LoginSer\">\r\n");
      out.write("\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t                <div class=\"input-group\">\r\n");
      out.write("\t                   <input type=\"text\" class=\"form-control\" name=\"username\" placeholder=\"用户名\">\r\n");
      out.write("\t                </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <hr class=\"hr-xs\">\r\n");
      out.write("\t            <div class=\"form-group\">\r\n");
      out.write("\t                <div class=\"input-group\">\r\n");
      out.write("\t                  <input type=\"password\" class=\"form-control\" name=\"password\" placeholder=\"密码\">\r\n");
      out.write("\t                </div>\r\n");
      out.write("\t            </div>\r\n");
      out.write("                <hr class=\"hr-xs\">\r\n");
      out.write("\r\n");
      out.write("\t            <input type=\"hidden\" name=\"status\" value=\"res\" >\r\n");
      out.write("\t            <input type=\"submit\" class=\"btn btn-primary btn-block\" value=\"注册并登陆\"/>\r\n");
      out.write("\t            \r\n");
      out.write("\t            <div class=\"login-links\">\r\n");
      out.write("\t\t\t        <a class=\"pull-left\" href=\"#\">忘记密码?</a>\r\n");
      out.write("\t\t\t        <a class=\"pull-right\" href=\"Login.jsp\">返回登陆</a>\r\n");
      out.write("\t            </div>\r\n");
      out.write("\t\t\t</form>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
