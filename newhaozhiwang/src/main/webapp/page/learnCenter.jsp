<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html class="">

	<head>
		<base href="/newhaozhiwang/"/>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
		<title>学习中心</title>

		<link href="http://f1.howzhi.com/system/2016/03-31/113613d6a857327741.ico" rel="shortcut icon">
		<link href="css/bootstrap.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="css/howzhi.css">

		<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.js"></script>
		<script type="text/javascript" src="js/show.js"></script>
		<script type="text/javascript" src="js/top.js"></script>
		

		

		<style>
			.cke {
				visibility: hidden;
			}
		</style>

	</head>

	<body class="hzme">
		<!-------------------------我是头部------------------------------------------->
			<c:set value="${users}" var="us"/>
				<c:if test="${us==null }">
					<jsp:include page="topf.jsp"></jsp:include>
				</c:if>
				<c:if test="${us!=null }">
					<jsp:include page="topb.jsp"></jsp:include>
				</c:if>
		<!---------------------------------我是头部分隔线--------------------------------------------->

		<section class="p-home">
			<div class="container">
				<div class="personImg">
					<a class=" js-user-card" href="http://www.howzhi.com/u/2358987/" data-card-url="/user/2358987/card/show" data-user-id="2358987">
						<img class="img-responsive" src="images/avatar.png" alt="仗剑画江湖">
					</a>

					<!---------------------用户信息------------------------>
					<div class="user-info">
						<span class="user-name">仗剑画江湖</span>
						<p>“天气正好 ”</p>
					</div>
				</div>
				<ul class="clearfix">
					<li><span>学分</span><a class="count" href="javascript:void(0)">20</a></li>
					<li class="line"></li>
					<li><span>等级</span><a class="count" title="1级(20学分), 升级还需10学分!" href="javascript:void(0)">1</a></li>
					<li class="line"></li>
					<li><span>金币</span><a class="count" href="javascript:void(0)">0</a></li>
				</ul>
			</div>
		</section>

		<nav class="home-nav">
			<div class="container">
				<ul class="nav nav-mian">
					<li class=" active "><a href="page/learnCenter.jsp">首页</a></li>
					<li class=" "><a href="page/studying.jsp">在学</a></li>
					<li class=" "><a href="page/teaching.jsp"> 在教</a></li>
					<li class=""><a href="page/mygroups.jsp">小组</a></li>
					<li class=" "><a href="javascript:void(0)">好友</a></li>
					<li class=" "><a href="javascript:void(0)">笔记</a></li>
					<li class=" "><a href="javascript:void(0)">任务</a></li>
					<!--<li class="more dropdown" id="more-dropdown"> <a href="javascript:void(0)" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">更多<b class="caret"></b></a>
						<ul class="dropdown-menu" id="dropdown-menu" role="menu">
							<li class=" "><a href="javascript:void(0)">作业</a></li>
							<li class=" "><a href="javascript:void(0)">笔记</a></li>
							<li class=""><a href="javascript:void(0)">问答</a></li>
							<li class="  "><a href="javascript:void(0)">任务</a></li>
						</ul>
					</li>-->
				</ul>
			</div>
		</nav>
		<section class="container home">
			<div class="row">
				<!-----------------首页------------------>
				<div class="col-md-9" id="shouye">
					<div class="mestudying flat ">
						<h3>正在学习</h3>
						<div class="phl">
							<!--还没有正在学习的课程时的样式-->
							<!--<div class="empty"><i class="es-icon es-icon-locallibrary"></i>数千门有趣的课程正在等你发现，<a href="http://www.howzhi.com/courses">快去看看吧 &gt;&gt;</a></div>-->
							
							<!--有正在学习的课程时的样式-->
							<div class="clearfix studing-item ">
								<div class="study-img">
									<a href="http://www.howzhi.com/course/13339/">
										<img class="img-responsive" src="images/course01.jpg" 　alt="【古风人像】牛牛很忙教你打造穿越千年古风美人">
										<!--学习进度百分比-->
										<span class="load" style="width:0%"></span>
										<span class="pere text-center">0%</span>
									</a>
								</div>
								<div class="study-content">
									<h4><a href="http://www.howzhi.com/course/13339/">【古风人像】牛牛很忙教你打造穿越千年古风美人</a></h4>
								
									<p>2016-08-22学习至 <a href="http://www.howzhi.com/course/13339/lesson/83270" class="plm active">L1 【已结束】牛牛很忙教你打造穿越千年的古风美女 </a>
									</p>
								</div>
								<div class="study inter">
									<a href="http://www.howzhi.com/course/13339/">继续学习</a>
								</div>
							</div>
						</div>
					</div>

					<div class="f-movement">
						<h3>最新动态 
				          <a href="javascript:void(0)" class="active" id="studyactive">学习动态</a>
				          <a href="javascript:void(0)" id="friendactive">好友动态</a></h3>

						<!---------------------------------学习中心同学动态，从数据库中获取------------------------------------>
						<div id="studentactive" style="display: block;">
							<div class="publish-question home-out flat">
								<div class="f-img">
									<a class=" js-user-card" href="http://www.howzhi.com/u/2324024/" data-card-url="/user/2324024/card/show" data-user-id="2324024">
										<img class="avatar-mm " src="images/avatar.png" alt="叶子1975">
									</a>
								</div>
								<div class="f-left">
									<p class="f-name"><a href="http://www.howzhi.com/u/2324024/">叶子1975</a>
									</p>
									<p class="f-time pull-right">06-01</p>
									<p></p>
							
									<p class="f-con ">
										在<a href="http://www.howzhi.com/classroom/14">Adobe Lightroom cc后期基础入门班 </a>发表了话题
									</p>
								</div>
								<div class="f-content ff">
									<h4 class="title"><span class="topic-icon"></span><a href="http://www.howzhi.com/classroom/14/thread/485"> 新生报到</a>
							                </h4>
									<ul>
										<li>
											<span class="t-c">新生报到
							                      </span>
										</li>
									</ul>
								</div>
							</div>
							
							<!--------------------------------第二段重复----------------------------------------------->
							<div class="publish-question home-out flat">
								<div class="f-img">
									<a class=" js-user-card" href="http://www.howzhi.com/u/1501660/" data-card-url="/user/1501660/card/show" data-user-id="1501660">
										<img class="avatar-mm " src="images/avatar.png" alt="叉八仰">
									</a>
							
								</div>
								<div class="f-left">
									<p class="f-name"><a href="http://www.howzhi.com/u/1501660/">叉八仰</a> 在
										<a class=" text-primary" href="http://www.howzhi.com/classroom/6">
							                    互联网营销入门班
							                  </a>回复了话题
									</p>
									<p class="f-time pull-right">05-26</p>
									<p></p>
							
									<p class="f-con f-dark">
										"回复 @小肥羊150： 哈哈，碰到老熟人了。"
									</p>
								</div>
								<div class="f-content ff">
									<h4 class="title"><span class="topic-icon"></span><a href="http://www.howzhi.com/classroom/6/thread/190"> advice</a>
							                </h4>
									<ul>
										<li>
											<span class="t-c">不能是无水之源。只有水道没有水是不行的，有水了只有流出也是不行的，要不断的有分支汇入补充。滚滚长江东逝水，浪花淘尽英雄。...
							                    </span>
										</li>
									</ul>
								</div>
							</div>
							
							<div class="publish-question home-out flat">
								<div class="f-img">
									<a class=" js-user-card" href="http://www.howzhi.com/u/1501660/" data-card-url="/user/1501660/card/show" data-user-id="1501660">
										<img class="avatar-mm " src="images/avatar.png" alt="叉八仰">
									</a>
								</div>
								<div class="f-left">
									<p class="f-name"><a href="http://www.howzhi.com/u/1501660/">叉八仰</a> 在
										<a class=" text-primary" href="http://www.howzhi.com/classroom/6">
							                    互联网营销入门班
							                  </a>回复了话题
									</p>
									<p class="f-time pull-right">12-31</p>
									<p></p>
							
									<p class="f-con f-dark">
										"<img src="images/avatar.png" title="得意" alt="得意">"
									</p>
							
								</div>
								<div class="f-content ff">
									<h4 class="title"><span class="topic-icon"></span><a href="http://www.howzhi.com/classroom/6/thread/190"> advice</a>
							                </h4>
									<ul>
										<li>
											<span class="t-c">不能是无水之源。只有水道没有水是不行的，有水了只有流出也是不行的，要不断的有分支汇入补充。滚滚长江东逝水，浪花淘尽英雄。...
							                    </span>
										</li>
									</ul>
								</div>
							</div>
							
							<div class="publish-question home-out flat">
								<div class="f-img">
									<a class=" js-user-card" href="http://www.howzhi.com/u/1740750/" data-card-url="/user/1740750/card/show" data-user-id="1740750">
										<img class="avatar-mm " src="images/avatar.png" alt="就是兔子">
									</a>
							
								</div>
								<div class="f-left">
									<p class="f-name"><a href="http://www.howzhi.com/u/1740750/">就是兔子</a>
									</p>
									<p class="f-time pull-right">12-24</p>
									<p></p>
							
									<p class="f-con">
										在<a href="http://www.howzhi.com/classroom/14">Adobe Lightroom cc后期基础入门班 </a>回复了活动
									</p>
									要积极提交作业哦^^
							
								</div>
								<div class="f-content ff">
							
									<h4 class="title"><span class="huodong-icon">活</span><a href="http://www.howzhi.com/classroom/14/thread/253"> Lightroom cc课程作业一</a>
							                </h4>
									<ul>
										<li>
											<span class="t-c">同学们运用所学习的污点去除与构图裁切的相关知识对以下风光图片进行修改和处理。去掉画面上多余的人物和路灯，并对畸变进行调整突出建筑主体。...
							                                </span>
										</li>
									</ul>
								</div>
							</div>
							
							<div class="publish-question home-out flat">
								<div class="f-img">
									<a class=" js-user-card" href="http://www.howzhi.com/u/1350071/" data-card-url="/user/1350071/card/show" data-user-id="1350071">
										<img class="avatar-mm " src="images/avatar.png" alt="凝创摄影艺术中心">
										<span class="dapinpai-icon" title="达品牌"></span>
									</a>
							
								</div>
								<div class="f-left">
									<p class="f-name"><a href="http://www.howzhi.com/u/1350071/">凝创摄影艺术中心</a>
									</p>
									<p class="f-time pull-right">12-22</p>
									<p></p>
							
									<p class="f-con">
										在<a href="http://www.howzhi.com/classroom/14">Adobe Lightroom cc后期基础入门班 </a>创建了活动
									</p>
								</div>
								<div class="f-content ff">
									<h4 class="title"><span class="huodong-icon">活</span><a href="http://www.howzhi.com/classroom/14/thread/253"> Lightroom cc课程作业一</a>
							                </h4>
							
									<ul>
										<li>
											<span class="t-c">同学们运用所学习的污点去除与构图裁切的相关知识对以下风光图片进行修改和处理。去掉画面上多余的人物和路灯，并对畸变进行调整突出建筑主体。...
							                      </span>
										</li>
									</ul>
								</div>
							</div>
							
							<div class="publish-question home-out flat">
								<div class="f-img">
									<a class=" js-user-card" href="http://www.howzhi.com/u/1740750/" data-card-url="/user/1740750/card/show" data-user-id="1740750">
										<img class="avatar-mm " src="images/avatar.png" alt="就是兔子">
									</a>
							
								</div>
								<div class="f-left">
									<p class="f-name"><a href="http://www.howzhi.com/u/1740750/">就是兔子</a>
									</p>
									<p class="f-time pull-right">09-16</p>
									<p></p>
							
									<p class="f-con ">
										在<a href="http://www.howzhi.com/classroom/6">互联网营销入门班</a>发表了话题
									</p>
								</div>
								<div class="f-content ff">
									<h4 class="title"><span class="topic-icon"></span><a href="http://www.howzhi.com/classroom/6/thread/83"> 【使用指南】玩转好知班级</a>
							                </h4>
							
									<ul>
										<li>
											<span class="t-c">福音来啦！为了让每位来到班级的同学都能快速掌握班级课件等相关区域功能的使用，班班把相关问题都整理到下面，方便大家查看学习。1.如何听课（播放课件）？登录好知网（http://www.howzhi.co...
							                      </span>
										</li>
									</ul>
								</div>
							</div>
							
							</div>
						
						
						<!------------------------好友动态------------------------------------------------>
						<div id="friend" style="display:none;">
							<div class="publish-question home-out flat">
								<div class="f-img">
									<a class=" js-user-card" href="http://www.howzhi.com/u/5759/" data-card-url="/user/5759/card/show" data-user-id="5759">
										<img class="avatar-mm" src="images/person01.jpg" alt="知了">
										<span class="daren-icon" title="达人"></span>
									</a>
							
								</div>
								<div class="f-left">
									<p class="f-name">
										<a href="javascript:;">知了</a>
									</p>
									<p class="f-time pull-right">05-23</p>
									<p></p>
							
									<p class="f-con">开始学习课时 城市中的火山口（2）...</p>
								</div>
								<div class="f-content ff">
									<a href="http://www.howzhi.com/course/2730/" class="c-img">
										<img src="images/course02.jpg" class="img-responsive">
									</a>
							
									<div class="c-content">
										<a href="http://www.howzhi.com/course/2730/" class="c-title">AK：AE特效教程</a>
										<p>
											国外AE大神Andrew Kramer介绍许多酷炫特效的制作方法。注：17-21课为英文讲解，未翻译。...
										</p>
									</div>
								</div>
							</div>
							
							<div class="publish-question home-out flat">
								<div class="f-img">
									<a class=" js-user-card" href="http://www.howzhi.com/u/5759/" data-card-url="/user/5759/card/show" data-user-id="5759">
										<img class="avatar-mm" src="images/person01.jpg" alt="知了">
										<span class="daren-icon" title="达人"></span>
									</a>
							
								</div>
								<div class="f-left">
									<p class="f-name">
										<a href="javascript:;">知了</a>
									</p>
									<p class="f-time pull-right">05-05</p>
									<p></p>
							
									<p class="f-con">开始学习课时 摄影师风格养成...</p>
								</div>
								<div class="f-content ff">
									<a href="http://www.howzhi.com/course/9573/" class="c-img">
										<img src="images/course01.jpg" class="img-responsive">
									</a>
							
									<div class="c-content">
										<a href="http://www.howzhi.com/course/9573/" class="c-title">人像摄影高级教程</a>
										<p>
											由摄影师杨最醉主讲的人像摄影高级教程，从人像摄影器材到主题策划、光线捕捉、后期调色、磨皮等各个角度讲解。...
										</p>
									</div>
								</div>
							</div>
							
							<div class="publish-question home-out flat">
								<div class="f-img">
									<a class=" js-user-card" href="http://www.howzhi.com/u/5759/" data-card-url="/user/5759/card/show" data-user-id="5759">
										<img class="avatar-mm" src="images/person01.jpg" alt="知了">
										<span class="daren-icon" title="达人"></span>
									</a>
							
								</div>
								<div class="f-left">
									<p class="f-name">
										<a href="javascript:;">知了</a>
									</p>
									<p class="f-time pull-right">05-05</p>
									<p></p>
							
									<p class="f-con">开始学习课时 人像氛围</p>
								</div>
								<div class="f-content ff">
									<a href="http://www.howzhi.com/course/9573/" class="c-img">
										<img src="images/course09.jpg" class="img-responsive">
									</a>
							
									<div class="c-content">
										<a href="http://www.howzhi.com/course/9573/" class="c-title">人像摄影高级教程</a>
										<p>
											由摄影师杨最醉主讲的人像摄影高级教程，从人像摄影器材到主题策划、光线捕捉、后期调色、磨皮等各个角度讲解。...
										</p>
									</div>
								</div>
							</div>
										
						</div>
				
					</div>
							
				</div>
						
				
				
			
				<!-------------------------------右边每日签到,从数据库获取--------------------------------------------->
				<aside class="col-md-3 course-sidebar ss" id="qindao">
					<div class="flat hz-sign-in">
						<h3> 每日一拾</h3>
						
						<!----------------------未签到信息显示---------------------------->
						<div id="sign-no" style="">
							<div class="not-sign text-center ">
								<p class="t-gray">已连续拾到</p>
								<p>
									<font id="keep-nums">0</font>天</p>
							</div>
							<div class="has-sign" style="display:none;">
								<p>已连续拾到
									<font id="keep-num"></font>天</p>
								<p class="sentence"></p>
							</div>
							<div class="more-sign text-center">
								<a href="javascript:void(0);" id="tocheckin"><span class="calendar-icon t-dark mrm">24</span>拾到</a>
								<a href="javascript:void(0);" class="has-data" style="display:none;"><span class="calendar-icon t-dark mrm">24</span>已拾到</a>
							</div>

							<div class="share-out hz-share clearfix t-gray">
								<span class="pull-left">分享到：</span>

								<div class="dropdown-menu  js-social-share-params" data-title="每日一拾" data-summary="#好知每日一拾#生活只有在平淡无味的人看来才是空虚而平淡无味的。---车尔尼雪夫斯基" data-message="#好知每日一拾#生活只有在平淡无味的人看来才是空虚而平淡无味的。---车尔尼雪夫斯基" data-url="http://www.howzhi.com" data-picture="http://www.howzhi.com/assets/img/logo.png">
									<a href="javascript:void(0);" class="js-social-share weixin" data-cmd="weixin" title="分享到微信" data-share="weixin" data-qrcode-url="/common/qrcode?text=http%3A%2F%2Fwww.howzhi.com"><i class="es-icon es-icon-weixin"></i></a>
									<a href="javascript:void(0);" class="js-social-share weibo" data-cmd="tsina" title="分享到新浪微博" data-share="weibo"><i class="es-icon es-icon-weibo"></i></a>
								</div>

							</div>
						</div>
						
						<!----------------------已签到信息显示---------------------------->
						<div id="sign-in" style="display: none;">
							<div style="display: none;" class="not-sign text-center ">
								<p class="t-gray">已连续拾到</p>
								<p>
									<font id="keep-nums">0</font>天</p>
							</div>
							<div class="has-sign" style="">
								<p>已连续拾到
									<font id="keep-num">2</font>天</p>
								<p class="sentence">生活只有在平淡无味的人看来才是空虚而平淡无味的。<br>---车尔尼雪夫斯基</p>
							</div>
							<div class="more-sign text-center">
								<a style="display: none;" href="javascript:;" id="tocheckin"><span class="calendar-icon t-dark mrm">23</span>拾到</a>
								<a href="javascript:void(0);" class="has-data" style=""><span class="calendar-icon t-dark mrm">23</span>已拾到</a>
							</div>
							<div class="share-out hz-share clearfix t-gray">
								<span class="pull-left">分享到：</span>

								<div class="dropdown-menu  js-social-share-params" data-title="每日一拾" data-summary="#好知每日一拾#生活只有在平淡无味的人看来才是空虚而平淡无味的。---车尔尼雪夫斯基" data-message="#好知每日一拾#生活只有在平淡无味的人看来才是空虚而平淡无味的。---车尔尼雪夫斯基" data-url="http://www.howzhi.com" data-picture="http://www.howzhi.com/assets/img/logo.png">
									<a href="javascript:void(0);" class="js-social-share weixin" data-cmd="weixin" title="分享到微信" data-share="weixin" data-qrcode-url="/common/qrcode?text=http%3A%2F%2Fwww.howzhi.com"><i class="es-icon es-icon-weixin"></i></a>
									<a href="javascript:void(0);" class="js-social-share weibo" data-cmd="tsina" title="分享到新浪微博" data-share="weibo"><i class="es-icon es-icon-weibo"></i></a>
								</div>

							</div>
						</div>

						
						<div class="hz-ad flat">
							<!--这里插入要显示的班级图片，然后点击跳转到班级信息-->
							<a href="javascript:void(0)" target="_blank"><img src="images/block_picture.jpg" class="img-responsive" alt="小九入门班"></a>
						</div>
				</div>
<!--------------------------------任务信息------------------------------------------>
						<div class="flat task">
							<h3>今日任务</h3>
							<div class="empty">暂无新任务</div>
							<div class="more"><a href="javascript:void(0)"><i class="fa fa-angle-right"></i> >&nbsp;&nbsp;查看更多</a></div>
						</div>
						
<!--------------------------------访客信息------------------------------------------>
						<div class="flat person-visitor">
							<h3>最新来访<span class="count"></span></h3>
							<div class="empty">暂无访客！</div>
						</div>

				</aside>
			</div>
		</section>


<!----------------------------------------我是底部分割线------------------------------------------------>
		<jsp:include page="footer.jsp"></jsp:include>

	</body>

</html>