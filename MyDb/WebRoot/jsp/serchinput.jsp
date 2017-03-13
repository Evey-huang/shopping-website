<%@ page language="java" import="java.util.*,java.sql.*,yznu.*" pageEncoding="gb2312"%>

<html>
  <head>
   <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>购书网-查找图书</title>
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
       body {
            padding-top: 50px;

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
       
      
         .serch_page{
            margin-bottom: 130px;
            /*height:400px;*/
            
        }
        .serch_left{
            margin-left: 440px;
            margin-top:50px;
            display: inline-block;
        }
         .serch_info{
           float: right;
           margin-right: 560px;
           margin-top: -130px; 
        }

        .serch_img{
            width:107px;
            height: 154px;
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
                <a class="navbar-brand" href="#">购书网</a>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">首页</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">功能 <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="/MyDb/MySer?status=CheckCart&user2=<%=session.getAttribute("user2")%>">查看购物车</a></li>
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
    <section class="serch_page">
        <div class="content">
        <% ArrayList<Student> students = (ArrayList<Student>) request.getAttribute("students");
				if(students!=null){
				for (int i = 0; i < students.size(); i++) {%>
				<div class="serch_left">			
				   <h2><%=students.get(i).getBookName()%></h2>	
                   <img   class="serch_img" src="<%=students.get(i).getImg()%>">
                </div>
                <div class="serch_right">
						<div class="serch_info">
							<p>作者：<%=students.get(i).getName()%></p>
							<p>书名：<%=students.get(i).getBookName()%></p>
							<p>图书编号:<%=students.get(i).getId()%></p>
							<p>价格:&yen;<%=students.get(i).getPrice()%></p>
						</div>
						<%
							}
						}
						%>
			   </div>
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
