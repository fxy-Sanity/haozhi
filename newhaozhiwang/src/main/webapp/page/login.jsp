<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!Doctype html>
<html>
<head>
<meta charset="utf-8">

<title>登录</title>
<script type="text/javascript" src="../js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
<script type="text/javascript" src="../js/register.js"></script>
<script src="../js/top.js"></script>
<link rel="stylesheet" type="text/css" href="../css/howzhi.css">
<link type="text/css" rel="stylesheet" href="../css/bootstrap.min.css" />
<style type="text/css">
	*{
		padding:0px;
		margin:0px auto;
		}
	#header{
		height:100px;
		width:100%;
		}
	#body{
		padding-top:50px;
		height:773px;
		width:100%;
		background: rgba(0, 0, 0, 0) url("../images/login_bg.jpg") no-repeat scroll center top;
		background-size:cover;
	}
	
	#body #login-box{
		width:380px;
		height:400px;
		background-color:#FFF;
		margin-right:120px;
		
		}
	#body #login-in,#register-in{
		width:300px;
		height:400px;
		margin-left:30px;
		}
	#body #register-box{
		width:380px;
		height:500px;
		background-color:#FFF;
		margin-right:120px;
		display:none;
		}
	#body #login-box #login_password,#register-box #register_password{
		width:300px;
		height:45px;
		margin-top:20px;
		margin-bottom:20px;
		
	}
	#body #login-box #login_username,#register-box #register_username{
		width:300px;
		height:45px;
		
	}
	
	#register_eamil{
		width:300px;
		height:45px;
		margin-bottom:20px;
		}
	#body #login-box #submit{
		width:300px;
		height:44px;
		background-color:#0C9;
		color:#FFF;
		font-size:17px;
		margin-top:10px;
	}
	h3{
		padding-top:50px;
		}
	h3 a {
		color:#0C9;
		font-size:20px;
		text-decoration:none;
		}
	h3 .register{
		margin-left:100px;
		}
	h3 .registericon{
		margin-left:5px;
		}
	#register-in h3 .register{
		margin-left:80px;
		}
	#foot{
		height:200px;
		width:100%;
		}
	i{
		float:left;
		}
	a:hover{
		color:#0F9;
		text-decoration:none;
		}
</style>
</head>

<body>
    <!-- <div id="header">
    
    </div> -->
    <jsp:include page="top.jsp" />
    
    <div id="body">
    	<div id="login-box">
        	<div id="login-in">
            	<h3>登录好知<a class="register" href="javascript:void(0)" onClick="register()">注册</a><a  class="registericon" href="javascript:void(0)" onClick="register()">
                <span class="glyphicon glyphicon-circle-arrow-right"></span>
                </a></h3><br>
                <div class="conten"> 
                    <form method="" action="">
                        <input id="login_username" class="form-control" type="text" placeholder="邮箱/手机/用户名" required value="" name="username" >
                        <input id="login_password" class="form-control" type="password" placeholder="密码" required value="" name="password" >
                         <div class="controls"> 
                            <label id="remember_me"><input name="_remember_me" checked="checked" type="checkbox">记住密码</label>
                            <a class="pull-right active" href="#">忘记密码</a>
                         </div>
                        <button id="submit" type="submit" class="btn btn-default">登录</button>
                    </form>
            	</div>
           </div>
    </div>
    
    <div id="register-box">
        	<div id="register-in">
            	<h3>注册好知账号<a class="register" href="javascript:void(0)" onClick="login()">登录</a><a  class="registericon" href="javascript:void(0)" onClick="login()">
                <span class="glyphicon glyphicon-circle-arrow-right"></span>
                </a><i class="fa fa-arrow-circle-o-right"></i></h3><br>
                <div class="conten"> 
                    <form method="" action="">
                        <input id="register_eamil" class="form-control" type="email" placeholder="常用邮箱" required value="" name="email" >
                        <input id="register_username" class="form-control" type="text" placeholder="请输入昵称" required value="" name="username" >
                        <input id="register_password" class="form-control" type="password" placeholder="密码" required value="" name="password" >
                        <div class="form-group mb40 captcha_div">
        					<div class="controls row">
         						<div class="col-xs-6">
            						<input data-explain="" data-widget-cid="widget-1" class="form-control ident" id="captcha_num" name="captcha_num" maxlength="5" placeholder="验证码" required data-url="/register/captcha/check" type="text">
          						</div>
                                <div class="col-xs-6 ident-img"> <img src="/0.jpg" data-url="/captcha_num/0" id="getcode_numxxx" title="看不清，点击换一张" style="cursor:pointer;" alt="看不清，点击换一张"> </div>
          						<div class="help-block" style="display:none;"></div>
        					</div>
      					</div>
                        
                        <div class="form-group mb40 agren">
        					<div class="controls">
         						<label><input data-explain="" data-widget-cid="widget-5" id="user_terms" checked="checked" type="checkbox">我已阅读并同意
                                <a href="#" target="_blank">《服务协议》</a> </label>
          						<div class="help-block" style="display:none;"></div>
       						</div>
     					</div>
                        <button id="submit" type="submit" class="btn btn-default">注册</button>
                    </form>
            	</div>
           </div>
    		
        </div>
    </div>
    
    <div id="foot">
    
    </div>
</body>
</html>