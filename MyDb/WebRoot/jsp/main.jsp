<%@page import="yznu.dbp"%>
<%@page import="yznu.Student"%>
<%@ page language="java" import="java.util.*,java.sql.*,yznu.*" pageEncoding="gb2312"%><!-- �޸� -->

<html>
  <head>
   <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>������-�û���ҳ</title>
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/main.css"> 
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
                            <li class="divider"></li>
                            
                            <li><a href="/MyDb/MySer?status=CheckCart&user2=<%=session.getAttribute("user2")%>">�鿴���ﳵ</a></li>
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
    <section class="content-wrap">
        <ul class="topmenu">
        <div class="toptitle">ȫ����Ʒ����</div>
        <li><a href="#">ͼ�顢���졢���ֲ�Ʒ</a><span></span>
            <div class="submenu">
                <div class="leftdiv">
                    <dl>
                        <dt><a href="#">������</a></dt>
                        <dd>
                            <a href="#">���</a><a href="#">С˵</a><a href="#">��־��ɹ�</a>
                            <a href="#">��ѧ</a><a href="#">����</a><a href="#">����VIP</a>   
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">��������</a></dt>
                        <dd>
                            <a href="#">ͨ������</a><a href="#">�ŵ�����</a><a href="#">ҡ��˵��</a>
                            <a href="#">��ʿ����</a><a href="#">�����ҥ</a><a href="#">��������</a>    
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">����</a></dt>
                        <dd>
                            <a href="#">����</a><a href="#">Ӱ��</a><a href="#">��������</a>
                            <a href="#">��Ϸ</a>  
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">����</a></dt>
                        <dd>
                            <a href="#">С˵</a><a href="#">��ѧ</a><a href="#">�ഺ��ѧ</a>
                            <a href="#">����</a><a href="#">����</a>    
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">�������</a></dt>
                        <dd>
                            <a href="#">��ʷ</a><a href="#">����ѧ</a><a href="#">���ξ���</a>
                            <a href="#">��ѧ�ż�</a><a href="#">��ѧ�ڽ�</a><a href="#">����ѧ</a>    
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">������־</a></dt>
                        <dd>
                            <a href="#">����</a><a href="#">������Ͷ��</a><a href="#">����</a>
                            <a href="#">��־��ɹ�</a>   
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">����</a></dt>
                        <dd>
                            <a href="#">�ҽ�������</a><a href="#">���ε�ͼ</a><a href="#">�����ʳ</a>
                            <a href="#">ʱ����ױ</a><a href="#">�Ҿ�</a><a href="#">����������</a> 
                            <a href="#">��������</a><a href="#">�����뱣��</a><a href="#">������Ĭ</a>
                            <a href="#">�����˶�</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">�Ƽ�</a></dt>
                        <dd>
                            <a href="#">����</a><a href="#">IT</a><a href="#">����</a>
                            <a href="#">ҽѧ</a><a href="#">��ҵ����</a><a href="#">����ͨ��</a>
                            <a href="#">ũ��</a><a href="#">��ѧ����Ȼ</a> 
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">�ٶ�</a></dt>
                        <dd>
                            <a href="#">�ٶ�</a><a href="#">0-2��</a><a href="#">3-6��</a>
                            <a href="#">7-10��</a><a href="#">11-14��</a> 
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">����</a></dt>
                        <dd>
                            <a href="#">�̲�</a><a href="#">��Сѧ�̸�</a><a href="#">����</a>
                            <a href="#">����ѧϰ</a>    
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">����</a></dt>
                        <dd>
                            <a href="#">Ӣ��ԭ����</a><a href="#">��̨ͼ��</a><a href="#">������</a>
                            <a href="#">��װ��</a><a href="#">��־�ڿ�</a> 
                        </dd>
                    </dl>

                </div>
                <div class="rightdiv">
                    <dl>
                        <dd><a href="#"><img src="img/2.jpg" width="194" height="70" title="\�ҵ�"></a></dd>
                        <dd><a href="#"><img src="img/2.jpg" width="194" height="70" title="\С�ҵ�"></a></dd>
                    </dl>
                    <dl>
                        <dt>�Ƽ�Ʒ��</dt>
                        <dd><a href="#">���Ĺٷ��콢��</a></dd>
                        <dd><a href="#">�ղ����콢��</a></dd>
                        <dd><a href="#">�����콢��</a></dd>
                        <dd><a href="#">�����콢��</a></dd>
                        <dd><a href="#">����ͳ˧�콢��</a></dd>
                        <dd><a href="#">С���콢��</a></dd>
                    </dl>
                </div>
            </div>
        
        </li>
        <li><a href="#">���õ���</a></li>
        <li><a href="#">�ֻ�������</a></li>
        <li><a href="#">���ԡ��칫</a></li>
        <li><a href="#">�Ҿӡ��Ҿߡ���װ������</a></li>
        <li><a href="#">�������¡��鱦����</a></li>
        <li><a href="#">������ױ</a></li>
        <li><a href="#">Ьѥ��������ӱ��ݳ�Ʒ</a></li>
        <li><a href="#">�˶�����</a></li>
        <li><a href="#">������Ʒ</a></li>
        <li><a href="#">ĸӤ���������</a></li>
        <li><a href="#">ʳƷ���ϡ����ࡢ����</a></li>
        <li><a href="#">Ӫ������</a></li>
        <li><a href="#">��Ʊ�����С���ֵ��Ʊ��</a></li>
    </ul>
                
    </section>
   
    <section>
        <div class="recommend clearfix">
         <%ArrayList<Student> students = (ArrayList<Student>) request.getAttribute("students");
				if(students!=null){
				for (int i = 0; i < students.size(); i++) {%>
                    <dl>
                      <dt><a href="servlet/BookSer?status=<%=students.get(i).getId()%>" ><img class="sub_img" src="<%=students.get(i).getImg() %>"></a></dt>
                      <dd>������<%=students.get(i).getBookName()%></dd>
                      <dd>�����磺<%=students.get(i).getPublish()%></dd>
                      <dd>�۸�<span class="price">&yen;<%=students.get(i).getPrice()%></span></dd>
                      <dd>ͼ���ţ�<%=students.get(i).getId()%></dd>  
                    </dl>
                    <%
                     }
                    }
                     %>
                    
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
