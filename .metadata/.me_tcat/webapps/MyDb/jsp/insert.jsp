<%@ page language="java" import="java.util.*,java.sql.*,yznu.*" pageEncoding="gb2312"%>

<html>
  <head>
   <meta charset="gb2312">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>图书管理系统</title>
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            padding-top: 50px;

        }

        .progress {
            margin-top: 10px;
        }

        .nav-sidebar > .active > a,
        .nav-sidebar > .active > a:hover,
        .nav-sidebar > .active > a:focus {
            color: #fff;
            background-color: #428bca;
        }
        .copyright 
        {
          background: #111;
          font-size: 13px;
          text-align: center;
          color: #555555;
          padding-top: 15px;
          padding-bottom: 15px;
          border-top: 1px solid #303030;
        }
        
        .content-wrap{
            margin-bottom: 120px;
            height:410px;
        }
        .insert_page{
           margin-left: 370px;
           line-height: 30px;
           margin-top:50px;
        }
        
    </style>
  </head>
 <body> 
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
                <a class="navbar-brand" href="#">图书管理系统</a>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">首页</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">功能 <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            
                            <li><a href="/MyDb/jsp/insert.jsp">添加数据</a></li>
                            <li><a href="/MyDb/MySer?status=dis&currentPage=1">修改数据</a></li>
                            <li class="divider"></li>
                            <li><a href="/MyDb/MySer?status=dis">删除数据</a></li>
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
    <section class="content-wrap">
            <div class="content">
                <h1><center>添加图书信息</center></h1>
               <form action="/MyDb/MySer" >
                   <div class="insert_page">
                       <tr>
                           <td>ISBN</td>
                           <td><input type="text" name="id"></td> 
                       </tr>
                       
                        <tr>
                           <td>作者</td>
                           <td><input type="text" name="name"></td> 
                       </tr>
                       
                       <tr>
                           <td>书名</td>
                           <td><input type="text" name="bookname"></td>
                       </tr>
                       <input type="hidden" name="status" value="insert">
                       <input type="hidden" name="currentPage" value="${sessionScope.currentPage}"/>
                       <tr>
                           <td><input type="submit" name="tijiao" value="提交"></td>
                           <td><input type="submit" name="tijiao" value="重置"></td>
                      </tr>
                   </div> 
               </form>
            </div>
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
