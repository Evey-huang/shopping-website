<%@page import="yznu.dbp"%>
<%@page import="yznu.Student"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<title>购书网-管理员注册</title>
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/main.css"> 
    <style type="text/css">
       .admin_res
       {
          width:400px;
          min-height:400px;
          margin:0 auto;
       }
       .res2
       {
          margin:100px 0px 180px 0px;
       }
       .res_btn
       {
         width:200px;
       
       }
       .res_title
       {
         font-size:24px;
         padding-top:100px;
       }
    </style>
  </head>
  
  <body>
   <%session.setAttribute("currentPage", 1); %>
 <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">购书网</a>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="index.jsp">首页</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">功能 <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                           
                            <li><a href="/MyDb/jsp/insert.jsp">添加数据</a></li>
                            <li><a href="/MyDb/MySer?status=dis&currentPage=1">修改数据</a></li>
                            <li class="divider"></li>
                            <li><a href="/MyDb/MySer?status=dis">删除数据</a></li>
                            <li><a href="/MyDb/MySer?status=CheckCart&user2=<%=session.getAttribute("user2")%>">查看订单</a></li>
                            <li><a href="res2.jsp">注册管理员</a></li>
                        </ul>
                       
                    </li>
                    <li><a href="#">帮助</a></li>
                </ul>
                <form action="/MyDb/MySer" class="navbar-form navbar-right" role="search">
                    <input type="text" name="name" class="form-control" placeholder="搜索">
                    <input type="hidden" name="status" value="serch">
                    <button type="submit" class="btn btn-default">搜索</button>
                </form>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
   <section class="admin_res">
      <h1 class="res_title">管理员注册界面</h1>
      <form action="LoginSer" class="res2">
         <div class="form-group">
	                <div class="input-group">
	                   <input type="text" class="form-control" name="username" placeholder="用户名">
	                </div>
                </div>
                
	            <div class="form-group">
	                <div class="input-group">
	                  <input type="password" class="form-control" name="password" placeholder="密码">
	                </div>
	            </div>

	            <input type="hidden" name="status" value="res2" >
	            <input type="submit" class=" res_btn btn btn-primary " value="确认注册并返回登陆界面"/>
      </form>
   </section>
     <div class="copyright">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <span>Copyright &copy; <a href="#">Evey Wong</a></span> |
                    <span>2016-2017</span>
                </div>
            </div>
        </div>
    </div>

    <script src=" http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
  </body>
</html>
