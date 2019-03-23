<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="initial-scale=1, maximum-scale=1, user-scalable=no">
<!-- Mimic Internet Explorer 7 -->
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />

<link rel="shortcut icon"
	href="//js.baletoo.cn/static/pc/images/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>statics/css/common.css" />

<script src="<%=basePath%>statics/js/jquery.js"></script>
<script src="<%=basePath%>statics/js/layui.js"></script>
<!--[if lt IE 9]>
    <script src="<%=basePath%>statics/js/json.js" charset="utf-8"></script>
    <![endif]-->
<script
	src="<%=basePath%>statics/js/b229366606cd4277bbed13e151a029f2.js"
	charset="utf-8"></script>
<script src="<%=basePath%>statics/js/sea.js"></script>
<script src="<%=basePath%>statics/js/retina.min.js"></script>
<script src="<%=basePath%>statics/js/login.js"></script>

</head>
<body>

	<!--选择城市弹层-->
	<div class="cityPop">
		<div class="popClose">
			<span><img src="<%=basePath%>statics/picture/close.png" /> </span>
		</div>
		<div class="cityPop_title">
			<h2>选择城市</h2>
			<ul>
				<li>热门城市：</li>
				<li><a id="navM2" mark="I2" href="#">北京</a></li>
				<li><a id="navM1" mark="I1" href="#">上海</a></li>
				<li><a id="navM2" mark="I2" href="#">广州</a></li>
				<li><a id="navM2" mark="I2" href="#">深圳</a></li>
			</ul>
		</div>
		<div class="cityPop_list">
			<ul>
				<li><span class="nameIcon">B</span> <a id="navM2" mark="I2"
					href="#">北京</a></li>
				<li><span class="nameIcon">C</span> <a id="navM2" mark="I2"
					href="#">成都</a> <a id="navM2" mark="I2" href="#">重庆</a>
				</li>
				<li><span class="nameIcon">D</span> <a id="navM2" mark="I2"
					href="#">大连</a></li>
				<li><span class="nameIcon">G</span> <a id="navM2" mark="I2"
					href="#">广州</a></li>
				<li><span class="nameIcon">H</span> <a id="navM2" mark="I2"
					href="#">杭州</a></li>
				<li><span class="nameIcon">N</span> <a id="navM2" mark="I2"
					href="#">南京</a></li>
			</ul>
			<ul>
				<li><span class="nameIcon">S</span> <a id="navM1" mark="I1"
					href="#">上海</a> <a id="navM2" mark="I2" href="#">深圳</a> <a
					id="navM2" mark="I2" href="#">苏州</a></li>
				<li><span class="nameIcon">T</span> <a id="navM2" mark="I2"
					href="#">天津</a></li>
				<li><span class="nameIcon">W</span> <a id="navM2" mark="I2"
					href="#">武汉</a></li>
				<li><span class="nameIcon">X</span> <a id="navM2" mark="I2"
					href="#">西安</a></li>
				<li><span class="nameIcon">Z</span> <a id="navM2" mark="I2"
					href="#">郑州</a></li>
			</ul>
		</div>
	</div>
	<div class="popfull"></div>
	<div class="header header-w">
		<div class="out">
			<h1 class="logo">
				<a href="/"> <img src="<%=basePath%>statics/picture/logo2x.png"
					title="上海巴乐兔租房" alt="上海巴乐兔租房"
					data-rjs="http://www.baletu.com/Public/logo/logo3x.png" /> </a>
			</h1>
			<div class="region" style="">
				<a href="javascript:void(0)"> <!-- <span class="icon icon-pos-white"></span> -->
					<span class="icon icon-down-white"></span> 上海 </a>
			</div>
			<div class="nav">
				<ul>
					<li><a id="navM3" mark="I3" href="<%=basePath%>index">首页</a>
						<div class="nav-line"></div>
					</li>
					<li><a id="navM4" mark="I4" href="<%=basePath%>zhaofang">立即找房</a>
						<div class="nav-line"></div>
					</li>
					<li><a id="navM6" mark="I6" href="<%=basePath%>createhouse">发布房源</a>
						<div class="nav-line"></div>
					</li>
					<li><a id="navM6" mark="I6" href="<%=basePath%>findsuble">找室友</a>
						<div class="nav-line"></div></li>

				</ul>
			</div>
			<div class="login-link login-link-new">
				<ul class="clearfix">
					<li><span class="icon_people_black"></span></li>
					<li><a id="navM8" mark="I8" href="<%=basePath%>register">注册</a>
					</li>
					<li><a id="navM7" mark="I7" href="<%=basePath%>login">登录</a>
					</li>
				</ul>
			</div>
		</div>
	</div>

	<script src="<%=basePath%>statics/js/header.js"></script>

	<link rel="stylesheet" href="<%=basePath%>statics/css/new_login.css">
	<style>
html {
	overflow-x: hidden;
	overflow-y: auto;
}
</style>
	<div class="banner">
		<div class="banner-ct out">
			<div class="login">
				<div class="login-left">
					<div class="login-tab">
				<h3
							id="psw-login-a" mark="密码登录" href="javascript:void(0)">密码登录</h3>
					</div>
					<div class="psw-login" style="display: show;">
						<!-- 密码登录 -->
						<form action="<%=basePath %>login/dologin"  method="post">
							<div class="login-inp">
								<div class="unit-inp">
									<input type="tel"  name="phone" id="phone"placeholder="手机号码/账户"
										maxlength="11" required="required"/>
								   <p id="yan" style="color:red;"></p>
								</div>
								<div class="unit-inp ">
									<input type="password" name="password" placeholder="请输入密码"
										required="required" class="enter2"/>
									<p class="prompt-text password_text"></p>
								</div>
						
							</div>
						
							<div class="center-box">
								<dd class="register">
									<a id="forget_psw" mark="忘记密码" href="<%=basePath%>wanji" class="link-red">忘记密码?</a>
								</dd>
							</div>
							<div class="center-box mt35">
								<input type="submit"  id = "denglu"value="登录" />
							</div>


						</form>
						<style>
						#denglu{
						height:55px;
						width:300px;
						background-color:#d62c37;
						border-radius:5px;
						}
						.login-right{
						   height:0px;
						}
						#login_index_zhuce{
						    margin-buttom:50px;
						}
						</style>
					</div>
				</div>
				<div class="login-right">
			
						<div class="regg">
							还没有账户: <a id="login_index_zhuce" mark="注册"
								href="<%=basePath%>register" class="link-red">立即注册&nbsp;<img
								src="<%=basePath%>statics/picture/jiantou.png"
								data-rjs="//js.baletoo.cn/static/pc/images/mac/login/jiantou@3.png"
								alt=""> </a>
						</div>
				</div>
			</div>
		</div>
	</div>


	<script>
		//       $(function(){
		//            $('.unit-inp input').click(function(){
		//                $('.unit-inp').addClass('prompt');
		//            })
		//        })

		var isRunning = false

		function dealTimerwater() {
			var timers = 60;
			var daoInterval = setInterval(function() {
				$("#sendBtn").html(--timers + "(s)");
				if (timers == 0) {
					clearInterval(daoInterval);
					$("#sendBtn").html("获取验证码");
					isRunning = false;
				}
			}, 1000);
		}

		function login() {//快速登录
			var formObj = document.forms['LoginForm'];
			// if($('#Instructions').is(':checked')==false){
			//     alert('请阅读并选中服务条款');
			//     return false;
			// }
			$.post('/login/login', $(formObj).serialize(), function(data) {
				var data = eval('(' + data + ')');
				if (data['code'] == 0) {
					ga('set', 'userId', data['user_id']);
					if (formObj['return_url'].value == '') {
						window.location.href = 'http://develop.baletoo.com';
					} else {
						window.location.href = formObj['return_url'].value;
					}
				} else {
					if (data['code'] == 1001) {
						$(".mobile_text").html(data['message']);
						$(".password_text").html('');
						$(".code_text").html('');

					} else if (data['code'] == 1002) {
						$(".mobile_text").html('');
						$(".password_text").html(data['message']);
						$(".code_text").html('');
					} else if (data['code'] == 1003) {
						$(".mobile_text").html('');
						$(".password_text").html('');
						$(".code_text").html(data['message']);
					}
				}
			});
		}

		function passwordlogin() {//密码登
			var formObj = document.forms['LoginForm1'];
			$.post('/login/passwordlogin', $(formObj).serialize(), function(
					data) {
				var data = eval('(' + data + ')');
				if (data['code'] == 0) {
					ga('set', 'userId', data['user_id']);
					if (formObj['return_url'].value == '') {
						window.location.href = 'http://develop.baletoo.com';
					} else {
						window.location.href = formObj['return_url'].value;
					}
				} else {
					if (data['code'] == 1001) {
						$(".mobile_text").html(data['message']);
						$(".password_text").html('');
						$(".code_text").html('');
					} else if (data['code'] == 1002) {
						$(".mobile_text").html('');
						$(".password_text").html(data['message']);
						$(".code_text").html('');
					} else if (data['code'] == 1003) {
						$(".mobile_text").html('');
						$(".password_text").html('');
						$(".code_text").html(data['message']);
					}
				}
			});
		}

		function sendVerifyCodeLogin(type) {
			//            if(isRunning){
			//                return false;
			//            }
			var formObj = document.forms['LoginForm'];
			var verify_image_code = document
					.getElementById('verify_image_code').value;
			formObj['image_code_name'].value = verify_image_code;
			formObj['type'].value = type;
			//            isRunning = true;
			$.post('/login/getVerifyCode', $(formObj).serialize(), function(
					data) {
				var data = eval('(' + data + ')');
				if (data['code'] == 0) {
					dealTimerwater();
					layer.closeAll();
					$(".mobile_text").html('');
					$(".password_text").html('');
					$(".code_text").html(data['message']);
					//跳转回原来的页面
				} else if (data['code'] == 1004 || data['code'] == 200000
						|| data['code'] == 200001 || data['code'] == 200002
						|| data['code'] == 200003) {
					$(".mobile_text").html('');
					$(".password_text").html('');
					$(".image_code_text").html(data['message']);
				} else {
					$(".mobile_text").html('');
					$(".password_text").html('');
					$(".code_text").html(data['message']);
					isRunning = false;
				}

			});
		}

		$('.enter1').keydown(function(e) {
			if (e.keyCode == 13) {
				login(); //处理事件
			}
		});
		$('.enter2').keydown(function(e) {
			if (e.keyCode == 13) {
				passwordlogin(); //处理事件
			}
		});
	</script>

	<link rel="stylesheet" href="<%=basePath%>statics/css/aliim.css">
	<script type="text/javascript" src="<%=basePath%>statics/js/common.js"></script>
	<script type="text/javascript" src="<%=basePath%>statics/js/popup.js"></script>
	<script type="text/javascript" src="<%=basePath%>statics/js/search.js"></script>
	<script src="<%=basePath%>statics/js/jquery.lazyload.js"></script>
	<script src="<%=basePath%>statics/js/aliim.js" type="text/javascript"></script>
	<script src="<%=basePath%>statics/js/wlog.js" charset="utf-8"></script>
	<jsp:include page="common/foot.jsp" />
	<script>
		var user_mobile_for_fankui = '';
		if (user_mobile_for_fankui == '') {
			user_mobile_for_fankui = '';
		}
		$(function() {
			$("img.lazy").lazyload({
				effect : "fadeIn"
			});
		});
		/*IM start*/
		var userIsLogin = 0;
		var imImgSrc = "//js.baletoo.cn" + "/static/pc/images/im";

		var imUId = 0;
		var imPas = 0;
		var imServiceId = 0;
		var imAppKey = 0;
		var imServiceName = 0;
		/*IM end*/
	</script>

	<script>
		seajs.use("monitor", function(mc) {
			mc.bindMonitor();
		});
	</script>

	<noscript>
		<div style="display:none;">
			<img height="1" width="1" style="border-style:none;" alt=""
				src="<%=basePath%>statics/picture/598cc9eda50b4f90a69add4212a66642.gif" />
		</div>
	</noscript>
</body>
</html>