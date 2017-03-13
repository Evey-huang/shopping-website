<%@ page language="java" import="java.util.*,java.sql.*,yznu.*" pageEncoding="gb2312"%>
<%@ page contentType="text/html;charset=gb2312" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>购书网-删除图书信息</title>
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
        
        .dis-wrap{
            margin-bottom: 120px;
            height:410px;
        }
        .content{
        width:650px;
        margin:0 auto;
        }
        
        form{
          width: 600px;
          margin: 0 auto;
        }
        h1{
          padding-top: 90px;
        }
        
        .pre{
       padding-left:400;
        }
        .next{
       padding-left:350;
        }
        
    </style>
<html>
  <body>
  <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <a class="navbar-brand" href="#">购书网</a>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="/MyDb/jsp/main.jsp">首页</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">功能 <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="/MyDb/jsp/insert.jsp">添加图书信息</a></li>
                            <li><a href="/MyDb/MySer?status=dis&currentPage=1">修改图书信息</a></li>
                            <li class="divider"></li>
                            <li><a href="/MyDb/MySer?status=dis">删除图书信息</a></li>
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
     <section class="dis-wrap">
         <div class="content">
             <h1><center>图书信息</center></h1>
		     <table class="table table-bordered">   
	              <tr>
	                <td class="active">ISBN</td>
	                <td class="success">作者</td>
	                <td class="warning">书名</td>
	                <td class="warning">价格</td>
	                <td class="danger">修改</td>
	                <td class="info">删除</td> 
	              </tr>                 
		<%	ArrayList<Student> students = (ArrayList) request.getAttribute("students");
			if(students!=null){
			for (int i = 0; i < students.size(); i++) {%>
					<tr>
						<td class="active"><%=students.get(i).getId()%></td>
						<td class="success"><%=students.get(i).getName()%></td>
						<td class="warning"><%=students.get(i).getBookName()%></td>
						<td class="warning"><%=students.get(i).getPrice()%></td>
					    <td class="danger"><a href="/MyDb/jsp/updateStudent.jsp?id=<%=students.get(i).getId()%>&name=<%=students.get(i).getName()%>&bookname=<%=students.get(i).getBookName()%>&price=<%=students.get(i).getPrice()%>&currentPage=${sessionScope.currentPage}">修改</a></td>
						<td class="info"><a href="/MyDb/MySer?id=<%=students.get(i).getId()%>&status=deleteStudent&currentPage=${sessionScope.currentPage}">删除</a></td>
					</tr>
					<%
						}
					}
					%>
				</table>
				  
					<c:choose>
						<c:when test="${sessionScope.currentPage==1}">
							上一页
						</c:when>
						<c:otherwise>
							<a  class="pre" href="/MyDb/MySer?status=dis&currentPage=${sessionScope.currentPage-1}">上一页</a>
						</c:otherwise>
		            </c:choose>
		            <c:choose>
						<c:when test="${sessionScope.currentPage==sessionScope.countPage}">
							下一页 
						</c:when>
						<c:otherwise>
							<a class="next" href="/MyDb/MySer?status=dis&currentPage=${sessionScope.currentPage+1}">下一页 </a>
						</c:otherwise>
					</c:choose>
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
