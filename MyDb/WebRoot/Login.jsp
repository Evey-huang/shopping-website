<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
   
    <title>登录</title>
    <link rel="stylesheet" type="text/css" href="css/login.css"> 
</head>
 <body class="login-page">
	
		<div class="login-block">
			<a href="#">
			   <img src="img/login.jpg" width="138px" height="100px" alt="">
			</a>
			<h1>登录五分钟，学习两小时</h1>
			
			<form action="LoginSer">
				<div class="form-group">
	                <div class="input-group">
	                   <input type="text" class="form-control" name="username" placeholder="用户名">
	                </div>
                </div>
                <hr class="hr-xs">
	            <div class="form-group">
	                <div class="input-group">
	                  <input type="password" class="form-control" name="password" placeholder="密码">
	                </div>
	            </div>
                <hr class="hr-xs">
                
                <input class="user" type="radio"  name="select" value="用户" checked="checked">用户&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input class="user" type="radio"  name="select" value="管理员">管理员
                
	            <input type="hidden" name="status" value="login" >
	            <input type="submit" class=" submit btn btn-primary btn-block" value="提交"/>
	            
	            <div class="login-links">
			        <a class="pull-left" href="#">忘记密码?</a>
			        <a class="pull-right" href="res.jsp">注册一个账号</a>
	            </div>
			</form> 
			
		</div>
</body>
</html>
