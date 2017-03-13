<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<html>
  <head>
   <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>图书管理系统</title>
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
                <div class="left">
                    <h1>漫长的中场休息</h1>
                    <a href="/MyDb/jsp/detail.jsp"><img  src="img/Book1.jpg"></a>
                </div> 
                <div class="right">
                    <p>作者: [美] 本&bull;方登 </p>
                    <p>出版社: 南海出版公司</p>
                    <p>原作名: Billy Lynn’s Long Halftime Walk</p>
                    <p>译者: 张晓意 </p>
                    <p>出版年: 2016-11-1</p>
                    <p>页数: 314</p>
                    <p>装帧: 精装</p>
                    <p>ISBN: 9787544285117</p>
                </div>
                <div class="intro">
                    <h3>简介</h3>
                    <p>《漫长的中场休息》是美国作家本•方登的长篇小说，也是李安电影《比利&bull;林恩的中场战事》原著。</p><br>
                    <p>比利&bull;林恩所在的B班士兵，在伊拉克赢得了一场3分43秒的短暂胜利。一夜间，他们成了美国的英雄。</p>
                    <p>每个人都说着“感谢你们”，记者、好莱坞导演蜂拥而至。他们甚至还被邀请参加超级碗的中场秀。</p>
                    <p>绚丽的烟花在耳边炸响，伴舞身上的亮片在身畔旋转，战争仿佛无比遥远。但有那么一刹那，比利觉得还是打仗好，总比被人当舞台布景挪来挪去爽多了。老天作证，打仗确实烂透了，可他实在看不出这种无聊的和平生活又有什么好的。</p>
                    <p>这一天，比利•林恩遭遇了人生中最大的挑战。</p> <br>
                    <p>《漫长的中场休息》一经出版便在《纽约时报》等各大媒体收获如潮好评，李安尚未读完便决定将它拍成电影。并获美国国家书评人奖，入选BBC本世纪必读12本小说。本&bull;方登通过一位参加伊拉克战争的19岁少年的眼睛，对战争和纸醉金迷的美国梦进行了辛辣有力的讽刺。正如比利•林恩自己所言，“这感觉其实很奇怪，为这辈子最糟糕的一天得到表彰”。</p>
                    <p>改编电影《比利•林恩的中场战事》中美同步上映，跻身奥斯卡夺奖热门，带你领略视觉奇迹。但无论技术如何革新，都无法胜过原著中宏大的人类精神、爱和真正的勇气。经过一番挣扎与救赎，一位年轻人终于在这世界上找到了自己的一席之地。</p>
                </div>
                <div class="recommend clearfix">
                   <h3 class="like">喜欢看《漫长的中场休息》的人也喜欢：</h3>
                    <dl>
                      <dt><a href="#" onclick="moreurl(this, {'total': 10, 'clicked': '26864983', 'pos': 0, 'identifier': 'book-rec-books'})"><img class="sub_img" src="img/Book2.jpg"></a></dt>
                      <dd><a href="#" onclick="moreurl(this, {'total': 10, 'clicked': '26864983', 'pos': 0, 'identifier': 'book-rec-books'})">我们仨</a></dd>
                    </dl>
                    <dl>
                      <dt><a href="#" onclick="moreurl(this, {'total': 10, 'clicked': '26864983', 'pos': 0, 'identifier': 'book-rec-books'})"><img class="sub_img" src="img/Book3.jpg"></a></dt>
                      <dd><a href="#" onclick="moreurl(this, {'total': 10, 'clicked': '26864983', 'pos': 0, 'identifier': 'book-rec-books'})">目送</a></dd>
                    </dl>
                    <dl>
                      <dt><a href="#" onclick="moreurl(this, {'total': 10, 'clicked': '26864983', 'pos': 0, 'identifier': 'book-rec-books'})"><img class="sub_img" src="img/Book4.jpg"></a></dt>
                      <dd><a href="#" onclick="moreurl(this, {'total': 10, 'clicked': '26864983', 'pos': 0, 'identifier': 'book-rec-books'})">红楼梦</a></dd>
                    </dl>
                    <dl>
                      <dt><a href="#" onclick="moreurl(this, {'total': 10, 'clicked': '26864983', 'pos': 0, 'identifier': 'book-rec-books'})"><img class="sub_img" src="img/Book5.jpg"></a></dt>
                      <dd><a href="#" onclick="moreurl(this, {'total': 10, 'clicked': '26864983', 'pos': 0, 'identifier': 'book-rec-books'})">老人与海</a></dd>
                    </dl>
                     <dl>
                      <dt><a href="#" onclick="moreurl(this, {'total': 10, 'clicked': '26864983', 'pos': 0, 'identifier': 'book-rec-books'})"><img class="sub_img" src="img/Book6.jpg"></a></dt>
                      <dd><a href="#" onclick="moreurl(this, {'total': 10, 'clicked': '26864983', 'pos': 0, 'identifier': 'book-rec-books'})">活着</a></dd>
                    </dl>
                    <dl>
                      <dt><a href="#" onclick="moreurl(this, {'total': 10, 'clicked': '26864983', 'pos': 0, 'identifier': 'book-rec-books'})"><img class="sub_img" src="img/Book7.jpg"></a></dt>
                      <dd><a href="#" onclick="moreurl(this, {'total': 10, 'clicked': '26864983', 'pos': 0, 'identifier': 'book-rec-books'})">围城</a></dd>
                    </dl>
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
