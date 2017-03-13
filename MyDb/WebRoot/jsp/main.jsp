<%@page import="yznu.dbp"%>
<%@page import="yznu.Student"%>
<%@ page language="java" import="java.util.*,java.sql.*,yznu.*" pageEncoding="gb2312"%><!-- 修改 -->

<html>
  <head>
   <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>购书网-用户主页</title>
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
                <a class="navbar-brand" href="#">购书网</a>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">首页</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">功能 <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li class="divider"></li>
                            
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
    <section class="content-wrap">
        <ul class="topmenu">
        <div class="toptitle">全部商品分类</div>
        <li><a href="#">图书、音响、数字产品</a><span></span>
            <div class="submenu">
                <div class="leftdiv">
                    <dl>
                        <dt><a href="#">电子书</a></dt>
                        <dd>
                            <a href="#">免费</a><a href="#">小说</a><a href="#">励志与成功</a>
                            <a href="#">文学</a><a href="#">经管</a><a href="#">畅读VIP</a>   
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">数字音乐</a></dt>
                        <dd>
                            <a href="#">通俗流行</a><a href="#">古典音乐</a><a href="#">摇滚说唱</a>
                            <a href="#">爵士蓝调</a><a href="#">乡村民谣</a><a href="#">有声读物</a>    
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">音像</a></dt>
                        <dd>
                            <a href="#">音乐</a><a href="#">影视</a><a href="#">教育音像</a>
                            <a href="#">游戏</a>  
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">文艺</a></dt>
                        <dd>
                            <a href="#">小说</a><a href="#">文学</a><a href="#">青春文学</a>
                            <a href="#">传记</a><a href="#">艺术</a>    
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">人文社科</a></dt>
                        <dd>
                            <a href="#">历史</a><a href="#">心理学</a><a href="#">政治军事</a>
                            <a href="#">国学古籍</a><a href="#">哲学宗教</a><a href="#">社会科学</a>    
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">经管励志</a></dt>
                        <dd>
                            <a href="#">经济</a><a href="#">金融与投资</a><a href="#">管理</a>
                            <a href="#">励志与成功</a>   
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">生活</a></dt>
                        <dd>
                            <a href="#">家教与育儿</a><a href="#">旅游地图</a><a href="#">烹饪美食</a>
                            <a href="#">时尚美妆</a><a href="#">家居</a><a href="#">婚恋与两性</a> 
                            <a href="#">娱乐休闲</a><a href="#">健身与保健</a><a href="#">动漫幽默</a>
                            <a href="#">体育运动</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">科技</a></dt>
                        <dd>
                            <a href="#">科普</a><a href="#">IT</a><a href="#">建筑</a>
                            <a href="#">医学</a><a href="#">工业技术</a><a href="#">电子通信</a>
                            <a href="#">农林</a><a href="#">科学与自然</a> 
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">少儿</a></dt>
                        <dd>
                            <a href="#">少儿</a><a href="#">0-2岁</a><a href="#">3-6岁</a>
                            <a href="#">7-10岁</a><a href="#">11-14岁</a> 
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">教育</a></dt>
                        <dd>
                            <a href="#">教材</a><a href="#">中小学教辅</a><a href="#">考试</a>
                            <a href="#">外语学习</a>    
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">其他</a></dt>
                        <dd>
                            <a href="#">英语原版书</a><a href="#">港台图书</a><a href="#">工具书</a>
                            <a href="#">套装书</a><a href="#">杂志期刊</a> 
                        </dd>
                    </dl>

                </div>
                <div class="rightdiv">
                    <dl>
                        <dd><a href="#"><img src="img/2.jpg" width="194" height="70" title="\家电"></a></dd>
                        <dd><a href="#"><img src="img/2.jpg" width="194" height="70" title="\小家电"></a></dd>
                    </dl>
                    <dl>
                        <dt>推荐品牌</dt>
                        <dd><a href="#">美的官方旗舰店</a></dd>
                        <dd><a href="#">苏泊尔旗舰店</a></dd>
                        <dd><a href="#">九阳旗舰店</a></dd>
                        <dd><a href="#">东菱旗舰店</a></dd>
                        <dd><a href="#">海尔统帅旗舰店</a></dd>
                        <dd><a href="#">小熊旗舰店</a></dd>
                    </dl>
                </div>
            </div>
        
        </li>
        <li><a href="#">家用电器</a></li>
        <li><a href="#">手机、数码</a></li>
        <li><a href="#">电脑、办公</a></li>
        <li><a href="#">家居、家具、家装、厨具</a></li>
        <li><a href="#">服饰内衣、珠宝首饰</a></li>
        <li><a href="#">个护化妆</a></li>
        <li><a href="#">鞋靴、箱包、钟表、奢侈品</a></li>
        <li><a href="#">运动户外</a></li>
        <li><a href="#">汽车用品</a></li>
        <li><a href="#">母婴、玩具乐器</a></li>
        <li><a href="#">食品饮料、酒类、生鲜</a></li>
        <li><a href="#">营养保健</a></li>
        <li><a href="#">彩票、旅行、充值、票务</a></li>
    </ul>
                
    </section>
   
    <section>
        <div class="recommend clearfix">
         <%ArrayList<Student> students = (ArrayList<Student>) request.getAttribute("students");
				if(students!=null){
				for (int i = 0; i < students.size(); i++) {%>
                    <dl>
                      <dt><a href="servlet/BookSer?status=<%=students.get(i).getId()%>" ><img class="sub_img" src="<%=students.get(i).getImg() %>"></a></dt>
                      <dd>书名：<%=students.get(i).getBookName()%></dd>
                      <dd>出版社：<%=students.get(i).getPublish()%></dd>
                      <dd>价格：<span class="price">&yen;<%=students.get(i).getPrice()%></span></dd>
                      <dd>图书编号：<%=students.get(i).getId()%></dd>  
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
