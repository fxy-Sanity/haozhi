<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html class="">

	<head>
		<base href="/newhaozhiwang/"/>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
		<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
		<meta name="renderer" content="webkit">
		<meta name="baidu-site-verification" content="XN2OVFQdUg">
		<title>搜索 - 好知网</title>
		<meta name="keywords" content="好知网 ">
		<meta name="description" content="科学学英语从0开始学英语看美剧学英语英语培训机构排名微英语我要学英语">
		<meta content="db7d9096b73f6e0f7498c76a0f86305f45595aa6" name="csrf-token">
		<meta content="1" name="is-login">
		<meta content="1" name="is-open">

		<link href="http://f1.howzhi.com/system/2016/03-31/113613d6a857327741.ico" rel="shortcut icon">

		<link href="css/bootstrap.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="css/howzhi.css">
		<link rel="stylesheet" type="text/css" href="css/main.css">
		<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.js"></script>


		<style>
			.cke {
				visibility: hidden;
			}
		</style>
	</head>

	<body class="group-page">
		<!-------------------------我是头部------------------------------------------->
		<c:set value="${users}" var="us"/>
			<c:if test="${us==null }">
				<jsp:include page="topf.jsp"></jsp:include>
			</c:if>
			<c:if test="${us!=null }">
				<jsp:include page="topb.jsp"></jsp:include>
			</c:if>
		<!-------------------------我是头部分割线------------------------------------------->
		
		<div class="container" id="content-container">
			<div class="panel panel-default panel-lg group-all">
				<div class="panel-heading">

					<div class="row">
						<div class="col-sm-8">
							<h1>小组搜索</h1></div>
						<div class="col-sm-4">
							<form class="form-inline pull-right" id="form_group_search" action="/group/search_group" method="get">
								<div class="form-group">
									<div class="input-group group-search">
										<input class="form-control" placeholder="小组搜索" name="keyWord" value="英语" type="text">
										<input class="form-control" name="categoryId" value="" type="hidden">
										<span class="input-group-btn">
								            <button class="btn btn-default" type="submit">
								                <span class="glyphicon glyphicon-search"></span>
											</button>
										</span>
									</div>
								</div>
							</form>
						</div>
					</div>

				</div>

				<div class="panel-body">
					<div class="nav inline">
						<a class="active" href="javascript:;">全部</a>
						<a href="javascript:;" data-target="photography" data-id="1">摄影课堂</a>
						<a href="javascript:;" data-target="creative-design" data-id="204">创意设计</a>
						<a href="javascript:;" data-target="music-school" data-id="205">声乐器乐</a>
						<a href="javascript:;" data-target="exercise-fitness" data-id="206">运动健身</a>
						<a href="javascript:;" data-target="IT-internet" data-id="222">IT互联网</a>
						<a href="javascript:;" data-target="programme" data-id="151">编程</a>
						<a href="javascript:;" data-target="interest" data-id="9">兴趣爱好</a>
						<a href="javascript:;" data-target="computer" data-id="155">电脑</a>
						<a href="javascript:;" data-target="language" data-id="10">语言学习</a>
						<a href="javascript:;" data-target="life" data-id="8">生活</a>
						<a href="javascript:;" data-target="career" data-id="178">职场技能</a>
						<a href="javascript:;" data-target="culture" data-id="173">文化</a>
						<a href="javascript:;" data-target="openclass" data-id="4">公开课</a>
					</div>
					
					<!--关键字查询，小组为空时（没有查询到信息）-->
					<div class="row" style="display: none;">
            			<div class="empty">暂无小组信息</div>
            		</div>
            		
            		<!--关键字查询，有相关小组信息时-->
					<div class="row" >
						<div class="col-md-3">
							<div class="media group-media group-media-sm">
								<a href="http://www.howzhi.com/group/349/" title="科学学英语" class="pull-left">
									<img src="images/105050a0ca1c653470.jpg" alt="科学学英语" class="media-object">
								</a>
								<div class="media-body">
									<p>
										<a href="http://www.howzhi.com/group/349/" title="科学学英语">科学学英语</a>
									</p>
									<div class="text-muted text-normal">
										150个成员&nbsp; 1362个话题
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="media group-media group-media-sm">
								<a href="http://www.howzhi.com/group/220/" title="从0开始学英语" class="pull-left">
									<img src="images/155439f3b7d4729628.jpg" alt="从0开始学英语" class="media-object">
								</a>
								<div class="media-body">
									<p>
										<a href="http://www.howzhi.com/group/220/" title="从0开始学英语">从0开始学英语</a>
									</p>
									<div class="text-muted text-normal">
										193个成员&nbsp; 1405个话题
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="media group-media group-media-sm">
								<a href="http://www.howzhi.com/group/219/" title="看美剧学英语" class="pull-left">
									<img src="images/165954a2f0ba918446.jpg" alt="看美剧学英语" class="media-object">
								</a>
								<div class="media-body">
									<p>
										<a href="http://www.howzhi.com/group/219/" title="看美剧学英语">看美剧学英语</a>
									</p>
									<div class="text-muted text-normal">
										306个成员&nbsp; 1417个话题
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="media group-media group-media-sm">
								<a href="http://www.howzhi.com/group/218/" title="英语培训机构排名" class="pull-left">
									<img src="images/2312099204d9984069.jpg" alt="英语培训机构排名" class="media-object">
								</a>
								<div class="media-body">
									<p>
										<a href="http://www.howzhi.com/group/218/" title="英语培训机构排名">英语培训机构排名</a>
									</p>
									<div class="text-muted text-normal">
										81个成员&nbsp; 2995个话题
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="media group-media group-media-sm">
								<a href="http://www.howzhi.com/group/161/" title="微英语" class="pull-left">
									<img src="images/220322a3adc0705905.jpg" alt="微英语" class="media-object">
								</a>
								<div class="media-body">
									<p>
										<a href="http://www.howzhi.com/group/161/" title="微英语">微英语</a>
									</p>
									<div class="text-muted text-normal">
										289个成员&nbsp; 2968个话题
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="media group-media group-media-sm">
								<a href="http://www.howzhi.com/group/154/" title="我要学英语" class="pull-left">
									<img src="images/01460088969f639218.jpg" alt="我要学英语" class="media-object">
								</a>
								<div class="media-body">
									<p>
										<a href="http://www.howzhi.com/group/154/" title="我要学英语">我要学英语</a>
									</p>
									<div class="text-muted text-normal">
										492个成员&nbsp; 1371个话题
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>

		</div>

		
		<!---------------------------------------我是底部分割线------------------------------------------------------>
		<jsp:include page="footer.jsp"></jsp:include>
		

	</body>

</html>