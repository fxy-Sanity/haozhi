<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 未登录前的头部----------- -->
<header class="header">
  <div class="container">
      <div class="navbar-header pull-left">
                 <a href="javascript:void(0);" class="navbar-brand">
            <img src="images/logo.png" class="img-responsive" alt="好知，howzhi.com">
         </a>
                <button class="navbar-toggle" data-target=".navbar-collapse" data-toggle="collapse" type="button">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
      </div>
      <nav class="collapse navbar-collapse pull-left">
        <ul class="nav navbar-nav topmenu">
          <li class="visible-xs">
            <a href="javascript:void(0);"><i class="fa fa-search mrm"></i>搜索</a>
          </li>
              
      <li class="">
  <a href="javascript:void(0);">学习中心 </a>
  </li>      
      <li class="nav-hover">
  <a href="javascript:void(0);">课程  <b class="caret"></b></a>
      <ul class="dropdown-menu" role="menu">
              <li><a href="javascript:void(0);">摄影课堂</a></li>
              <li><a href="javascript:void(0);">创意设计</a></li>
              <li><a href="javascript:void(0);">声乐器乐</a></li>
              <li><a href="javascript:void(0);">运动健身</a></li>
              <li><a href="javascript:void(0);">IT互联网</a></li>
              <li><a href="javascript:void(0);">兴趣爱好</a></li>
              <li><a href="javascript:void(0);">语言学习</a></li>
              <li><a href="javascript:void(0);">职场技能</a></li>
              <li><a href="javascript:void(0);">公开课</a></li>
          </ul>
  </li>      
      <li class="">
  <a href="javascript:void(0);">班级 </a>
  </li>      
      <li class="">
  <a href="javascript:void(0);">小组 </a>
  </li>  
        </ul>
        <div class="new-tips hz-triangle hidden-xs">
           “我的好知” 正式更名为 “<span class="t-primary">学习中心</span>”
           <div class="colse" id="hz-head-update" data-dismiss="alert">×</div>
           <i class="left"></i>
           <i class="right"></i>
        </div>
      </nav>
    <div class="pull-right user-nav clearfix">
                <ul class="nav nav-login">
            <li><a class="color-gray-one" href="javascript:void(0);">登录</a></li>
            <li><a href="javascript:void(0);">注册</a></li>
                            <li class="hidden-xs hzapp hidden-sm">
                  <a href="javascript:void(0);">
                    <small class="badge"> </small>
                    <i class="hz-icon icon-smartphone"></i>
                    好知APP
                  </a>
                </li>
                    </ul> 
              <form class="navbar-form pull-right hz-search hidden-xs" role="search" action="">
        <div class="form-group">
          <div id="search-left" class="pull-left search-left">
            <div class="search-type pull-left">
             <div class="choose" style="color:#666;font-size:14px;margin-top:3px;">课程<i style="color:#999;font-size:11px;margin-left:5px" class="glyphicon glyphicon-chevron-down"></i></div>
              <ul class="text-center" id="text-center" style="color:#999;">
                <li data-type="course">课程</li>
                <li data-type="discussion">话题</li>
                <li data-type="user">用户</li>
                <li data-type="group">小组</li>
              </ul>
            </div>
            <input class="form-control js-search" name="q" placeholder="输入要查找的内容" autocomplete="off">
          </div>
           <input name="t" value="course" type="hidden">
          <button style="color: #15C288; font-size:20px;margin-top:7px; border:none;background:#fff;width:50px;" class="glyphicon glyphicon-search" type="submit"></button>
        </div>
      </form>
    </div>
  </div>
</header>      