<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no">
    <!-- Mimic Internet Explorer 7 -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta name='keywords' content='上海租房,上海租房网,上海租房信息网,上海租房子,上海房屋出租,上海租房价格,巴乐兔租房'>
    <meta name='description' content='上海巴乐兔租房信息网：上海租房,上海租房网,上海租房信息网,上海租房子,上海房屋出租,上海租房价格,巴乐兔租房，【零佣金,月付租,房东直租】,租房,找房,看房,就上巴乐兔租房。'>
    <!--谷歌站长权限代码-->
    <meta name="google-site-verification" content="3i4BqZDb2N4OWLUm4BljGQvkUKl1IaHKju_9w0N0XV8" />
    <!--360站长权限代码-->
    <meta name="360-site-verification" content="bd1ad966359cceaa07a214b916d8e722" />
	<title>上海租房_上海租房信息网_上海房屋出租-上海巴乐兔租房</title>
    <!--百度站长权限代码-->
    <meta name="baidu-site-verification" content="7tK95plO2U" />
    <link rel="shortcut icon" href="//js.baletoo.cn/static/pc/images/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="statics/css/common.css"/>
    
        <script src="statics/js/jquery.js"></script>
    <script src="statics/js/layui.js"></script>
    <!--[if lt IE 9]>
        <script src="js/json.js" charset="utf-8"></script>
    <![endif]-->
    <script src="statics/js/e3460f05fe1d47a68a08699dd691f296.js" charset="utf-8"></script>
    <script src="statics/js/sea.js"></script>
    <script src="statics/js/retina.min.js"></script>
    <script type="text/javascript">
        seajs.config({
            alias: {
                'monitor':'//js.baletoo.cn/static/pc/js/monitor_call.js?2018'
            }
        });
        var  _hmt  =  _hmt  ||  [];
        var g_config = [];
        g_config['city'] = 'sh';
        g_config['from'] = 'PC';
        g_config['dir'] = '//js.baletoo.cn';
        g_config['model_name'] = '';
        //百度自动推送代码
        (function(){
            var bp = document.createElement('script');
            var curProtocol = window.location.protocol.split(':')[0];
            if (curProtocol === 'https') {
                bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';
            }
            else {
                bp.src = 'http://push.zhanzhang.baidu.com/push.js';
            }
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(bp, s);
        })();
        //上海二级域
        var _hmt = _hmt || [];
        (function() {
            var hm = document.createElement("script");
            hm.src = "https://hm.baidu.com/hm.js?8f953116d16f07247628a1edb29e8e9e";
            var s = document.getElementsByTagName("script")[0]; 
            s.parentNode.insertBefore(hm, s);
        })();
        //北京二级域
        var _hmt = _hmt || [];
        (function() {
            var hm = document.createElement("script");
            hm.src = "https://hm.baidu.com/hm.js?f84ef5f0d18d9cd88cb0e45d865b37aa";
            var s = document.getElementsByTagName("script")[0]; 
            s.parentNode.insertBefore(hm, s);
        })();
        //深圳二级域
        var _hmt = _hmt || [];
        (function() {
            var hm = document.createElement("script");
            hm.src = "https://hm.baidu.com/hm.js?be7a1724ba8fecae85d19acd8166abf9";
            var s = document.getElementsByTagName("script")[0]; 
            s.parentNode.insertBefore(hm, s);
        })();


    </script>
</head>
<body>

<!--选择城市弹层-->
<div class="cityPop">
    <div class="popClose">
        <span><img src="statics/picture/close.png" /></span>
    </div>
    <div class="cityPop_title">
        <h2>选择城市</h2>
        <ul>
            <li>热门城市：</li>
            <li><a id="navM2" mark="I2" href="http://bj.baletu.com/">北京</a></li>
            <li><a id="navM1" mark="I1" href="http://sh.baletu.com/">上海</a></li>
            <li><a id="navM2" mark="I2" href="http://gz.baletu.com/">广州</a></li>
            <li><a id="navM2" mark="I2" href="http://sz.baletu.com/">深圳</a></li>
        </ul>
    </div>
    <div class="cityPop_list">
        <ul>
            <li>
                <span class="nameIcon">B</span>
                <a id="navM2" mark="I2" href="http://bj.baletu.com/">北京</a>
            </li>
            <li>
                <span class="nameIcon">C</span>
                <a id="navM2" mark="I2" href="http://cd.baletu.com/">成都</a>
                <a id="navM2" mark="I2" href="http://cq.baletu.com/">重庆</a>
            </li>
            <li>
                <span class="nameIcon">D</span>
                <a id="navM2" mark="I2" href="http://dl.baletu.com/">大连</a>
            </li>
            <li>
                <span class="nameIcon">G</span>
                <a id="navM2" mark="I2" href="http://gz.baletu.com/">广州</a>
            </li>
            <li>
                <span class="nameIcon">H</span>
                <a id="navM2" mark="I2" href="http://hz.baletu.com/">杭州</a>
            </li>
            <li>
                <span class="nameIcon">N</span>
                <a id="navM2" mark="I2" href="http://nj.baletu.com/">南京</a>
            </li>
        </ul>
        <ul>
            <li>
                <span class="nameIcon">S</span>
                <a id="navM1" mark="I1" href="http://sh.baletu.com/">上海</a>
                <a id="navM2" mark="I2" href="http://sz.baletu.com/">深圳</a>
                <a id="navM2" mark="I2" href="http://suzhou.baletu.com/">苏州</a>
            </li>
            <li>
                <span class="nameIcon">T</span>
                <a id="navM2" mark="I2" href="http://tj.baletu.com/">天津</a>
            </li>
            <li>
                <span class="nameIcon">W</span>
                <a id="navM2" mark="I2" href="http://wh.baletu.com/">武汉</a>
            </li>
            <li>
                <span class="nameIcon">X</span>
                <a id="navM2" mark="I2" href="http://xa.baletu.com/">西安</a>
            </li>
            <li>
                <span class="nameIcon">Z</span>
                <a id="navM2" mark="I2" href="http://zz.baletu.com/">郑州</a>
            </li>
        </ul>
    </div>
</div>
<div class="popfull"></div>
<div class="header header-w">
    <div class="out">
                <h1 class="logo">
            <a href="/">
                <img src="statics/picture/logo2x.png" title="上海巴乐兔租房" alt="上海巴乐兔租房" data-rjs="http://www.baletu.com/Public/logo/logo3x.png"/>
            </a>
        </h1>
                <div class="region" style="">
            <a href="javascript:void(0)">
                <!-- <span class="icon icon-pos-grey"></span> -->
                <span class="icon icon-down-white"></span>
                上海            </a>
        </div>
        <div class="nav">
            <ul>
                <li ><a id="navM3" mark="I3" href="<%=basePath %>index">首页</a><div class="nav-line"></div></li>
                <li ><a id="navM4" mark="I4" href="<%=basePath%>zhaofang" >立即找房</a><div class="nav-line"></div></li>
                <li ><a id="navM6" mark="I6" href="<%=basePath%>createhouse" >发布房源</a><div class="nav-line"></div></li>
                <li >
                    <a href="<%=basePath%>findsuble/index" >找室友</a>
                    <div class="nav-line"></div>
                </li>
                <li style="display: none;"><a id="navM6" mark="I6" href="http://sh.baletu.com/shequ/"  >兔社区</a><div class="nav-line"></div></li>
                <li class="downApp-link ">
                    <a id="navM5" mark="主菜单" href="http://sh.baletu.com/downapp/" >下载APP</a><div class="nav-line"></div>
                </li>
            </ul>
        </div>
                <div class="login-link login-link-new">
            <ul class="clearfix">
                 <li><span class="icon_people_black"></span></li>
                <li><a id="navM8" mark="I8" href="<%=basePath%>register">注册</a></li>
                <li><a id="navM7" mark="I7" href="<%=basePath%>login">登录</a></li>
            </ul>
        </div>
            </div>
</div>

<script src="statics/js/header.js"></script>
<script type="text/javascript">
    //console.log(cityname_py);
    function toroommate(){
        if(cityname_py==''){
            cityname_py='shanghai';
        }
        window.location.href="http://www.baletu.com/roommate/findsublet_"+cityname_py;
    } 
  
</script>

<link rel="stylesheet" href="css/new_login.css">
<div class="banner">
    <div class="banner-ct out">
        <div class="login login-new">
        <form action="<%=basePath%>login/updataPwd" method="post"  >
           <div class="login-left">
                <div class="login-inp">
                <h1 style="text-align: center;">修改密码</h1>
                <div class="unit-inp unit-inp1">
                    <input type="tel" id="phone" name="phone" placeholder="手机号码" maxlength="11" required="required">
                </div>
                <div class="unit-inp unit-inp1">
                    <input type="password"  id="oldPwd" name="password" placeholder="请输入旧密码"  required="required">
                </div>

                <div class="unit-inp clearfix unit-inp1 unit-relative">
                    <input name="image_code_name" value=" " type="hidden" />
                    <input type="text"  id="newPwd" class="inp-code" name="verify_code" placeholder="请输入新密码" class="enter" />
                    <p class="prompt-text code_text"></p>
                </div>
            </div>
            <div class="center-box mt35 center-box-new"><input id="tijiao"  type="submit"  class="btn-red" value="完成"/></div>
            
           </div>
           <div class="login-right">
                <div class="center-box">
                    <dd class="regg regg-new1">
                        还没有账户:<br>
                        <a id="login_index_zhuce" mark="注册" href="<%=basePath %>register"  class="link-red">立即注册&nbsp;<img src="statics/picture/jiantou.png" alt=""></a>
                    </dd>
                </div>
            </div> 
         </form>
        </div>
    </div>
</div>


    <script>
        $(function(){
            $('.unit-inp input').click(function(){
                $('.unit-inp').addClass('prompt');
            })
        })
        
        var isRunning = false
        function forget(){
            var formObj = document.forms['LoginForm'];
            $.post('/forget/forget',$(formObj).serialize(),function(data){
                var data = eval('('+data+')');
                console.log(data['code']);
                if(data['code'] == 0){
                    if(formObj['return_url'].value == ''){
                        window.location.href = 'http://develop.baletoo.com';
                    }else{
                        window.location.href = formObj['return_url'].value;
                    }
                }else{
                	if(data['code'] == 1001){
                    	$(".mobile_text").html(data['message']);
                    	$(".password_text").html('');
                    	$(".code_text").html('');
                    }else if(data['code'] == 1002){
                    	$(".mobile_text").html('');
                    	$(".password_text").html(data['message']);
                    	$(".code_text").html('');
                    }else if(data['code'] == 1003){
                    	$(".mobile_text").html('');
                    	$(".password_text").html('');
                    	$(".code_text").html(data['message']);
                    }
                }
            });
        }
        function sendVerifyCodeLogin(type){
//            if(isRunning){
//                return false;
//            }
            var formObj = document.forms['LoginForm'];
            var verify_image_code = document.getElementById('verify_image_code').value;
            formObj['image_code_name'].value = verify_image_code;
            formObj['type'].value = type;
//            isRunning = true;
            $.post('/forget/getVerifyCode',$(formObj).serialize(),function(data){
                var data = eval('('+data+')');
                if(data['code'] == 0){
                    dealTimerwater();
                    layer.closeAll();
                    $(".mobile_text").html('');
                	$(".password_text").html('');
                	$(".code_text").html(data['message']);
                    //跳转回原来的页面
                }else if(data['code'] ==1004||data['code'] ==200000||data['code'] ==200001||data['code'] ==200002||data['code'] ==200003){
                    $(".mobile_text").html('');
                    $(".password_text").html('');
                    $(".image_code_text").html(data['message']);
                }else{
                	$(".mobile_text").html('');
                	$(".password_text").html('');
                	$(".code_text").html(data['message']);
                    isRunning = false;
                }
                
            });
        }
        $('.enter').keydown(function(e){
        	if(e.keyCode==13){
        		login(); //处理事件
        	}
        });
    </script>

<link rel="stylesheet" href="statics/css/aliim.css">
<script type="text/javascript" src="statics/js/common.js"></script>
<script type="text/javascript" src="statics/js/popup.js"></script>
<script type="text/javascript" src="statics/js/search.js"></script>
<script src="statics/js/jquery.lazyload.js"></script>
<script src="statics/js/aliim.js" type="text/javascript"></script>
<script src="statics/js/wlog.js" charset="utf-8"></script>
<div class="slogan" id='slogan'>
    <div class="out">
        <ul class="clearfix">
            <li>
                <p><i class="s-icon s-icon-mian"></i></p>
                <h4>0元佣金</h4>
            </li>
            <li>
                <p><i class="s-icon s-icon-yue"></i></p>
                <h4>房租月付</h4>
            </li>
            <li>
                <p><i class="s-icon s-icon-yu"></i></p>
                <h4>在线预约</h4>
            </li>
            <li>
                <p><i class="s-icon s-icon-zu"></i></p>
                <h4>在线服务</h4>
            </li>

        </ul>
    </div>
</div>
<div class="foot">
    <div class="out clearfix">
        <div class="foot-l about-link">
            <dl>
                <dt><a href="/about/">关于我们</a></dt>
                <dd>
                    <a href="http://partner.baletu.com" target="_blank">伙伴登录</a>
                    <a href="/sitemap/">网站地图</a>
                                    <a href="/shequ/" target="_blank">兔社区</a>
                                    <a href="/tags/">tags</a>
                </dd>
            </dl>
        </div>
        <div class="foot-l about-link">
            <dl>
                <dt>合作公寓</dt>
                <dd>
                    <span>青年汇</span>
                    <span>银桥公寓</span>
                    <span>爱家精品公寓 ...</span>
                </dd>
            </dl>
        </div>
        <div class="foot-l about-link">
            <dl>
                <dt>意见反馈</dt>
                <dd><a href="mailto:service@baletu.com">Mail：service@baletu.com</a></dd>
            </dl>
            <dl>
                <dt><a href = "/contact/" target="_blank">联系客服</a></dt>
                <dd>
                    <p>400-183-0033</p>
                    <p>周一～周日 8:00～23:00</p>
                </dd>
            </dl>
        </div>
        <div class="foot-r clearfix">
            <div class="code-pic">
                <p>扫码下载巴乐兔APP</p>
                <img id="foot_download_app" mark="底部" src="statics/picture/dapp-new-footer25.png"  data-rjs="//js.baletoo.cn/static/pc/images/mac/index/dapp-new-footer25@3x.png"/>
            </div>
            <div class="code-pic">
                <p>扫码关注微信号</p>
                <img src="statics/picture/codepic02.jpg" data-rjs="//js.baletoo.cn/static/pc/images/mac/index/codePic02@3x.png"/>
            </div>
        </div>
        <div class="clear"></div>
                <div class="foot-pc">
             ©2015  上海万间信息技术有限公司   &nbsp; &nbsp;
             沪ICP备15004537号   &nbsp; &nbsp;
             <a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=31011502006937" target="_blank" class="gongan">
                 沪公网安备31011502006937号 &nbsp; &nbsp;
             </a>
             张江高科晨晖路88号1号楼4层
         </div>
    </div>
</div>
<div class="im-container">
    <a href="javascript:;" id="im_lightin" data-status="1">
      	<img src="statics/picture/im_normal_new_1122.png"  data-rjs="//js.baletoo.cn/static/pc/images/im/im_normal_new_1122_mac.png" alt="" class="im-img">
      	<!--im提示-->
      	<div class="im_prompt">
      		<img src="statics/picture/kefu.png" data-rjs="//js.baletoo.cn/static/pc/images/im/kefu_mac.png" alt="" class="im-kefu">
      	</div>
    </a>
    <div class="im-wrapper">
        <div class="title" >
            <img src="statics/picture/im_staff01.png" data-rjs="//js.baletoo.cn/static/pc/images/im/im_staff01_mac.png" alt="">
            <img src="statics/picture/im_close01.png" data-rjs="//js.baletoo.cn/static/pc/images/im/im_close01_mac.png" alt="" id="im_closeform" data-status="0">
            <div class="title_word">巴乐兔客服</div>
            <div class="clear"></div>       
        </div>
        <div class="address"></div>
        <div class="im-message" id="im_message"></div>
    </div>
    <a href="javascript:;" id="toTOP">
		<img src="statics/picture/totop_1122.png"  data-rjs="//js.baletoo.cn/static/pc/images/im/toTop_1122_mac.png" alt="" class="Totop">
      	<!--TOP提示-->
      	<div class="Totop_div">
      		<img src="statics/picture/top_info.png" data-rjs="//js.baletoo.cn/static/pc/images/im/top_info_mac.png" alt="" class="Totop_info">
		</div>					
	</a>
    <a href="javascript:;" id="Suggestions">
		<img src="statics/picture/suggestion.png"  data-rjs="//js.baletoo.cn/static/pc/images/im/suggestion_mac.png" alt="" class="suggestion">
      	<!--TOP提示-->
      	<div class="Suggestions_div">
      		<img src="statics/picture/fankui.png" data-rjs="//js.baletoo.cn/static/pc/images/im/fankui_mac.png" alt="" class="sugestion_info">
		</div>					
	</a>
</div>


<noscript>
    <div style="display:none;">
        <img height="1" width="1" style="border-style:none;" alt="" src="statics/picture/0aee342865e94a69a6b9b778c002602d.gif"/>
    </div>
</noscript>
</body>
</html>