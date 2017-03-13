<%@ page language="java" import="java.util.*,java.sql.*,yznu.*" pageEncoding="gb2312"%><!-- 修改 -->

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>购书网-图书详情页</title>
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" rel="stylesheet">
    
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	

  </head>
  <style>
  *
{
	margin: 0;
	padding: 0;
}

body
{
	font-size: 10pt;
	/*behavior:url(css/csshover.htc);兼容IE*/
}
    .book_pic
{
	margin: 100px 0px 100px 60px;
}

.book_info
{
	position: absolute;
	right: 50px;
	top:100px;
	width: 800px;
}

.book_info p
{

    font-size:20px;
}
.book_info h1
{
	font-weight: bold;
	font-size: 26px;
	padding-bottom: 30px;
}

.price
{
	color: red;
	font-size:30px;
}

.tips
{
    font-size:20px;
    padding-right:20px;
}

.addcart
{
   position: absolute;
   top:400px;
   left:500px;
  
   
   
}

.addcart input
{
   color:#fff;
    background:red;
   text-decoration:none
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
  </style>
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
    <section class="buycar">
   
    <% ArrayList<Student> students = (ArrayList<Student>) request.getAttribute("Student");%>
 		
 		 <form action="/MyDb/MySer">
        <div class="book_pic">
            <a href="#"><img src="<%=request.getContextPath()+"/"+students.get(0).getImg()%>"></a>
        </div>
        
         <div class="book_info">
            <h1><%=students.get(0).getBookName() %></h1>
           
            <p class="t1">作者：<%=students.get(0).getName() %></p>
            <p class="t1">出版社：<%=students.get(0).getPublish() %></p>
             <p>图书编号：<%=students.get(0).getId() %></p>
            <span class="tips">抢购价</span><span class="price">&yen;<%=students.get(0).getPrice()%></span> 
            
           
        </div> 
        <div>
	        <input type="hidden" name="status" value="addcart"/>
	        <a  class="addcart" href="/MyDb/MySer?status=addcart&&id=<%=students.get(0).getId()%>&name=<%=students.get(0).getName()%>&bookname=<%=students.get(0).getBookName()%>&price=<%=students.get(0).getPrice()%>">加入购物车</a>
        </div>
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
