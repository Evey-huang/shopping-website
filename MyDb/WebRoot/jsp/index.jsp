<%@page import="yznu.dbp"%>
<%@page import="yznu.Student"%>
<%@ page language="java" import="java.util.*,java.sql.*,yznu.*" pageEncoding="gb2312"%><!-- �޸� -->

<html>
  <head>
   <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>������-����Ա��ҳ</title>
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/main.css"> 
    <style>
      .admin_index
      {
        margin:50px 0px 50px 500px;
      }
      .admin_index h1
      {
        
        padding-top:20px;
        font-size:30px;
      }
     
      .admin_index img
      {
         padding-top:30px;
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
                <a class="navbar-brand" href="#">������</a>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">��ҳ</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">���� <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                           
                            <li><a href="/MyDb/jsp/insert.jsp">���ͼ����Ϣ</a></li>
                            <li><a href="/MyDb/MySer?status=dis&currentPage=1">�޸�ͼ����Ϣ</a></li>
                            <li class="divider"></li>
                            <li><a href="/MyDb/MySer?status=dis">ɾ��ͼ����Ϣ</a></li>
                            <li><a href="/MyDb/MySer?status=CheckCart&user2=<%=session.getAttribute("user2")%>">�鿴����</a></li>
                            <li><a href="/MyDb/res2.jsp">ע�����Ա</a></li>
                        </ul>
                       
                    </li>
                    <li><a href="#">����</a></li>
                </ul>
                <form action="/MyDb/MySer" class="navbar-form navbar-right" role="search">
                    <input type="text" name="name" class="form-control" placeholder="����">
                    <input type="hidden" name="status" value="serch">
                    <button type="submit" class="btn btn-default">����</button>
                </form>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
   
  <div class="admin_index">
  <h1>��ӭ���빺��������Ա����</h1>
     <img src="img/Book1.jpg">
  </div>
   
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
