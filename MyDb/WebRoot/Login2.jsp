<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
   
    <title>��¼</title>
    <link rel="stylesheet" type="text/css" href="css/login.css"> 
</head>
 <body class="login-page">
	
		<div class="login-block">
			<a href="#">
			   <img src="img/login.jpg" width="138px" height="100px" alt="">
			</a>
			<h1>��¼����ӣ�ѧϰ��Сʱ</h1>
			
			<form action="LoginSer">
				<div class="form-group">
	                <div class="input-group">
	                   <input type="text" class="form-control" name="username" placeholder="�û���">
	                </div>
                </div>
                <hr class="hr-xs">
	            <div class="form-group">
	                <div class="input-group">
	                  <input type="password" class="form-control" name="password" placeholder="����">
	                </div>
	            </div>
                <hr class="hr-xs">
                
                <input class="user" type="radio"  name="select" value="�û�" checked="checked">�û�&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input class="user" type="radio"  name="select" value="����Ա">����Ա
                
	            <input type="hidden" name="status" value="login" >
	            <input type="submit" class=" submit btn btn-primary btn-block" value="�ύ"/>
	            
	            <div class="login-links">
			        <a class="pull-left" href="#">��������?</a>
			        <a class="pull-right" href="res.jsp">ע��һ���˺�</a>
	            </div>
			</form> 
			
		</div>
</body>
</html>
