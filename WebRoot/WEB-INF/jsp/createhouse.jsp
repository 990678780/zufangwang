<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	src="<%=basePath%>statics/js/72bea972878b42448b5f8b10ec90df76.js"
	charset="utf-8"></script>
<script src="<%=basePath%>statics/js/sea.js"></script>
<script src="<%=basePath%>statics/js/retina.min.js"></script>

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
	<div class="header header-r">
		<div class="out">
			<h1 class="logo">
				<a href="/"> <img src="<%=basePath%>statics/picture/logo2x.png"
					title="上海巴乐兔租房" alt="上海巴乐兔租房"
					data-rjs="http://www.baletu.com/Public/logo/logo3x.png" /> </a>
			</h1>
			<div class="region" style="">
				<a href="javascript:void(0)"> <!-- <span class="icon icon-pos-grey"></span> -->
					<span class="icon icon-down-white"></span> 上海 </a>
			</div>
			<div class="nav">
				<ul>
					<li><a id="navM3" mark="I3" href="<%=basePath%>index">首页</a>
						<div class="nav-line"></div></li>
					<li><a id="navM4" mark="I4" href="<%=basePath%>zhaofang">立即找房</a>
						<div class="nav-line"></div></li>
					<li class="active"><a id="navM6" mark="I6"
						href="<%=basePath%>createhouse">发布房源</a>
						<div class="nav-line"></div></li>
					<li><a id="navM6" mark="I6" href="<%=basePath%>findsuble/index">找室友</a></a>
						<div class="nav-line">
					</li>
				</ul>
			</div>
			<div class="login-link login-link-new">
				<c:if test="${empty user}">
                    <ul class="clearfix">
                        <li><span class="icon_people_black"></span>
                        </li>
                        <li><a id="navM8" mark="I8" href="<%=basePath%>register">注册</a>
                        </li>
                        <li><a id="navM7" mark="I7" href="<%=basePath%>login">登录</a>
                        </li>
                    </ul>
                </c:if>
                <c:if test="${!empty user}">
                    <c:if test="${!empty user.name}">
                    ${user.name},欢迎您
                </c:if>
                    <c:if test="${empty user.name}">
                    ${user.phone},欢迎您
                </c:if>
                </c:if>
			</div>
		</div>
	</div>

	<script src="<%=basePath%>statics/js/header.js"></script>

	<style type="text/css">
</style>
	<link rel="stylesheet" href="<%=basePath%>statics/css/createhouse.css">
	<script src="<%=basePath%>statics/js/wlog.js" charset="utf-8"></script>
	<script>
    var img_down="//js.baletoo.cn/static/pc/images/city_select.png";
    var img_up="//js.baletoo.cn/static/pc/images/city_select_up.png";
</script>
	<!--选择城市-->
	<div class="popSelect">
		<div class="popClose">
			<span><img src="<%=basePath%>statics/picture/close.png" /> </span>
		</div>
		<div class="cityPop_title">
			<h2>选择城市</h2>
		</div>
		<ul class="popSelect_city">
			<li value="上海市">上海市</li>
			<li value="北京市">北京市</li>
			<li value="深圳市">深圳市</li>
			<li value="杭州市">杭州市</li>
			<li value="南京市">南京市</li>
			<li value="苏州市">苏州市</li>
			<li value="广州市">广州市</li>
			<li value="成都市">成都市</li>
			<li value="大连市">大连市</li>
			<li value="天津市">天津市</li>
			<li value="重庆市">重庆市</li>
			<li value="武汉市">武汉市</li>
			<li value="西安市">西安市</li>
			<li value="郑州市">郑州市</li>
		</ul>
	</div>
	<div class="popfull"></div>
	<!--选择城市 end-->
	<div class="creat_pc">
		<div>
			<img src="<%=basePath%>statics/picture/createhouse_img.png"
				data-rjs="//js.baletoo.cn/static/pc/images/mac/createhouse/createhouse_img2@3x.png">
		</div>
		<div class="fabu_btn">
			<span>马上发布</span>
		</div>
	</div>
	<div class="main out">
		<div class="title">
			<h1>
				填写您的基本信息，<span>巴乐兔</span>工作人员会尽快与您联系确认
			</h1>
		</div>
		<div class="content-xingxi" style="height: 300px">
			<form name="myform" action="" onsubmit="return fafangConfirm(this)"
				; enctype="">
				<table cellspacing="25" align="center">
					<tr>
						<td style="height: 40px;"><label for="txtname"
							class="label_font">姓 &nbsp&nbsp名</label></td>
						<td><input type="text" id="name" name="name"
							class="unit-inp-border" /></td>
					</tr>

					<tr>
						<td style="height: 40px;"><label for="txt" class="label_font">性
								&nbsp&nbsp别</label></td>
						<td>
							<div class="select_item ">
								<div class="select_result unit-inp-border">
									<input id="sex_choose" autocomplete="off" name="gender"
										id="gender" readonly="readonly">
									<div class="triangle " id="sex">
										<img id="sex"
											src="<%=basePath%>statics/picture/city_select.png"
											data-rjs="//js.baletoo.cn/static/pc/images/mac/createhouse/city_select@3x.png"
											alt="">
									</div>
								</div>
								<ul class="select-t ">
									<li class="unit-inp-border" value="男">男</li>
									<li class="unit-inp-border" value="女">女</li>
								</ul>
							</div>
						</td>
					</tr>
					<tr>
						<td><label for="txt" class="label_font">手机号</label></td>
						<td><input class="unit-inp-border" type="text" id="mobile"
							name="mobile" maxlength="11" /></td>
					</tr>
					<tr>


						<td><label for="txt" class="label_font">城 &nbsp&nbsp市</label>
						</td>
						<td>
							<div class="select_item ">
								<div class="choose_result unit-inp-border">
									<input id="city_choose" autocomplete="off" name="city"
										id="city" readonly="readonly">
									<div class="triangle">
										<img src="<%=basePath%>statics/picture/city_select_pop.png"
											alt="">
									</div>
								</div>
							</div>
						</td>
					</tr>
				</table>
				<div class="submit">
					<input id="publish_house" mark="提交" type="submit" value="提交发房申请" />
				</div>
			</form>
		</div>
	</div>
	<div class="gongzhonghao_foot">
		<div class="out">
			<div class="cell_content">
				<div class="cell_content-p">
					<div class="cell_pic_p">
						<img src="<%=basePath%>statics/picture/creat_house_c.png"
							data-rjs="//js.baletoo.cn/static/pc/images/mac/createhouse/creat_house_c@3x.png"
							style="margin-top: 20px;">
					</div>
					<div class="cell_pic_t">
						<h2>
							<strong>400-183-0033</strong>
						</h2>
						<p>直接拨打热线客服也可以哦</p>
						<p>工作时间：周一～周日 8:00～23:00</p>
					</div>
				</div>
				<div class="cell-content-l">
					<div class="line"></div>
				</div>
				<div class="cell-content-t">
					<div class="cell_pic_p">
						<img src="<%=basePath%>statics/picture/creat_house_w.png"
							data-rjs="//js.baletoo.cn/static/pc/images/mac/createhouse/creat_house_w@3.png">
					</div>
					<div class="cell_pic_t">
						<h2>
							<strong>关注巴乐兔公众号</strong>
						</h2>
						<p>点击公众号下的“发布”就可以</p>
						<p>发布房源啦～</p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script>
  
    function select(){
        $(document).click(function(){
            $('.select-t').slideUp();
            $('#sex').children().attr("src",img_down);
            $('#city').children().attr("src",img_down);
            
        })
        $('.select_result').click(function(e){
            e.stopPropagation();
            var ul=$(this).next();
            ul.stop().slideToggle();
            $(this).find("img").attr("src",img_up);
            ul.children().click(function(e){
                e.stopPropagation();
                $(this).parent().prev().children("input").val($(this).text());
                ul.stop().slideUp();
                $(this).parent().prev().find("img").attr("src",img_down);
            })
            
        })
    }
//选择城市
    $(".popClose").click(function(){
        $(".popSelect").removeClass("cityPop-show");
        $(".popfull").hide();
    });
    $('#city_choose').click(function(){
        $(".popSelect").addClass("cityPop-show");
        $(".popfull").show();
    })

    $(".popfull").click(function(){
        $(".popSelect").removeClass("cityPop-show");
        $(".popfull").hide();
    });
    $(".popSelect ul li").click(function(){
        $('#city_choose').val($(this).text());
        $(".popSelect").removeClass("cityPop-show");
        $(".popfull").hide();
    });
//选择城市 end
    $(function(){
        select(); 
    })
    var isRunning = false
    function fafangConfirm(){
        var name = document.getElementById("name").value;
        if(name == ""){
            alert("姓名不能为空");
            return false;
        }
        if(isRunning){
            return false;
        }
        var formObj = document.forms['myform'];
        isRunning = true;
        $.post('/Creathouse/creathouse',$(formObj).serialize(),function(data){
            var data = eval('('+data+')');

            if(data['code'] == 0){
//                window.location.href = 'http://develop.baletoo.com';
                alert(data['message']);
            }else{
                alert(data['message']);
            }
            isRunning = false;
        });
        return false;
    }
     $('.fabu_btn').click(function () {
         $('#name').focus();
         $('html,body').animate({scrollTop: '480px'}, 200);
     })
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
    if(user_mobile_for_fankui==''){
        user_mobile_for_fankui='';
    }
	$(function() {
		$("img.lazy").lazyload({
			effect : "fadeIn"
		});
	});
    /*IM start*/
    var userIsLogin = 0;
    var imImgSrc = "//js.baletoo.cn"+"/static/pc/images/im";
            var imUId = 0;
        var imPas = 0;
        var imServiceId = 0;
        var imAppKey = 0;
        var imServiceName = 0;
        /*IM end*/
</script>

	<script>
    seajs.use("monitor",function(mc){
        mc.bindMonitor();
    });

</script>

	<noscript>
		<div style="display:none;">
			<img height="1" width="1" style="border-style:none;" alt=""
				src="<%=basePath%>statics/picture/c998c5e8798f4042932569e53bfd9e4c.gif" />
		</div>
	</noscript>
</body>
</html>