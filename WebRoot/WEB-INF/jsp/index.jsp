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
<meta name="viewport"
    content="initial-scale=1, maximum-scale=1, user-scalable=no">
<!-- Mimic Internet Explorer 7 -->
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<meta name='keywords'
    content='上海租房,上海租房网,上海租房信息网,上海租房子,上海房屋出租,上海租房价格,巴乐兔租房'>
<meta name='description'
    content='上海巴乐兔租房信息网：上海租房,上海租房网,上海租房信息网,上海租房子,上海房屋出租,上海租房价格,巴乐兔租房，【零佣金,月付租,房东直租】,租房,找房,看房,就上巴乐兔租房。'>

<link rel="shortcut icon"
    href="//js.baletoo.cn/static/pc/../images/favicon.ico"
    type="image/x-icon" />
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
                <li><a id="navM2" mark="I2" href="#">北京</a>
                </li>
                <li><a id="navM1" mark="I1" href="#">上海</a>
                </li>
                <li><a id="navM2" mark="I2" href="#">广州</a>
                </li>
                <li><a id="navM2" mark="I2" href="#">深圳</a>
                </li>
            </ul>
        </div>
        <div class="cityPop_list">
            <ul>
                <li><span class="nameIcon">B</span> <a id="navM2" mark="I2"
                    href="#">北京</a>
                </li>
                <li><span class="nameIcon">C</span> <a id="navM2" mark="I2"
                    href="#">成都</a> <a id="navM2" mark="I2" href="#">重庆</a></li>
                <li><span class="nameIcon">D</span> <a id="navM2" mark="I2"
                    href="#">大连</a>
                </li>
                <li><span class="nameIcon">G</span> <a id="navM2" mark="I2"
                    href="#">广州</a>
                </li>
                <li><span class="nameIcon">H</span> <a id="navM2" mark="I2"
                    href="#">杭州</a>
                </li>
                <li><span class="nameIcon">N</span> <a id="navM2" mark="I2"
                    href="#">南京</a>
                </li>
            </ul>
            <ul>
                <li><span class="nameIcon">S</span> <a id="navM1" mark="I1"
                    href="#">上海</a> <a id="navM2" mark="I2" href="#">深圳</a> <a
                    id="navM2" mark="I2" href="#">苏州</a>
                </li>
                <li><span class="nameIcon">T</span> <a id="navM2" mark="I2"
                    href="#">天津</a>
                </li>
                <li><span class="nameIcon">W</span> <a id="navM2" mark="I2"
                    href="#">武汉</a>
                </li>
                <li><span class="nameIcon">X</span> <a id="navM2" mark="I2"
                    href="#">西安</a>
                </li>
                <li><span class="nameIcon">Z</span> <a id="navM2" mark="I2"
                    href="#">郑州</a>
                </li>
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
                <a href="javascript:void(0)"> <!-- <span class="icon icon-pos-grey"></span> -->
                    <span class="icon icon-down-grey"></span> 上海 </a>
            </div>
            <div class="nav">
                <ul>
                    <li class="active"><a id="navM3" mark="I3"
                        href="<%=basePath%>index">首页</a>
                        <div class="nav-line"></div></li>
                    <li><a id="navM4" mark="I4" href="<%=basePath%>house/all">立即找房</a>
                        <div class="nav-line"></div></li>
                    <li><a id="navM6" mark="I6" href="<%=basePath%>createhouse">发布房源</a>
                        <div class="nav-line"></div>
                    </li>
                    <li><a id="navM6" mark="I6"
                        href="<%=basePath%>findsuble/index">找室友</a></a>
                        <div class="nav-line"></div>
                    </li>
                </ul>
            </div>
            <div class="login-link login-link-new">
                <c:if test="${empty user}">
                    <ul class="clearfix">
                        <li><span class="icon_people_black"></span></li>
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
                    ${user.phone},欢迎您!

                        <a href="<%=basePath%>outlogin" id="zx"><br/>注销登录</a>
                </c:if>
                </c:if>

            </div>
        </div>
    </div>

    <script src="<%=basePath%>statics/js/header.js"></script>

    <!-- Link Swiper's CSS -->
    <link rel="stylesheet"
        href="<%=basePath%>statics/css/swiper-3.4.2.min.css">
    <style>
.swiper-container {
    width: 100%;
    height: auto;
    *height: 500px;
}

.swiper-slide {
    text-align: center;
    font-size: 18px;
    background: #fff;
}

.swiper-container .swiper-slide {
    height: 500px;
}

.swiper-container .swiper-slide a {
    display: block;
    height: 100%;
}

.swiper-container .swiper-button-prev,.swiper-container .swiper-button-next
    {
    width: 20px;
    height: 120px;
    background-image:
        url("<%=basePath%>statics/../images/banner-btn-new.png");
    background-size: inherit;
}

.swiper-container .swiper-button-prev {
    background-position: 0 0;
    position: absolute;
    left: 10%;
    top: 40%;
}

.swiper-container .swiper-button-next {
    background-position: -20px 0px;
    position: absolute;
    right: 10%;
    top: 40%;
}

.swiper-container .swiper-button-prev:hover {
    background-position: -40px 0px;
}

.swiper-container .swiper-button-next:hover {
    background-position: -60px 0px;
}

@media only screen and (-webkit-min-device-pixel-ratio: 1.5) , only screen and
        (min--moz-device-pixel-ratio: 1.5) , /* 注意这里的写法比较特殊 */ only screen and
        (-o-min-device-pixel-ratio: 3/2) , only screen and
    (min-device-pixel-ratio: 1.5) {
    .swiper-container .swiper-button-prev,.swiper-container .swiper-button-next
        {
        width: 20px;
        height: 120px;
        background-image:
            url("<%=basePath%>statics/../images/banner-btn_new@3x.png");
        background-size: 400% auto;
    }
    .swiper-container .swiper-button-prev {
        background-position: -10 0;
    }
    .swiper-container .swiper-button-next {
        background-position: -20px 0px;
    }
    .swiper-container .swiper-button-prev:hover {
        background-position: -40px 0px;
    }
    .swiper-container .swiper-button-next:hover {
        background-position: -60px 0px;
    }
}

@media only screen and (max-width: 1280px) {
    .swiper-container .swiper-button-prev {
        left: 20px;
    }
    .swiper-container .swiper-button-next {
        right: 20px;
    }
}

@media only screen and(max-width: 1440px) {
    .swiper-container .swiper-button-prev {
        left: 20px;
    }
    .swiper-container .swiper-button-next {
        right: 20px;
    }
}

@media only screen and(max-width: 1920px) {
    .swiper-container .swiper-button-prev {
        left: 20px;
    }
    .swiper-container .swiper-button-next {
        right: 20 lpx;
    }
}

/* 页面上方几张循环大图路径格式 */
</style>
    <div class="swiper-container">
        <div class="swiper-wrapper">
            <div class="swiper-slide"
                style="background:url(<%=basePath%>statics/images/oss_5a7913217e39e.jpg) center center no-repeat;">
                <a href="https://m.baletu.com/activity/activitydetailwap?id=197"
                    target="_blank">&nbsp;</a>
            </div>
            <div class="swiper-slide"
                style="background:url(<%=basePath%>statics/images/oss_5a1d3ca04bf27.png) center center no-repeat;">
                <a href="javascript:void(0)" target="_blank">&nbsp;</a>
            </div>
            <div class="swiper-slide"
                style="background:url(<%=basePath%>statics/images/oss_5a6a8de6dd687.png) center center no-repeat;">
                <a href="http://u5585314.viewer.maka.im/pcviewer/IQ468ASZ"
                    target="_blank">&nbsp;</a>
            </div>
            <div class="swiper-slide"
                style="background:url(<%=basePath%>statics/images/oss_5a6a8ddb6f7ca.jpg) center center no-repeat;">
                <a href="/activity/mascot" target="_blank">&nbsp;</a>
            </div>
            <div class="swiper-slide"
                style="background:url(<%=basePath%>statics/images/oss_5a6a8dbe1086f.png) center center no-repeat;">
                <a href="/activity/activitydetail?id=67" target="_blank">&nbsp;</a>
            </div>
            <div class="swiper-slide"
                style="background:url(<%=basePath%>statics/images/oss_5a6a8dcf34af5.png) center center no-repeat;">
                <a href="/activity/activitydetail?id=110" target="_blank">&nbsp;</a>
            </div>
        </div>
        <!-- 如果需要导航按钮 -->
        <div class="swiper-button-prev"></div>
        <div class="swiper-button-next"></div>

        <!-- 如果需要滚动条 -->
        <div class="swiper-scrollbar"></div>
    </div>
    <!--swiper-->
    <script src="<%=basePath%>statics/js/swiper-3.4.2.jquery.min.js"></script>
    <script>
        var swiper = new Swiper('.swiper-container', {
            paginationClickable : true,
            nextButton : '.swiper-button-next',
            prevButton : '.swiper-button-prev',
            autoHeight : true, //enable auto height
            loop : true,
            //scrollbar:'.swiper-scrollbar',
            autoplay : 6000,
        });
        //swiper.lockSwipes();
    </script>
    <!--swiper end-->
    <!--search-->
    <div class="search-banner">
        <div class="search-main">
            <form name="form_search" onsubmit="return searchForm();">
                <input name="prefixUrl" value="/zhaofang/" autoComplete="off"
                    type="hidden" />
                <ul class="clearfix">
                    <li style="*width: 460px;"><input type="text" name="kw"
                        class="search-input" autoComplete="off"
                        placeholder="输入区域、板块或小区名开始找房" /></li>
                    <li style="*width: 80px;"><a id="index_search" mark="首页"
                        class="btn-red btn-search" href='javascript:void(0);'
                        onclick='javascript:searchForm();'>搜索</a></li>
                    <li style="display: none;"><a id="index_map" mark="I6"
                        class="btn-map" href="/map"><span class="icon icon-pos-red"></span>
                            地图找房</a></li>
                </ul>
            </form>
            <div class="search-bot">
                热门搜索： <a href="/zhaofang/songjiang/?is_index=1">松江</a> <a
                    href="/zhaofang/pudong/?is_index=1">浦东</a> <a
                    href="/zhaofang/t5/?is_index=1">近地铁</a> <a
                    href="/zhaofang/zhangjiang/?is_index=1">张江</a> <a
                    href="/zhaofang/kw上大路/?is_index=1">上大路</a> <a
                    href="/zhaofang/c1/?is_index=1">合租</a>
            </div>
        </div>
    </div>
    <!--search end-->

    <div class="pageLink" id="shouyu_icon">
        <div class="out clearfix">
            <div class="pageLink-unit ">
                <a href="http://localhost:8080/house/sh/d2" id="zhengzu_new" alt="整租"
                    class="pageLink-pic pageLink-pic-zu">
                    <div class="pageLink-unit-word">整租</div>
                    <div class="pageLink-unit-bg"></div> </a>
            </div>
            <div class="pageLink-unit pageLink-unit-new">
                <a href="http://localhost:8080/house/sh/e3" alt="月付房源" id="yuefu_new"
                    class="pageLink-pic pageLink-pic-yf">
                    <div class="pageLink-unit-word">三室房源</div>
                    <div class="pageLink-unit-bg"></div> </a>
            </div>
            <div class="pageLink-unit pageLink-unit-new">
                <a href="/map/&is_index=1" alt="地图找房" id="ditu_new"
                    class="pageLink-pic pageLink-pic-dt">
                    <div class="pageLink-unit-word">地图找房</div>
                    <div class="pageLink-unit-bg"></div> </a>
            </div>
            <div class="pageLink-unit pageLink-unit-new">
                <a href="http://localhost:8080/house/sh/c2" id="qianyuan_new"
                    alt="千元好房" class="pageLink-pic pageLink-pic-zz">
                    <div class="pageLink-unit-word">千元好房</div>
                    <div class="pageLink-unit-bg"></div> </a>
            </div>
        </div>
    </div>
    <div class="main-index out">
        <div class="list-index">
            <div class="list-index-title">
                <h2>整租房源</h2>
                <a href="/zhaofang/c2/?is_index=1" class="more" id="zhengzu_more">更多房源</a>
            </div>
            <div class="list-index-center clearfix" id="index_zhengzu">
                <div class="list-index-unit">
                    <a href="http://sh.baletu.com/house/2521683.html?view_source=6"
                        pos="1" class="list-index-pic"> <img width="360" alt="双秀西园B园"
                        src="<%=basePath%>statics/picture/oss_5ac1f5f9bfb9d.jpg@!380_280.png">
                    </a>
                    <div class="list-index-text">
                        <div class="unit-index-title">
                            <a href="http://sh.baletu.com/house/2521683.html?view_source=6">双秀西园B园</a>
                            <span class="price"><em>￥</em>4500</span>
                        </div>
                        <div class="list-pic-ps">浦东-周浦整租 | 2室2厅1卫 | 80M²</div>

                        <div class="pro-lab">
                            <span>月付</span> <span>新上架</span> <span>带阳台</span> <span>独立厨房</span>

                        </div>
                    </div>
                </div>
                <div class="list-index-unit">
                    <a href="http://sh.baletu.com/house/577509.html?view_source=6"
                        pos="2" class="list-index-pic"> <img width="360" alt="祁寓公寓"
                        src="<%=basePath%>statics/picture/oss_58fabd2f03a77.jpg@!380_280.png">
                    </a>
                    <div class="list-index-text">
                        <div class="unit-index-title">
                            <a href="http://sh.baletu.com/house/577509.html?view_source=6">祁寓公寓</a>
                            <span class="price"><em>￥</em>1700</span>
                        </div>
                        <div class="list-pic-ps">浦东-外高桥整租 | 1室0厅1卫 | 20M²</div>

                        <div class="pro-lab">
                            <span>月付</span> <span>精装</span> <span>非一楼</span>

                        </div>
                    </div>
                </div>
                <div class="list-index-unit">
                    <a href="http://sh.baletu.com/house/246348.html?view_source=6"
                        pos="3" class="list-index-pic"> <img width="360" alt="南苑一村"
                        src="<%=basePath%>statics/picture/oss_5ad054831d52f.jpg@!380_280.png">
                    </a>
                    <div class="list-index-text">
                        <div class="unit-index-title">
                            <a href="http://sh.baletu.com/house/246348.html?view_source=6">南苑一村</a>
                            <span class="price"><em>￥</em>2600</span>
                        </div>
                        <div class="list-pic-ps">嘉定-菊园新区整租 | 2室1厅1卫 | 75M²</div>

                        <div class="pro-lab">
                            <span>月付</span> <span>独立厨房</span> <span>非一楼</span>

                        </div>
                    </div>
                </div>
                <div class="list-index-unit">
                    <a href="http://sh.baletu.com/house/22486.html?view_source=6"
                        pos="4" class="list-index-pic"> <img width="360" alt="唐丰苑"
                        src="<%=basePath%>statics/picture/oss_593b884f99a6d.jpg@!380_280.png">
                    </a>
                    <div class="list-index-text">
                        <div class="unit-index-title">
                            <a href="http://sh.baletu.com/house/22486.html?view_source=6">唐丰苑</a>
                            <span class="price"><em>￥</em>5000</span>
                        </div>
                        <div class="list-pic-ps">浦东-唐镇整租 | 2室2厅1卫 | 86M²</div>

                        <div class="pro-lab">
                            <span>月付</span> <span>带阳台</span> <span>家电全配</span> <span>电梯房</span>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="list-index">
            <div class="list-index-title">
                <h2>合租房源</h2>
                <a href="/zhaofang/c1/?is_index=1" class="more" id="hezu_more">更多房源</a>
            </div>
            <div class="list-index-center clearfix" id="index_hezu">
                <div class="list-index-unit">
                    <a href="http://sh.baletu.com/house/2303899.html?view_source=6"
                        pos="1" class="list-index-pic"> <img width="360" alt="东丰林居"
                        src="<%=basePath%>statics/picture/oss_5a715b30ea281.jpg@!380_280.png">
                    </a>
                    <div class="list-index-text">
                        <div class="unit-index-title">
                            <a href="http://sh.baletu.com/house/2303899.html?view_source=6">东丰林居</a>
                            <span class="price"><em>￥</em>1700</span>
                        </div>
                        <div class="list-pic-ps">浦东-周浦10户合租 | 朝东南-次卧 | 22M²</div>

                        <div class="pro-lab">
                            <span>月付</span> <span>新上架</span> <span>独卫</span> <span>非一楼</span>

                        </div>
                    </div>
                </div>
                <div class="list-index-unit">
                    <a href="http://sh.baletu.com/house/2530878.html?view_source=6"
                        pos="2" class="list-index-pic"> <img width="360" alt="双秀西园B园"
                        src="<%=basePath%>statics/picture/oss_5ac31c0e389f1.jpg@!380_280.png">
                    </a>
                    <div class="list-index-text">
                        <div class="unit-index-title">
                            <a href="http://sh.baletu.com/house/2530878.html?view_source=6">双秀西园B园</a>
                            <span class="price"><em>￥</em>1700</span>
                        </div>
                        <div class="list-pic-ps">浦东-周浦3户合租 | 朝东北-次卧 | 18M²</div>

                        <div class="pro-lab">
                            <span>月付</span> <span>新上架</span> <span>非一楼</span>

                        </div>
                    </div>
                </div>
                <div class="list-index-unit">
                    <a href="http://sh.baletu.com/house/898107.html?view_source=6"
                        pos="3" class="list-index-pic"> <img width="360" alt="龙悦小区1区"
                        src="<%=basePath%>statics/picture/oss_592523ce1e4fc.jpg@!380_280.png">
                    </a>
                    <div class="list-index-text">
                        <div class="unit-index-title">
                            <a href="http://sh.baletu.com/house/898107.html?view_source=6">龙悦小区1区</a>
                            <span class="price"><em>￥</em>1100</span>
                        </div>
                        <div class="list-pic-ps">松江-九亭5户合租 | 朝南-次卧 | 17M²</div>

                        <div class="pro-lab">
                            <span>月付</span> <span>朝南</span> <span>独卫</span> <span>电梯房</span>

                        </div>
                    </div>
                </div>
                <div class="list-index-unit">
                    <a href="http://sh.baletu.com/house/574545.html?view_source=6"
                        pos="4" class="list-index-pic"> <img width="360" alt="爱博二村"
                        src="<%=basePath%>statics/picture/oss_5a9e016ae56fb.jpg@!380_280.png">
                    </a>
                    <div class="list-index-text">
                        <div class="unit-index-title">
                            <a href="http://sh.baletu.com/house/574545.html?view_source=6">爱博二村</a>
                            <span class="price"><em>￥</em>1500</span>
                        </div>
                        <div class="list-pic-ps">闵行-华漕6户合租 | 朝北-次卧 | 18M²</div>

                        <div class="pro-lab">
                            <span>月付</span> <span>带阳台</span> <span>电梯房</span> <span>非一楼</span>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="list-index">
            <div class="list-index-title">
                <h2>公寓房源</h2>
                <a href="/zhaofang/c3/?is_index=1" class="more" id="gongyu_more">更多房源</a>
            </div>
            <div class="list-index-center clearfix" id="index_department">
                <div class="list-index-unit">
                    <a href="http://sh.baletu.com/house/260696.html?view_source=6"
                        pos="1" class="list-index-pic"> <img width="360" alt="暖暖花园公寓"
                        src="<%=basePath%>statics/picture/57492a0374921.jpg@!380_280.png">
                    </a>
                    <div class="list-index-text">
                        <div class="unit-index-title">
                            <a href="http://sh.baletu.com/house/260696.html?view_source=6">暖暖花园公寓</a>
                            <span class="price"><em>￥</em>2180</span>
                        </div>
                        <div class="list-pic-ps">浦东-曹路公寓 | 1室0厅1卫 | 25M²</div>

                        <div class="pro-lab">
                            <span>月付</span> <span>朝南</span> <span>独卫</span>

                        </div>
                    </div>
                </div>
                <div class="list-index-unit">
                    <a href="http://sh.baletu.com/house/718006.html?view_source=6"
                        pos="2" class="list-index-pic"> <img width="360" alt="巢云酒店式公寓"
                        src="<%=basePath%>statics/picture/oss_58b7851342778.jpg@!380_280.png">
                    </a>
                    <div class="list-index-text">
                        <div class="unit-index-title">
                            <a href="http://sh.baletu.com/house/718006.html?view_source=6">巢云酒店式公寓</a>
                            <span class="price"><em>￥</em>900</span>
                        </div>
                        <div class="list-pic-ps">嘉定-安亭公寓 | 1室0厅1卫 | 22M²</div>

                        <div class="pro-lab">
                            <span>月付</span> <span>独卫</span> <span>家电全配</span> <span>非一楼</span>

                        </div>
                    </div>
                </div>
                <div class="list-index-unit">
                    <a href="http://sh.baletu.com/house/1008501.html?view_source=6"
                        pos="3" class="list-index-pic"> <img width="360" alt="亭安逸宿公寓"
                        src="<%=basePath%>statics/picture/oss_595f1aff4d71e.jpg@!380_280.png">
                    </a>
                    <div class="list-index-text">
                        <div class="unit-index-title">
                            <a href="http://sh.baletu.com/house/1008501.html?view_source=6">亭安逸宿公寓</a>
                            <span class="price"><em>￥</em>1200</span>
                        </div>
                        <div class="list-pic-ps">嘉定-安亭公寓 | 1室0厅1卫 | 23M²</div>

                        <div class="pro-lab">
                            <span>月付</span> <span>近地铁</span> <span>主卧</span> <span>朝南</span>

                        </div>
                    </div>
                </div>
                <div class="list-index-unit">
                    <a href="http://sh.baletu.com/house/1030507.html?view_source=6"
                        pos="4" class="list-index-pic"> <img width="360" alt="小小港湾"
                        src="<%=basePath%>statics/picture/oss_5965eb6c4ec69.jpg@!380_280.png">
                    </a>
                    <div class="list-index-text">
                        <div class="unit-index-title">
                            <a href="http://sh.baletu.com/house/1030507.html?view_source=6">小小港湾</a>
                            <span class="price"><em>￥</em>1000</span>
                        </div>
                        <div class="list-pic-ps">嘉定-安亭公寓 | 1室0厅1卫 | 22M²</div>

                        <div class="pro-lab">
                            <span>月付</span> <span>独卫</span> <span>非一楼</span> <span>非隔断</span>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        //  $(document).ready(function(){
        //      function insertHtmlToZhenxuan(objectId, item, mark, pos){
        //            pos = pos || "";
        //
        //            var html = ' <div class="list-index-unit">'+
        //                    '<a href="'+item['link']+'" pos = ' + pos + ' class="list-index-pic"><img width="360" src="'+item['main_pic'] +'"></a>'+
        //                   ' <div class="list-index-text">'+
        //                        '<div class="unit-index-title">'+
        //                            '<a href="'+item['link']+'">'+item['title'] +'</a>'+
        //                            '<span class="price"><em>￥</em>'+item['month_rent'] +'</span>'+
        //                        '</div>'+
        //                        '<div class="list-pic-ps">'+item['area_data'] +item['desc'] +'</div>'+
        //                        '<div class="pro-lab">';
        //                        $.each(item['labels'],function(k,v){
        //                            if ( k < 4) {
        //                               html += '<span>' + v + '</span>';
        //                            }
        //                        });
        //                html += '</div></div></div>';
        //
        //          $('#'+objectId).append(html);
        //      }
        //      var indexUrl = '/ajax/getIndexData';
        //        var pos  = 1;
        //
        //      $.getJSON(indexUrl,{},function (data) {
        //            var hezu = 0;
        //            var zhengzu = 0;
        //            var department = 0;
        //            $.each(data['hezu'],function(k,v){
        //                var item =v;
        //                var g = (parseInt(k) + 1);
        //                var mark = 'G10'+g
        //                insertHtmlToZhenxuan('index_hezu',item,mark, pos);
        //                hezu = 1;
        //                pos++;
        //            });
        //            if (hezu == 1) {
        //                $('#index_hezu').parent().show();
        //            }
        //            pos = 1;
        //            $.each(data['zhengzu'],function(kk,vv){
        //                var item1 = vv;
        //                var g = (parseInt(kk) + 1);
        //                var mark = 'G20'+g;
        //                insertHtmlToZhenxuan('index_zhengzu',item1,mark, pos);
        //                zhengzu = 1;
        //                pos++;
        //            });
        //            if (zhengzu == 1) {
        //                $('#index_zhengzu').parent().show();
        //            }
        //            pos = 1;
        //            $.each(data['department'],function(kkk,vvv){
        //                var item2 = vvv;
        //                var g = (parseInt(kkk) + 1);
        //                var mark = 'G30'+g
        //                insertHtmlToZhenxuan('index_department',item2,mark, pos);
        //                department = 1;
        //                pos++;
        //            });
        //            if (department == 1) {
        //                $('#index_department').parent().show();
        //            }
        //      });
        //  });
        //input search
        $('.search-input').focus(function() {
            $('.search-bot').show();
        });
        $(document).click(function() {
            $('.search-bot').hide();
        });
        $(".search-input").click(function(event) {
            event.stopPropagation();
        });
        // var isTurn=false;
        // $('.pageLink-unit-word').mouseover(function () {
        //     if(isTurn==false){
        //         $(this).next('.pageLink-unit-bg').animate({top:'0px'},250);
        //         isTurn=true;
        //     }
        // })
        // $('.pageLink-unit-word').mouseleave(function () {
        //     if(isTurn==true){
        //         $(this).next('.pageLink-unit-bg').animate({top:'240px'},250);
        //         isTurn=false;
        //         return;
        //     }

        // })
    </script>
    </div>
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
        var imImgSrc = "//js.baletoo.cn" + "/static/pc/../images/im";

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
                src="<%=basePath%>statics/picture/c998c5e8798f4042932569e53bfd9e4c.gif" />
        </div>
    </noscript>

</body>
</html>
