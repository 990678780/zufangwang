<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


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
	href="<%=basePath%>static/pc/images/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>statics/css/common.css" />
<script src="<%=basePath%>statics/js/jquery.js"></script>
<script src="<%=basePath%>statics/js/layui.js"></script>
<script
	src="<%=basePath%>statics/js/b46bb3c7bf274613b6497739da3b70b4.js"
	charset="utf-8"></script>
<script src="<%=basePath%>statics/js/sea.js"></script>
<script src="<%=basePath%>statics/js/retina.min.js"></script>
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
			<div class="region" style="visibility:hidden">
				<a href="javascript:void(0)"> <!-- <span class="icon icon-pos-grey"></span> -->
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
					<li class="active"><a id="navM4" mark="I4"
						href="<%=basePath%>findsuble/index">找室友</a></a>
						<div class="nav-line"></div></li>
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
	<!-- =========================头部公共部分====================结束 -->
	<script src="<%=basePath%>statics/js/header.js"></script>
	<script type="text/javascript">
    //console.log(cityname_py);
    function toroommate(){
        if(cityname_py==''){
            cityname_py='shanghai';
        }
        window.location.href="http://www.baletu.com/roommate/findsublet_"+cityname_py;
    } 
  
</script>

	<link rel="stylesheet" href="<%=basePath%>statics/css/zhaoshiyou.css">
	<link rel="stylesheet"
		href="<%=basePath%>statics/css/new_zhaoshiyou.css">
	<script src="<%=basePath%>statics/js/myfocus-2.0.4.min.js"
		type="text/javascript"></script>
	
	<div class="mapOut">
		<div class="out">
			<div class="map">
				<a href="http://localhost:8080/roommate/shanghai/" class="link-page">上海市租房社区></a>
				<a href="http://localhost:8080/roommate/sublet_shanghai/"
					class="link-page"> 转租专区> </a> <span class="actived">帖子详情页</span>
			</div>
		</div>
	</div>
	<div class="find-label-line find-label-line-new">
		<div class="out">
			<div class="basic basic-find basic-new">
				<div class="find-label find-label-new">
					<span> <c:if test="${invitation.type==1}">不限</c:if> <c:if
							test="${invitation.type==2}">合租</c:if> <c:if
							test="${invitation.type==3}">转租</c:if> <c:if
							test="${invitation.type==4}">求租</c:if> </span>
				</div>
				<div class="basic-title basic-title-new">
					<h2 id="basic-title-h2" title="沪松公路1399弄">${invitation.address}</h2>
					<p>
						入住日期：
						<fmt:formatDate value="${invitation.createTime}" pattern="yyyy-MM" />
					</p>
					<span class="price">${invitation.price}元</span>
					<div class="clear"></div>
				</div>

				<div class="user-mes-find clearfix">
					<div class="list-term list-term-new">
						<span>租金${invitation.price}</span> <span> <c:if
								test="${invitation.type==1}">不限</c:if> <c:if
								test="${invitation.type==2}">合租</c:if> <c:if
								test="${invitation.type==3}">转租</c:if> <c:if
								test="${invitation.type==4}">求租</c:if> </span>
					</div>
					<dl class="clearfix">
						<dt>
							<div class="usephoto-rd usephoto-rd-new">
								<img
									src="<%=basePath%>statics/picture/oss_5ad5dd813d5c7.png@!head" />
							</div>
						</dt>
						<dd class="fabu_time">
							<p>
								<c:if test="${!empty invitation.user.name}">
                    ${invitation.user.name}
                </c:if>
								<c:if test="${empty invitation.user.name}">
								</c:if>
								${invitation.user.phone}
							</p>
							<p>
								<fmt:formatDate value="${invitation.createTime}"
									pattern="yyyy-MM" />
								发布
							</p>
						</dd>
					</dl>
					<div class="user-mes-btn user-mes-btn-new">
						<a href="javascript:void (0);">留言</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="clearfix out">
		<!--list -->
		<div class="details">
			<div class="details-top clearfix">
				<div class="pic_box">
					<div id="focus_wrap">
						<div id="focus_box">
							<div id="focus">
								<div class="pic">
									<!--图片列表-->
									<ul>
										<li><a href="javascript:void(0)"><img
												src="<%=basePath%>statics/picture/oss_5ad34375ed3eb.png@!blth" />
										</a>
										</li>
										<li><a href="javascript:void(0)"><img
												src="<%=basePath%>statics/picture/oss_5ad3437608c55.png@!blth" />
										</a>
										</li>
										<li><a href="javascript:void(0)"><img
												src="<%=basePath%>statics/picture/oss_5ad343761720e.png@!blth" />
										</a>
										</li>
										<li><a href="javascript:void(0)"><img
												src="<%=basePath%>statics/picture/oss_5ad3437626885.png@!blth" />
										</a>
										</li>
										<li><a href="javascript:void(0)"><img
												src="<%=basePath%>statics/picture/oss_5ad3437633674.png@!blth" />
										</a>
										</li>
										<li><a href="javascript:void(0)"><img
												src="<%=basePath%>statics/picture/oss_5ad3437643768.png@!blth" />
										</a>
										</li>
										<li><a href="javascript:void(0)"><img
												src="<%=basePath%>statics/picture/oss_5ad34376516d4.png@!blth" />
										</a>
										</li>
										<li><a href="javascript:void(0)"><img
												src="<%=basePath%>statics/picture/oss_5ad343765f14b.png@!blth" />
										</a>
										</li>
										<li><a href="javascript:void(0)"><img
												src="<%=basePath%>statics/picture/oss_5ad3620541967.png@!blth" />
										</a>
										</li>
										<li><a href="javascript:void(0)"><img
												src="<%=basePath%>statics/picture/oss_5ad362054c5a7.png@!blth" />
										</a>
										</li>
										<li><a href="javascript:void(0)"><img
												src="<%=basePath%>statics/picture/oss_5ad3620565997.png@!blth" />
										</a>
										</li>
										<li><a href="javascript:void(0)"><img
												src="<%=basePath%>statics/picture/oss_5ad362057379d.png@!blth" />
										</a>
										</li>
										<li><a href="javascript:void(0)"><img
												src="<%=basePath%>statics/picture/oss_5ad362057a6b4.png@!blth" />
										</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
			<!---->
			<!--找室友版-->
			<div class="left-center left-center-new">
				<div class="details-unit">
					<div class="details-unit-title">更多描述</div>
					<div class="details-unit-warp clearfix details-unit-warp-new1">
						<p>${invitation.discripe}</p>
					</div>
				</div>
				<!---->
				<div class="details-unit">
					<div class="details-unit-title">交通周边</div>
					<div class="details-unit-warp details-unit-warp-new1 ">
						<div class="map-tab">
							<ul class="clearfix">
								<li id="ditie" mark="地铁" onclick="AMap_searchNearBy('地铁',this);"
									class="active">地铁</li>
								<li id="gongjiao" mark="公交"
									onclick="AMap_searchNearBy('公交',this);">公交</li>
								<li id="canyin" mark="餐饮"
									onclick="AMap_searchNearBy('餐饮',this);">餐饮</li>
								<li id="gouwu" mark="购物" onclick="AMap_searchNearBy('购物',this);">购物</li>
								<li id="yinhang" mark="银行"
									onclick="AMap_searchNearBy('银行',this);">银行</li>
								<li id="yiyuan" mark="医院"
									onclick="AMap_searchNearBy('医院',this);">医院</li>
								<li id="xuexiao" mark="学校"
									onclick="AMap_searchNearBy('学校',this);">学校</li>
								<a href="javascript:void(0)" class="dingwei_img"
									onclick="markerCenter()">&nbsp&nbsp<img
									src="<%=basePath%>statics/picture/dingwei_img.png"
									data-rjs="//js.baletoo.cn/static/pc/images/mac/roommate/dingwei_img@3x.png">&nbsp定位到当前位置&nbsp&nbsp</a>
							</ul>
						</div>
						<div class="map-text">
							<div class="map-show" id="map-show"></div>
						</div>
					</div>
				</div>
				<!--评论-->
				<div class="details-unit">
					<div id="comment" class="details-unit-title">
						评论<i><font size="5">(${count})</font>
						</i>
					</div>
					<div class="details-unit-warp details-unit-warp-new"
						id="coomment-warp">

						<!--添加评论  -->
						<form name="commentContent" id="commentContent" method="post"
							action="add">
							<div class="inp-reply">
								<div class="inp-textarea">
									<textarea id="comment_content" placeholder="请输入" name="context"
										value="${comment.context}"></textarea>
								</div>
								<input type="hidden" name="iId" value="${invitation.id}">
								<div class="inp-but">
									<a href="javascript:void(0);"
										onclick="document.getElementById('commentContent').submit()"
										class="button">评论</a>
									<div class="inp-but-bg"></div>
								</div>
							</div>
						</form>

						<!-- 根据iId遍历comment-->
						<c:forEach var="comment" items="${commentList}">
							<div class="text-list text-list-new">
								<dl class="clearfix" id="anchorid99197">
									<dt>
										<div class="usephoto-rd">
											<img
												src="<%=basePath%>statics/picture/oss_5ad403131295a.jpg@!head" />
										</div>
									</dt>
									<dd>
										<div class="user-title">
											<span class="user-id">${comment.user.name}</span> <span
												class="user-time"> <fmt:formatDate
													value="${comment.createTime}" pattern="yyyy-MM" /> </span>
										</div>
										<div class="user-text">
											<p>${comment.context}</p>
										</div>
										<div class="user-operation">
											<span class="hf_pop">回复</span>
										</div>
										<div class="inp-reply">
											<div class="inp-textarea">
												<textarea placeholder="请输入"></textarea>
											</div>
											<div class="inp-but">
												<a href="javascript:void(0);" class="button"
													onclick="commentTopic('1001452841',this)">回复</a>
											</div>
										</div>
									</dd>
								</dl>
							</div>
						</c:forEach>
						<!--list end-->
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript"
		src="<%=basePath%>statics/js/27d0931bd14a498b8e02270e30856c65.js"></script>
	<script src="<%=basePath%>statics/js/common.js"></script>
	<script src="<%=basePath%>statics/js/layui.js"></script>
	<script type="text/javascript">
    var topic_flag="0";
    if(topic_flag==1){
        window.location.href= 'http://www.baletu.com'+"/error/shixiao";;
    }                    
    var string=(document.getElementById('basic-title-h2').innerHTML).toString();
    var l=17;  
    var p=document.getElementById('basic-title-h2'); 
    p.innerHTML=checkString(string,l,'...');  
    function checkString(s,l,tag){  
        if(s.length>l){  
            return s.substring(0,l)+tag;  
        }else{
            return s;
        }  
    }  
    //*模块固定 by wn*
    window.onscroll = function(){

        var scrollTop = document.documentElement.scrollTop || window.pageYOffset || document.body.scrollTop;
        var topHeight = $(".details").height();//获取内容高
        if( scrollTop >= 145 & topHeight - 300 >= scrollTop){
            $('.find-label-line').css({
                "position":"fixed",
                "top":"0px",
            });
        }else{
            $('.find-label-line').css({
                "position":"static",
            });
        }
    }

    //评论交互
    $(document).on('click','.inp-but-bg',function(){
        $(this).css("display","none");
        $('.inp-reply textarea').css('height','120px');
        $('.inp-reply textarea').parents('.inp-reply').find('.inp-but').css({"height":"40px","margin-top":"-41px","left":"1px"})
        $('.inp-reply textarea').parents('.inp-reply').find('.inp-but .button').css({"top":"-1px","right":"1px"})
    });
    $(document).on('click','.hf_pop',function(){
        $(this).parents('.text-list').find('.inp-reply').toggle();
    });
    $(document).on('click','.user-mes-btn',function(){
            $("textarea").focus();
    });
        var s_lon = '121.3172';
    var s_lat = '31.136318';
    var s_address = '沪松公路1399弄';
    var city_id = '1';
    var topic_id = '51429';
    var mapObj = new AMap.Map('map-show',{
        zoom: 14,
        center: ['121.3172', '31.136318'],
        city: city_id=='1'?'021':'010'
    });
    window.onload = function(){
        AMap_searchNearBy('地铁');
    };
    var isreLoad = false;
    function commentTopic(to_user_id,obj){
        var comment_content = $(obj).parent().prev().children().eq(0).val();
        var comment_content =  comment_content.replace(/(^\s*)|(\s*$)/g,"");
        if(comment_content == ''){
            tipsMes("评论内容不能为空哦~");
            return false;
        }
        $.ajax({
            type:'post',
            url:'/Operate/doComment',
            data:{topic_id:topic_id,content:comment_content,to_user_id:to_user_id},
            success:function (jsonData){
                var data = eval('('+jsonData+')');
                if(data.code == 1){
                    isreLoad = true;
                    window.location.href = window.location.pathname+'?ac='+data.result;
                    //tipsMes('评论成功');
                }else if(data.code == 1001){
                    ispoplogin();
                    //popLogin();
                }else{
                    tipsMes(data.msg);
                }
            }
        });
    }
    var nowPage = 1;
    //add by cheng 2017-04-10
    function getCommentList(_data){
        $.ajax({
            type:'post',
            url:'/Operate/getCommentList',
            data:_data,
            success:function (commentInfo){
                var appendEle= '';
                if(commentInfo){
                    commentInfo = eval('('+commentInfo+')');
                    $.each(commentInfo,function(k,v){
                        appendEle += '<div class="text-list text-list-new"><dl class="clearfix">'+
                            '<dt><div class="usephoto-rd"><img src="'+v['head_portrait']+'"/></div></dt>'+
                            '<dd>'+
                                '<div class="user-title">'+
                                  '<span class="user-id">'+v['name']+'</span>'+
                                    '<span class="user-time">'+v['create_time']+'</span>'+
                                '</div>'+
                               ' <div class="user-text">'+
                                   '<p>'+v['content']+'</p>'+
                                '</div>'+
                                '<div class="user-operation">'+
                                    '<span class="hf_pop">回复</span>'+
                                '</div>'+
                                '<div class="inp-reply">'+
                                   ' <div class="inp-textarea">'+
                                        '<textarea placeholder="请输入"></textarea>'+
                                    '</div>'+
                                    '<div class="inp-but">'+
                                        '<a href="javascript:void(0);" class="button" onclick="commentTopic('+v['user_id']+',this)">回复</a>'+
                                    '</div>'+
                                '</div>'+
                           ' </dd>'+
                       '</dl></div>';
                    });
                    if(appendEle){
                        $('#coomment-warp').append(appendEle); 
                    }  
                }
            }
        });
    }
    // add by cheng 2017-04-11
    $(function(){
        var nowTopicId = "51429";
        var nowscrollTop = 0;
        var nowPage = 1;
        $(window).scroll(function () {
            if ($(window).scrollTop() == $(document).height() - $(window).height()) {
                if(nowscrollTop == 0 || $(window).scrollTop() != nowscrollTop){
                    nowPage++;
                    var data = {id:nowTopicId,page:nowPage};
                    getCommentList(data);
                    nowscrollTop = $(window).scrollTop();
                }  
            }
        });
    });
    //add by cheng 2017-04-10
    function tipsMes(mes){
        layui.use('layer', function(){
            layer.alert(mes, {
                skin: 'layer-popTip' //样式类名
                ,title:'信息提示:'
            });
        })
    }

    function markerCenter(){
        mapObj.setZoomAndCenter(16, [s_lon, s_lat]);
        new AMap.Marker({ //小区中心点位置
            map: mapObj,
            icon : '//js.baletoo.cn/static/pc/images/icon-pos.png',
            position: new AMap.LngLat(s_lon, s_lat),
            offset : new AMap.Pixel(-20.5,-49),
        });
    }
    function AMap_searchNearBy(type,el){
        if(el!=undefined)
            $('.map-tab li.active').removeClass('active');
        mapObj.clearMap();
        AMap.service(["AMap.PlaceSearch"], function() {
            var placeSearch = new AMap.PlaceSearch({ //构造地点查询类
                pageSize: 100,
                pageIndex: 1,
                type: type,
                city: city_id=='1'?'021':'010',
                map: mapObj
            });

            var centerObj=mapObj.getCenter();
            var cpoint = [s_lon, s_lat]; //中心点坐标
            placeSearch.searchNearBy('', cpoint, 500, function(status, result) {
                mapObj.panTo(centerObj);
                mapObj.setZoom(16);
            });
        });

        if(el!=null)
            $(el).addClass('active');
        markerCenter();
    }
    function AMap_drawRoutePath(type){
        mapObj.clearMap();

        //构造路线导航类
        if(type=='步行'){
            var drawer = new AMap.Walking({
                map: mapObj,
                panel: "map-path-list"
            });
        }else if(type=='自驾'){
            var drawer = new AMap.Driving({
                map: mapObj,
                panel: "map-path-list"
            });
        }else if(type=='公交'){
            var transOptions = {
                map: mapObj,
                panel: 'map-path-list',
                policy: AMap.TransferPolicy.LEAST_TIME //乘车策略
            };
            var drawer = new AMap.Transfer(transOptions);
        }else{
            return ;
        }
        // 根据起终点名称规划驾车导航路线
        drawer.search([
            {keyword: s_address,city:'上海'},
            {keyword: $('#map-search-input').val(),city:'上海'}
        ]);
        markerCenter();

    }
</script>
	<link rel="stylesheet" href="<%=basePath%>statics/css/aliim.css">
	<script type="text/javascript" src="<%=basePath%>statics/js/common.js"></script>
	<script type="text/javascript" src="<%=basePath%>statics/js/popup.js"></script>
	<script type="text/javascript" src="<%=basePath%>statics/js/search.js"></script>
	<script src="<%=basePath%>statics/js/jquery.lazyload.js"></script>
	<script src="<%=basePath%>statics/js/aliim.js" type="text/javascript"></script>
	<script src="<%=basePath%>statics/js/wlog.js" charset="utf-8"></script>
	<div class="slogan" id='slogan'>
		<div class="out">
			<ul class="clearfix">
				<li>
					<p>
						<i class="s-icon s-icon-mian"></i>
					</p>
					<h4>0元佣金</h4></li>
				<li>
					<p>
						<i class="s-icon s-icon-yue"></i>
					</p>
					<h4>房租月付</h4></li>
				<li>
					<p>
						<i class="s-icon s-icon-yu"></i>
					</p>
					<h4>在线预约</h4></li>
				<li>
					<p>
						<i class="s-icon s-icon-zu"></i>
					</p>
					<h4>在线服务</h4></li>

			</ul>
		</div>
	</div>
	<div class="foot">
		<div class="out clearfix">
			<div class="foot-l about-link">
				<dl>
					<dt>
						<a href="/about/">关于我们</a>
					</dt>
					<dd>
						<a href="http://partner.baletu.com" target="_blank">伙伴登录</a> <a
							href="/sitemap/">网站地图</a> <a href="http://sh.baletu.com/shequ/"
							target="_blank">兔社区</a> <a href="/tags/">tags</a>
					</dd>
				</dl>
			</div>
			<div class="foot-l about-link">
				<dl>
					<dt>合作公寓</dt>
					<dd>
						<span>青年汇</span> <span>银桥公寓</span> <span>爱家精品公寓 ...</span>
					</dd>
				</dl>
			</div>
			<div class="foot-l about-link">
				<dl>
					<dt>意见反馈</dt>
					<dd>
						<a href="mailto:service@baletu.com">Mail：service@baletu.com</a>
					</dd>
				</dl>
				<dl>
					<dt>
						<a href="/contact/" target="_blank">联系客服</a>
					</dt>
					<dd>
						<p>400-183-0033</p>
						<p>周一～周日 8:00～23:00</p>
					</dd>
				</dl>
			</div>
			<div class="foot-r clearfix">
				<div class="code-pic">
					<p>扫码下载巴乐兔APP</p>
					<img id="foot_download_app" mark="底部"
						src="<%=basePath%>statics/picture/dapp-new-footer25.png"
						data-rjs="//js.baletoo.cn/static/pc/images/mac/index/dapp-new-footer25@3x.png" />
				</div>
				<div class="code-pic">
					<p>扫码关注微信号</p>
					<img src="<%=basePath%>statics/picture/codepic02.jpg"
						data-rjs="//js.baletoo.cn/static/pc/images/mac/index/codePic02@3x.png" />
				</div>
			</div>
			<div class="clear"></div>
			<div class="foot-pc">
				©2015 上海万间信息技术有限公司 &nbsp; &nbsp; 沪ICP备15004537号 &nbsp; &nbsp; <a
					href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=31011502006937"
					target="_blank" class="gongan"> 沪公网安备31011502006937号 &nbsp;
					&nbsp; </a> 张江高科晨晖路88号1号楼4层
			</div>
		</div>
	</div>
	<div class="im-container">
		<a href="javascript:;" id="im_lightin" data-status="1"> <img
			src="<%=basePath%>statics/picture/im_normal_new_1122.png"
			data-rjs="//js.baletoo.cn/static/pc/images/im/im_normal_new_1122_mac.png"
			alt="" class="im-img"> <!--im提示-->
			<div class="im_prompt">
				<img src="<%=basePath%>statics/picture/kefu.png"
					data-rjs="//js.baletoo.cn/static/pc/images/im/kefu_mac.png" alt=""
					class="im-kefu">
			</div> </a>
		<div class="im-wrapper">
			<div class="title">
				<img src="<%=basePath%>statics/picture/im_staff01.png"
					data-rjs="//js.baletoo.cn/static/pc/images/im/im_staff01_mac.png"
					alt=""> <img
					src="<%=basePath%>statics/picture/im_close01.png"
					data-rjs="//js.baletoo.cn/static/pc/images/im/im_close01_mac.png"
					alt="" id="im_closeform" data-status="0">
				<div class="title_word">巴乐兔客服</div>
				<div class="clear"></div>
			</div>
			<div class="address"></div>
			<div class="im-message" id="im_message"></div>
		</div>
		<a href="javascript:;" id="toTOP"> <img
			src="<%=basePath%>statics/picture/totop_1122.png"
			data-rjs="//js.baletoo.cn/static/pc/images/im/toTop_1122_mac.png"
			alt="" class="Totop"> <!--TOP提示-->
			<div class="Totop_div">
				<img src="<%=basePath%>statics/picture/top_info.png"
					data-rjs="//js.baletoo.cn/static/pc/images/im/top_info_mac.png"
					alt="" class="Totop_info">
			</div> </a> <a href="javascript:;" id="Suggestions"> <img
			src="<%=basePath%>statics/picture/suggestion.png"
			data-rjs="//js.baletoo.cn/static/pc/images/im/suggestion_mac.png"
			alt="" class="suggestion"> <!--TOP提示-->
			<div class="Suggestions_div">
				<img src="<%=basePath%>statics/picture/fankui.png"
					data-rjs="//js.baletoo.cn/static/pc/images/im/fankui_mac.png"
					alt="" class="sugestion_info">
			</div> </a>
	</div>
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
				src="<%=basePath%>statics/picture/b14e66b9656445f799a523dc35aefd45.gif" />
		</div>
	</noscript>
</body>
</html>