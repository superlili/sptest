<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<title>Spatial CrowdSourcing Application</title>


<link rel="shortcut icon" href="favicon.ico">
<link href="../static/frameworklib/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
<link href="../static/frameworklib/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
<link href="../static/frameworklib/css/animate.min.css" rel="stylesheet">
<link href="../static/frameworklib/css/style.min862f.css?v=4.1.0" rel="stylesheet">
</head>

<body class="fixed-sidebar full-height-layout gray-bg"
	style="overflow:hidden">
	<div id="wrapper">
		<!--左侧导航开始-->
		<nav class="navbar-default navbar-static-side" role="navigation">
			<div class="nav-close">
				<i class="fa fa-times-circle"></i>
			</div>
			<div class="sidebar-collapse">
				<ul class="nav" id="side-menu">
					<li class="nav-header">
						<div class="dropdown profile-element">
							<center><span>
							<img alt="image" src="../static/frameworklib/img/SC.png" height="90" width="90" /></span>
							<a data-toggle="dropdown" class="dropdown-toggle" href="#"> 
							<span
								class="clear"> 
								<span class="block m-t-xs"> 
								<strong	class="font-bold">Spatial CrowdSourcing</strong></span> 
							</span>
							</a>
							</center>
							<ul class="dropdown-menu animated fadeInRight m-t-xs">
								<li><a class="J_menuItem" href="profile.html">个人资料</a></li>
								<li><a class="J_menuItem" href="contacts.html">联系我们</a></li>
								<li><a class="J_menuItem" href="mailbox.html">联系信箱</a></li>
								<li class="divider"></li>
								<li><a href="user.html">安全退出</a></li>
							</ul>
						</div>
					</li>



                    <li><a class="J_menuItem" href="/jump/scmap">
					<i class="fa fa-globe"></i> <span class="nav-label">空间众包地图</span></a></li>

					<li><a class="J_menuItem" href="/jump/maplayeranalysis">
					<i class="fa fa-credit-card"></i> <span class="nav-label">空间服务查询</span></a></li>

					<li><a href="#"><i class="fa fa-pencil-square-o"></i>
						<span class="nav-label">空间信息查询</span> <!--<span class="fa arrow"></span>--></a>
						<ul class="nav nav-third-level">
							<li><a class="J_menuItem" href="/jump/CrowdsourcingLayerList">空间众包图层查询</a></li>
							<li><a class="J_menuItem" href="/jump/crowdworkermapquery">空间众包工人查询</a></li>
							<li><a class="J_menuItem" href="/jump/ch_drawqueryworker">选取区域众包工人</a></li>
							<li><a class="J_menuItem" href="/jump/ExperimentForDataDESCRIPT">基于格网查询工人</a></li>
							<li><a class="J_menuItem" href="/jump/queryworkerwithid">基于用户ID查询工人</a></li>
						</ul>
					</li>
					
					<li><a href="#"><i class="fa fa-thumbs-o-up"></i> 
						<span class="nav-label">空间分析功能</span></a>
						<ul class="nav nav-third-level">
							<li><a class="J_menuItem" href="routequery.html">空间众包路径分析</a></li>
							<li><a class="J_menuItem" href="/jump/pointbuffer">空间缓冲区分析</a></li>
							<li><a class="J_menuItem" href="PolygonContains.html">空间区域分析</a></li>
							<li><a class="J_menuItem" href="createcirclegraphic.html">添加GIS图形层</a></li>
						</ul>
					</li>

					<li><a class="J_menuItem" href="/jump/task_detail">
					<i class="fa fa-newspaper-o"></i> <span class="nav-label">空间任务大厅</span></a></li>

					<li><a href="#"><i class="fa fa-tasks"></i>
							<span class="nav-label">空间任务管理</span></a>
						<ul class="nav nav-third-level">
							<li><a class="J_menuItem" href="/Sctask/selectMyTasks">我发布的空间任务</a></li>
							<li><a class="J_menuItem" href="/jump/projects">待完成的空间任务</a></li>
						</ul>
					</li>

					<li><a href="#"><i class="fa fa-check"></i>
							<span class="nav-label">空间任务完成</span></a>
						<ul class="nav nav-third-level">
							<li><a class="J_menuItem" href="#">我发布并被完成的任务</a></li>
							<li><a class="J_menuItem" href="#">我接受并完成的任务</a></li>
						</ul>
					</li>

					<li><a href="#" target="_blank"><i class="fa fa-sign-in"></i> 
					    <span class="nav-label">众包系统管理</span></a>
					    
						<ul  class="nav nav-third-level">
						    <li><a href="user.html" target="_blank"><i class="fa fa-sign-in"></i> <span class="nav-label">用户登录</span></a></li>

							<li><a href="register.html" target="_blank"><i
									class="fa fa-credit-card"></i> <span class="nav-label">用户注册</span></a></li>
		
							<li><a href="#"><i class="fa fa-desktop"></i> <span
									class="nav-label">页面</span> <span class="fa arrow"></span></a>
						
							<li><a class="J_menuItem" href="contacts.html">联系人</a></li>
							<li><a class="J_menuItem" href="teams_board.html">团队管理</a></li>
							<li><a class="J_menuItem" href="clients.html">客户管理</a></li>
							<li><a class="J_menuItem" href="faq.html">常见问题</a></li>
							<li><a class="J_menuItem" href="search_results.html">搜索结果</a></li>
							<li><a class="J_menuItem" href="forum_main.html">论坛</a></li>
							<li><a class="J_menuItem" href="404.html">404页面</a></li>
							<li><a class="J_menuItem" href="500.html">500页面</a></li>
							<li><a class="J_menuItem" href="empty_page.html">空白页</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</nav>
		<!--左侧导航结束-->
		
		<!--右侧部分开始-->
		<div id="page-wrapper" class="gray-bg dashbard-1">
			<div class="row border-bottom">
				<nav class="navbar navbar-static-top" role="navigation"
					style="margin-bottom: 0">
					<div class="navbar-header">
						<a class="navbar-minimalize minimalize-styl-2 btn btn-primary "
							href="#"> <i class="fa fa-bars"></i>
						</a>
						<form role="search" class="navbar-form-custom" method="post"
							action="http://www.zi-han.net/theme/hplus/search_results.html">
							<div class="form-group">
								<input type="text" placeholder="请输入您需要查找的内容 …"
									class="form-control" name="top-search" id="top-search">
							</div>
						</form>
					</div>
					<ul class="nav navbar-top-links navbar-right">
						<li class="dropdown">
						<a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
						空间任务评价  <i class="fa fa-check-circle"></i>
						
							<ul class="dropdown-menu dropdown-messages">
								<li class="m-t-xs"><a href="projects.ftl" class="J_menuItem">
									<div class="dropdown-messages-box">
										<div class="media-body">
											<small class="pull-right">46小时前</small>											
											空气质量采集 <br> 
											<small class="text-muted">3天前 2014.11.8</small>
										</div>
									</div>
								</a></li>
								<li class="divider"></li>
								<li><a href="projects.ftl" class="J_menuItem">
									<div class="dropdown-messages-box">
										<div class="media-body ">
											<small class="pull-right text-navy">25小时前</small>											
											城市交通情况<br> <small
												class="text-muted">昨天</small>
										</div>
									</div>
								</a></li>
								<li class="divider"></li>
								<li>
									<div class="text-center link-block">
										<a class="J_menuItem" href="mailbox.html">
										<strong> 查看所有</strong>
										<i class="fa fa-angle-right"></i>
										</a>
									</div>
								</li>
							</ul></li>
							
							
						<li class="dropdown">
						<a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
						空间任务分配  <i class="fa fa-bell"></i>
						
							<ul class="dropdown-menu dropdown-alerts">
								<li><a href="projects.ftl" class="J_menuItem">
										<div>
											<i class="fa fa-male"></i> 5个基于工作者专业度<span
												class="pull-right text-muted small">4分钟前</span>
										</div>
								</a></li>
								<li class="divider"></li>
								<li><a href="profile.html" class="J_menuItem">
										<div>
											<i class="fa fa-map-marker"></i> 3个基于空间位置 <span
												class="pull-right text-muted small">12分钟前</span>
										</div>
								</a></li>
								<li class="divider"></li>
								<li>
									<div class="text-center link-block">
										<a class="J_menuItem" href="notifications.html"> <strong>查看所有
										</strong> <i class="fa fa-angle-right"></i>
										</a>
									</div>
								</li>
							</ul></li>
							
							
						<li class="hidden-xs">
						<a href="mail_compose.html" class="J_menuItem" data-index="0">
						<i class="fa fa-pencil-square-o"></i> 发布</a></li>
						
						<li class="dropdown hidden-xs">
						<a class="right-sidebar-toggle" aria-expanded="false">
						<i class="fa fa-tasks"></i> 主题</a></li>
					</ul>
				</nav>
			</div>
			<div class="row content-tabs">
				<button class="roll-nav roll-left J_tabLeft">
					<i class="fa fa-backward"></i>
				</button>
				<nav class="page-tabs J_menuTabs">
					<div class="page-tabs-content">
						<a href="javascript:;" class="active J_menuTab" data-id="index.html">首页</a>
					</div>
				</nav>
				<button class="roll-nav roll-right J_tabRight">
					<i class="fa fa-forward"></i>
				</button>
				<div class="btn-group roll-nav roll-right">
					<button class="dropdown J_tabClose" data-toggle="dropdown">关闭操作<span class="caret"></span>
					</button>
					<ul role="menu" class="dropdown-menu dropdown-menu-right">
						<li class="J_tabShowActive"><a>定位当前选项卡</a></li>
						<li class="divider"></li>
						<li class="J_tabCloseAll"><a>关闭全部选项卡</a></li>
						<li class="J_tabCloseOther"><a>关闭其他选项卡</a></li>
					</ul>
				</div>
				<a href="user.html" class="roll-nav roll-right J_tabExit"><i
					class="fa fa fa-sign-out"></i>退出</a>
			</div>
            <div class="row J_mainContent" id="content-main">
                <iframe class="J_iframe" name="iframe0" width="100%" height="100%"
						src="/jump/scmap" frameborder="0" data-id="index_v1.html" seamless></iframe>
						<!--src="scmap.ftl?v=4.0" frameborder="0" data-id="index_v1.html" seamless></iframe>-->
            </div>
			<div class="footer">
				<div class="pull-right">
					&copy;Yong SUN
				</div>
			</div>
		</div>
		
	</div>
	<script src="../static/frameworklib/js/jquery.min.js?v=2.1.4"></script>
	<script src="../static/frameworklib/js/bootstrap.min.js?v=3.3.6"></script>
	<script src="../static/frameworklib/js/plugins/metisMenu/jquery.metisMenu.js"></script>
	<script src="../static/frameworklib/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="../static/frameworklib/js/plugins/layer/layer.min.js"></script>
	<script src="../static/frameworklib/js/hplus.min.js?v=4.1.0"></script>
	<script type="text/javascript" src="../static/frameworklib/js/contabs.min.js"></script>
	<script src="../static/frameworklib/js/plugins/pace/pace.min.js"></script>
</body>
</html>
