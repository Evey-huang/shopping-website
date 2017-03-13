package org.apache.jsp.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class main_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"css/main.css\"> \r\n");
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
      out.write("                <div class=\"left\">\r\n");
      out.write("                    <h1>漫长的中场休息</h1>\r\n");
      out.write("                    <a href=\"/MyDb/jsp/detail.jsp\"><img  src=\"img/Book1.jpg\"></a>\r\n");
      out.write("                </div> \r\n");
      out.write("                <div class=\"right\">\r\n");
      out.write("                    <p>作者: [美] 本&bull;方登 </p>\r\n");
      out.write("                    <p>出版社: 南海出版公司</p>\r\n");
      out.write("                    <p>原作名: Billy Lynn’s Long Halftime Walk</p>\r\n");
      out.write("                    <p>译者: 张晓意 </p>\r\n");
      out.write("                    <p>出版年: 2016-11-1</p>\r\n");
      out.write("                    <p>页数: 314</p>\r\n");
      out.write("                    <p>装帧: 精装</p>\r\n");
      out.write("                    <p>ISBN: 9787544285117</p>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"intro\">\r\n");
      out.write("                    <h3>简介</h3>\r\n");
      out.write("                    <p>《漫长的中场休息》是美国作家本•方登的长篇小说，也是李安电影《比利&bull;林恩的中场战事》原著。</p><br>\r\n");
      out.write("                    <p>比利&bull;林恩所在的B班士兵，在伊拉克赢得了一场3分43秒的短暂胜利。一夜间，他们成了美国的英雄。</p>\r\n");
      out.write("                    <p>每个人都说着“感谢你们”，记者、好莱坞导演蜂拥而至。他们甚至还被邀请参加超级碗的中场秀。</p>\r\n");
      out.write("                    <p>绚丽的烟花在耳边炸响，伴舞身上的亮片在身畔旋转，战争仿佛无比遥远。但有那么一刹那，比利觉得还是打仗好，总比被人当舞台布景挪来挪去爽多了。老天作证，打仗确实烂透了，可他实在看不出这种无聊的和平生活又有什么好的。</p>\r\n");
      out.write("                    <p>这一天，比利•林恩遭遇了人生中最大的挑战。</p> <br>\r\n");
      out.write("                    <p>《漫长的中场休息》一经出版便在《纽约时报》等各大媒体收获如潮好评，李安尚未读完便决定将它拍成电影。并获美国国家书评人奖，入选BBC本世纪必读12本小说。本&bull;方登通过一位参加伊拉克战争的19岁少年的眼睛，对战争和纸醉金迷的美国梦进行了辛辣有力的讽刺。正如比利•林恩自己所言，“这感觉其实很奇怪，为这辈子最糟糕的一天得到表彰”。</p>\r\n");
      out.write("                    <p>改编电影《比利•林恩的中场战事》中美同步上映，跻身奥斯卡夺奖热门，带你领略视觉奇迹。但无论技术如何革新，都无法胜过原著中宏大的人类精神、爱和真正的勇气。经过一番挣扎与救赎，一位年轻人终于在这世界上找到了自己的一席之地。</p>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"recommend clearfix\">\r\n");
      out.write("                   <h3 class=\"like\">喜欢看《漫长的中场休息》的人也喜欢：</h3>\r\n");
      out.write("                    <dl>\r\n");
      out.write("                      <dt><a href=\"#\" onclick=\"moreurl(this, {'total': 10, 'clicked': '26864983', 'pos': 0, 'identifier': 'book-rec-books'})\"><img class=\"sub_img\" src=\"img/Book2.jpg\"></a></dt>\r\n");
      out.write("                      <dd><a href=\"#\" onclick=\"moreurl(this, {'total': 10, 'clicked': '26864983', 'pos': 0, 'identifier': 'book-rec-books'})\">我们仨</a></dd>\r\n");
      out.write("                    </dl>\r\n");
      out.write("                    <dl>\r\n");
      out.write("                      <dt><a href=\"#\" onclick=\"moreurl(this, {'total': 10, 'clicked': '26864983', 'pos': 0, 'identifier': 'book-rec-books'})\"><img class=\"sub_img\" src=\"img/Book3.jpg\"></a></dt>\r\n");
      out.write("                      <dd><a href=\"#\" onclick=\"moreurl(this, {'total': 10, 'clicked': '26864983', 'pos': 0, 'identifier': 'book-rec-books'})\">目送</a></dd>\r\n");
      out.write("                    </dl>\r\n");
      out.write("                    <dl>\r\n");
      out.write("                      <dt><a href=\"#\" onclick=\"moreurl(this, {'total': 10, 'clicked': '26864983', 'pos': 0, 'identifier': 'book-rec-books'})\"><img class=\"sub_img\" src=\"img/Book4.jpg\"></a></dt>\r\n");
      out.write("                      <dd><a href=\"#\" onclick=\"moreurl(this, {'total': 10, 'clicked': '26864983', 'pos': 0, 'identifier': 'book-rec-books'})\">红楼梦</a></dd>\r\n");
      out.write("                    </dl>\r\n");
      out.write("                    <dl>\r\n");
      out.write("                      <dt><a href=\"#\" onclick=\"moreurl(this, {'total': 10, 'clicked': '26864983', 'pos': 0, 'identifier': 'book-rec-books'})\"><img class=\"sub_img\" src=\"img/Book5.jpg\"></a></dt>\r\n");
      out.write("                      <dd><a href=\"#\" onclick=\"moreurl(this, {'total': 10, 'clicked': '26864983', 'pos': 0, 'identifier': 'book-rec-books'})\">老人与海</a></dd>\r\n");
      out.write("                    </dl>\r\n");
      out.write("                     <dl>\r\n");
      out.write("                      <dt><a href=\"#\" onclick=\"moreurl(this, {'total': 10, 'clicked': '26864983', 'pos': 0, 'identifier': 'book-rec-books'})\"><img class=\"sub_img\" src=\"img/Book6.jpg\"></a></dt>\r\n");
      out.write("                      <dd><a href=\"#\" onclick=\"moreurl(this, {'total': 10, 'clicked': '26864983', 'pos': 0, 'identifier': 'book-rec-books'})\">活着</a></dd>\r\n");
      out.write("                    </dl>\r\n");
      out.write("                    <dl>\r\n");
      out.write("                      <dt><a href=\"#\" onclick=\"moreurl(this, {'total': 10, 'clicked': '26864983', 'pos': 0, 'identifier': 'book-rec-books'})\"><img class=\"sub_img\" src=\"img/Book7.jpg\"></a></dt>\r\n");
      out.write("                      <dd><a href=\"#\" onclick=\"moreurl(this, {'total': 10, 'clicked': '26864983', 'pos': 0, 'identifier': 'book-rec-books'})\">围城</a></dd>\r\n");
      out.write("                    </dl>\r\n");
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
