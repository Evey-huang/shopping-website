package org.apache.jsp.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import java.sql.*;
import yznu.*;

public final class updateStudent_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("  <head>\r\n");
      out.write("   <meta charset=\"gb2312\">\r\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("    <title>图书管理系统</title>\r\n");
      out.write("    <link href=\"http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("    <style>\r\n");
      out.write("         body {\r\n");
      out.write("            padding-top: 50px;\r\n");
      out.write("\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .progress {\r\n");
      out.write("            margin-top: 10px;\r\n");
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
      out.write("        .content-wrap{\r\n");
      out.write("            margin-bottom: 120px;\r\n");
      out.write("            height:400px;\r\n");
      out.write("        }\r\n");
      out.write("        .insert_page{\r\n");
      out.write("           margin-left: 400px;\r\n");
      out.write("           line-height: 30px;\r\n");
      out.write("           margin-top:50px;\r\n");
      out.write("        }\r\n");
      out.write("        form{\r\n");
      out.write("          width: 600px;\r\n");
      out.write("          margin: 0 auto;\r\n");
      out.write("        }\r\n");
      out.write("        h1{\r\n");
      out.write("          padding-top: 90px;\r\n");
      out.write("          text-align:center;\r\n");
      out.write("        }\r\n");
      out.write("        .active input,.success input,.warning input{\r\n");
      out.write("        border:none;\r\n");
      out.write("        }\r\n");
      out.write("        .submit{\r\n");
      out.write("        position:absolute;\r\n");
      out.write("        top:340px;\r\n");
      out.write("        right:200px;\r\n");
      out.write("        }\r\n");
      out.write("    </style>\r\n");
      out.write("  </head>\r\n");
      out.write(" <body> \r\n");
      out.write(" <nav class=\"navbar navbar-inverse navbar-fixed-top\" >\r\n");
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
      out.write("                        <ul class=\"dropdown-menu\">\r\n");
      out.write("                            <li><a href=\"/MyDb/jsp/insert.jsp\">添加数据</a></li>\r\n");
      out.write("                            <li><a href=\"/MyDb/MySer?status=dis&currentPage=1\">修改数据</a></li>\r\n");
      out.write("                            <li class=\"divider\"></li>\r\n");
      out.write("                            <li><a href=\"/MyDb/MySer?status=dis\">删除数据</a></li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                       \r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li><a href=\"#\">帮助</a></li>\r\n");
      out.write("                </ul>\r\n");
      out.write("                <form action=\"/MyDb/MySer\" class=\"navbar-form navbar-right\" >\r\n");
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
      out.write("             <h1>修改图书信息</h1>\r\n");
      out.write("            <form action=\"/MyDb/MySer\" >\r\n");
      out.write("\t            <table class=\"table table-bordered\"> \r\n");
      out.write("\t\t              <tr>\r\n");
      out.write("\t\t                <td class=\"active\">ISBN</td>\r\n");
      out.write("\t\t                <td class=\"success\">作者</td>\r\n");
      out.write("\t\t                <td class=\"warning\">书名</td>\r\n");
      out.write("\t\t              </tr>\r\n");
      out.write("\t\t              <tr>\r\n");
      out.write("\t\t                <td class=\"active\"><input type=\"text\" name=\"id\" value=\"");
      out.print(request.getParameter("id"));
      out.write("\" /></td>\r\n");
      out.write("\t\t                <td class=\"success\"><input type=\"text\" name=\"name\" value=\"");
      out.print(new String(request.getParameter("name").getBytes("iso8859-1")));
      out.write("\" /></td>\r\n");
      out.write("\t\t                <td class=\"warning\"><input type=\"text\" name=\"bookname\" value=\"");
      out.print(new String(request.getParameter("bookname").getBytes("iso8859-1")));
      out.write("\" /></td>\r\n");
      out.write("\t\t              </tr>\r\n");
      out.write("\t\t              <input  class=\"submit\" type=\"submit\" value=\"提交\" />\r\n");
      out.write("\t\t              <input type=\"hidden\" name=\"status\" value=\"updateStudent\" />\r\n");
      out.write("\t\t              <input type=\"hidden\" name=\"id\" value=\"");
      out.print(request.getParameter("id"));
      out.write("\" />\r\n");
      out.write("\t\t              <input type=\"hidden\" name=\"currentPage\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.currentPage}", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("\"/>\r\n");
      out.write("\t            </table>\r\n");
      out.write("            </form>\r\n");
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
