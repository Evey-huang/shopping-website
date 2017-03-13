package org.apache.jsp.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class detail_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("  <head>\r\n");
      out.write("   <meta charset=\"utf-8\">\r\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("    <title>图书管理系统</title>\r\n");
      out.write("    <link href=\"http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("   <style type=\"text/css\">\r\n");
      out.write("      body {\r\n");
      out.write("            padding-top: 50px;\r\n");
      out.write("\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .nav-sidebar > .active > a,\r\n");
      out.write("        .nav-sidebar > .active > a:hover,\r\n");
      out.write("        .nav-sidebar > .active > a:focus {\r\n");
      out.write("            color: #fff;\r\n");
      out.write("            background-color: #428bca;\r\n");
      out.write("        }\r\n");
      out.write("        .copyright \r\n");
      out.write("        {\r\n");
      out.write("          background: #111;\r\n");
      out.write("          font-size: 13px;\r\n");
      out.write("          text-align: center;\r\n");
      out.write("          color: #555555;\r\n");
      out.write("          padding-top: 15px;\r\n");
      out.write("          padding-bottom: 15px;\r\n");
      out.write("          border-top: 1px solid #303030;\r\n");
      out.write("        }\r\n");
      out.write("        \r\n");
      out.write("         .serch_right{\r\n");
      out.write("             float: right;\r\n");
      out.write("           margin-right: 400px;\r\n");
      out.write("           margin-top: 190px;\r\n");
      out.write("          \r\n");
      out.write("        }\r\n");
      out.write("        \r\n");
      out.write("        .de_right{\r\n");
      out.write("           float: right;\r\n");
      out.write("           margin-right: 370px;\r\n");
      out.write("           margin-top: 130px;\r\n");
      out.write("          \r\n");
      out.write("          \r\n");
      out.write("        }\r\n");
      out.write("        \r\n");
      out.write("        .de_left{\r\n");
      out.write("            margin-left: 400px;\r\n");
      out.write("            display: inline-block;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        img{\r\n");
      out.write("            width:307px;\r\n");
      out.write("            height: 354px;\r\n");
      out.write("        }\r\n");
      out.write("      \r\n");
      out.write("   </style>\r\n");
      out.write("  </head>\r\n");
      out.write(" <body> \r\n");
      out.write(" ");
session.setAttribute("currentPage", 1); 
      out.write("\r\n");
      out.write(" <nav class=\"navbar navbar-inverse navbar-fixed-top\" role=\"navigation\">\r\n");
      out.write("        <div class=\"container-fluid\">\r\n");
      out.write("            <!-- Brand and toggle get grouped for better mobile display -->\r\n");
      out.write("            <div class=\"navbar-header\">\r\n");
      out.write("                <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#bs-example-navbar-collapse-1\">\r\n");
      out.write("                    <span class=\"sr-only\">Toggle navigation</span>\r\n");
      out.write("                    <span class=\"icon-bar\"></span>\r\n");
      out.write("                    <span class=\"icon-bar\"></span>\r\n");
      out.write("                    <span class=\"icon-bar\"></span>\r\n");
      out.write("                </button>\r\n");
      out.write("                <a class=\"navbar-brand\" href=\"#\">图书管理系统</a>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"collapse navbar-collapse\" id=\"bs-example-navbar-collapse-1\">\r\n");
      out.write("                <ul class=\"nav navbar-nav\">\r\n");
      out.write("                    <li class=\"active\"><a href=\"#\">首页</a></li>\r\n");
      out.write("                    <li class=\"dropdown\">\r\n");
      out.write("                        <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">功能 <span class=\"caret\"></span></a>\r\n");
      out.write("                        <ul class=\"dropdown-menu\" role=\"menu\">\r\n");
      out.write("                           \r\n");
      out.write("                            <li><a href=\"/MyDb/jsp/insert.jsp\">添加数据</a></li>\r\n");
      out.write("                            <li><a href=\"/MyDb/MySer?status=dis&currentPage=1\">修改数据</a></li>\r\n");
      out.write("                            <li class=\"divider\"></li>\r\n");
      out.write("                            <li><a href=\"/MyDb/MySer?status=dis\">删除数据</a></li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                       \r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li><a href=\"#\">帮助</a></li>\r\n");
      out.write("                </ul>\r\n");
      out.write("                <form action=\"/MyDb/MySer\" class=\"navbar-form navbar-right\" role=\"search\">\r\n");
      out.write("                    <input type=\"text\" name=\"name\" class=\"form-control\" placeholder=\"搜索\">\r\n");
      out.write("                    <input type=\"hidden\" name=\"status\" value=\"serch\">\r\n");
      out.write("                    <button type=\"submit\" class=\"btn btn-default\">搜索</button>\r\n");
      out.write("                </form>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!-- /.navbar-collapse -->\r\n");
      out.write("        </div>\r\n");
      out.write("        <!-- /.container-fluid -->\r\n");
      out.write("    </nav>\r\n");
      out.write("    <section class=\"content-wrap\">\r\n");
      out.write("            <div class=\"content\">\r\n");
      out.write("                <div class=\"de_left\">\r\n");
      out.write("                    <h1>漫长的中场休息</h1>\r\n");
      out.write("                    <img  src=\"img/Book1.jpg\">\r\n");
      out.write("                </div> \r\n");
      out.write("                <div class=\"de_right\">\r\n");
      out.write("                    <p>作者: [美] 本&bull;方登 </p>\r\n");
      out.write("                    <p>出版社: 南海出版公司</p>\r\n");
      out.write("                    <p>原作名: Billy Lynn’s Long Halftime Walk</p>\r\n");
      out.write("                    <p>译者: 张晓意 </p>\r\n");
      out.write("                    <p>出版年: 2016-11-1</p>\r\n");
      out.write("                    <p>页数: 314</p>\r\n");
      out.write("                    <p>装帧: 精装</p>\r\n");
      out.write("                    <p>ISBN: 9787544285117</p>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </section>\r\n");
      out.write("     <div class=\"copyright\">\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("                <div class=\"col-sm-12\">\r\n");
      out.write("                    <span>Copyright &copy; <a href=\"#\">Evey Wong</a></span> |\r\n");
      out.write("                    <span>2016-2017</span>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <script src=\" http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js\"></script>\r\n");
      out.write("    <script src=\"http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js\"></script>\r\n");
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
