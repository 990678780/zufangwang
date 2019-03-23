<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
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
          href="//js.baletoo.cn/static/pc/images/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" type="text/css"
          href="<%=basePath%>statics/css/common.css"/>

    <link rel="canonical" href="http://sh.baletu.com/zhaofang/"/>
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
            <span><img src="<%=basePath%>statics/picture/close.png"/> </span>
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
            <div class="region" style="">
                <a href="javascript:void(0)"> <!-- <span class="icon icon-pos-grey"></span> -->
                    <span class="icon icon-down-white"></span> 上海 </a>
            </div>
            <div class="nav">
                <ul>
                    <li><a id="navM3" mark="I3" href="<%=basePath%>index">首页</a>
                        <div class="nav-line"></div>
                    </li>
                    <li class="active"><a id="navM4" mark="I4"
                                          href="<%=basePath%>zhaofang">立即找房</a>
                        <div class="nav-line"></div>
                    </li>
                    <li><a id="navM6" mark="I6" href="<%=basePath%>createhouse">发布房源</a>
                        <div class="nav-line"></div>
                    </li>
                    <li><a id="navM6" mark="I6" href="<%=basePath%>findsuble/index">找室友</a></a>
                        <div class="nav-line"></div>
                    </li>
                </ul>
            </div>
            <div class="login-link login-link-new">
                <ul class="clearfix">
                    <li><span class="icon_people_white"></span></li>
                    <li><a id="navM8" mark="I8" href="<%=basePath%>register">注册</a>
                    </li>
                    <li><a id="navM7" mark="I7" href="<%=basePath%>login">登录</a></li>
                </ul>
            </div>
        </div>
    </div>

    <script src="<%=basePath%>statics/js/header.js"></script>

    <!--search-->
    <div class="search-line">
        <div class="search-main out">
            <h1 class="logo">
                <a href="/"> <img title="上海巴乐兔租房" alt="上海巴乐兔租房"
                                  src="<%=basePath%>statics/picture/logo2x.png"
                                  data-rjs="http://www.baletu.com/Public/logo/logo3x.png"/> </a>
            </h1>
            <form name="form_search" onsubmit="return searchForm();">
                <input name="prefixUrl" value="/zhaofang/" type="hidden"/>
                <%--<ul class="clearfix">--%>
                    <%--<li><input type="text" name="kw" value=""--%>
                               <%--placeholder="输入区域、板块或小区名开始找房" class="search-input"/>--%>
                    <%--</li>--%>
                    <%--<li><a id="zhaofang_search" mark="立即找房"--%>
                           <%--class="btn-red btn-search" href="javascript:void(0);"--%>
                           <%--onclick="javascript:searchForm();">搜索</a>--%>
                    <%--</li>--%>
                    <%--<li><a id="" mark="地图找房" class="btn-green btn-search"--%>
                           <%--href="/map"> <img alt="地图找房"--%>
                                             <%--src="<%=basePath%>statics/picture/location.png"--%>
                                             <%--data-rjs="//js.baletoo.cn/static/pc/images/mac/zhaofang/location_mac.png"/>地图找房</a>--%>
                    <%--</li>--%>
                <%--</ul>--%>
                <div class="search-map-link pos-r out">
                    <a id="zhaofang_map" mark="I7" class="btn-map" href="/map"><span
                            class="bg-ditu_r"></span> 地图找房</a>
                </div>
            </form>
        </div>
    </div>
    <!--search end-->

    <style type="text/css">
        .search-map-link {
            display: none;
        }

        .house_option a {
            width: 93px;
            display: inline-block;
        }

        .house_option_wuxian {
            width: 28px !important;
        }

        .btn-line-red {
            width: 48px !important;
        }
    </style>
    <link rel="stylesheet" href="<%=basePath%>statics/css/zhaofang.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>statics/css/kkpager_blue.css"/>
    <!--导航-->
    <div class="mapOut">
        <div class="out">
            <div class="map">
                巴乐兔上海站 &gt; <a href="/zhaofang/">立即找房</a>
            </div>
        </div>
    </div>
    <!--导航 end-->
    <div class="main out">
        <div class="filter-out">
            <div class="filter-tab">
                <ul class="clearfix">
                    <li class="active" data-re="1"><a href="javascript:void(0)"
                                                      id="quyue_zhaofang">区域找房</a></li>
                    <%--<li class="" data-re="2"><a href="javascript:void(0)"--%>
                    <%--id="ditie_zhaofang">地铁找房</a></li>--%>
                    <%--<li><a href="/map" style="background: none;color: #3a3b3c;">地图找房</a>--%>
                    <%--</li>--%>
                </ul>
            </div>
            <!--筛选条件-->
            <div class="filter">
                <div class="tab-center">
                    <!--二级区域-->
                    <dl class="clearfix">
                        <dt>区域:</dt>
                        <dd>
                            <ul id="PBAarea" class="line-list clearfix">
                                <li class="li_buxian" id="li_region" mark="pudong">
                                    <a href="javascript:" class="area">不限</a>
                                </li>
                                <li class="li_pudong" id="li_region" mark="pudong">
                                    <a href="javascript:" class="area">浦东</a>
                                </li>
                                <li class="li_baoshan" id="li_region" mark="baoshan">
                                    <a href="javascript:" class="area">宝山</a>
                                </li>
                                <li class="li_minhang" id="li_region" mark="minhang">
                                    <a href="/javascript:" class="area">闵行</a>
                                </li>
                            </ul>

                            <ul>


                                <li class="li_songjiang" id="li_region" mark="songjiang"><a
                                        href="javascript:" class="area">松江</a>
                                </li>
                                <li class="li_jiading" id="li_region" mark="jiading"><a
                                        href="javascript:" class="">嘉定</a>
                                </li>
                                <li class="li_putuo" id="li_region" mark="putuo"><a
                                        href="/zhaofang/putuo/" class="">普陀</a>
                                </li>
                                <li class="li_xuhui" id="li_region" mark="xuhui"><a
                                        href="/zhaofang/xuhui/" class="">徐汇</a>
                                </li>
                                <li class="li_yangpu" id="li_region" mark="yangpu"><a
                                        href="/zhaofang/yangpu/" class="">杨浦</a>
                                </li>
                                <li class="li_changning" id="li_region" mark="changning"><a
                                        href="/zhaofang/changning/" class="">长宁</a>
                                </li>
                                <li class="li_hongkou" id="li_region" mark="hongkou"><a
                                        href="/zhaofang/hongkou/" class="">虹口</a>
                                </li>
                                <li class="li_qingpu" id="li_region" mark="qingpu"><a
                                        href="/zhaofang/qingpu/" class="">青浦</a>
                                </li>
                                <li class="li_jingan" id="li_region" mark="jingan"><a
                                        href="/zhaofang/jingan/" class="">静安</a>
                                </li>
                                <li class="li_huangpu" id="li_region" mark="huangpu"><a
                                        href="/zhaofang/huangpu/" class="">黄浦</a>
                                </li>
                                <li class="li_fengxian" id="li_region" mark="fengxian"><a
                                        href="/zhaofang/fengxian/" class="">奉贤</a>
                                </li>
                                <li class="li_jinshan" id="li_region" mark="jinshan"><a
                                        href="/zhaofang/jinshan/" class="">金山</a>
                                </li>
                                <li class="li_chongming" id="li_region" mark="chongming"><a
                                        href="/zhaofang/chongming/" class="">崇明</a>
                                </li>
                            </ul>
                        </dd>
                    </dl>
                    <!--二级区域-->


                    <!--三级区域-->
                    <div class="pos-r pos_inline li_leveltwo" style="display: none;"
                         id="div_pudong" style="display: none;">
                        <div class="down-list" style="text-align: center;">
                            <ul class="pop-list clearfix">
                                <li mark="pudong"><a id="pudong_quanbu"
                                                     href="/zhaofang/pudong/" class="text-specific">全部</a></li>
                                <li mark="pudong"><a id="beicai" class=""
                                                     href="/zhaofang/beicai/"> <b>B</b> 北蔡 </a>
                                </li>
                                <li mark="pudong"><a id="biyun" class=""
                                                     href="/zhaofang/biyun/"> 碧云 </a>
                                </li>
                                <li mark="pudong"><a id="caolu" class=""
                                                     href="/zhaofang/caolu/"> <b>C</b> 曹路 </a>
                                </li>
                                <li mark="pudong"><a id="chuansha" class=""
                                                     href="/zhaofang/chuansha/"> 川沙 </a>
                                </li>
                                <li mark="pudong"><a id="hangtou" class=""
                                                     href="/zhaofang/hangtou/"> <b>H</b> 航头 </a>
                                </li>
                                <li mark="pudong"><a id="huamu" class=""
                                                     href="/zhaofang/huamu/"> 花木 </a>
                                </li>
                                <li mark="pudong"><a id="huinan" class=""
                                                     href="/zhaofang/huinan/"> 惠南 </a>
                                </li>
                                <li mark="pudong"><a id="jinqiao" class=""
                                                     href="/zhaofang/jinqiao/"> <b>J</b> 金桥 </a>
                                </li>
                                <li mark="pudong"><a id="jinyang" class=""
                                                     href="/zhaofang/jinyang/"> 金杨 </a>
                                </li>
                                <li mark="pudong"><a id="kangqiao" class=""
                                                     href="/zhaofang/kangqiao/"> <b>K</b> 康桥 </a>
                                </li>
                                <li mark="pudong"><a id="lianyang" class=""
                                                     href="/zhaofang/lianyang/"> <b>L</b> 联洋 </a>
                                </li>
                                <li mark="pudong"><a id="lingangxincheng" class=""
                                                     href="/zhaofang/lingangxincheng/"> 临港新城 </a>
                                </li>
                                <li mark="pudong"><a id="liuli" class=""
                                                     href="/zhaofang/liuli/"> 六里 </a>
                                </li>
                                <li mark="pudong"><a id="lujiazui" class=""
                                                     href="/zhaofang/lujiazui/"> 陆家嘴 </a>
                                </li>
                                <li mark="pudong"><a id="meiyuan" class=""
                                                     href="/zhaofang/meiyuan/"> <b>M</b> 梅园 </a>
                                </li>
                                <li mark="pudong"><a id="nanmatou" class=""
                                                     href="/zhaofang/nanmatou/"> <b>N</b> 南码头 </a>
                                </li>
                                <li mark="pudong"><a id="nicheng" class=""
                                                     href="/zhaofang/nicheng/"> 泥城 </a>
                                </li>
                                <li mark="pudong"><a id="pudongwaihuan" class=""
                                                     href="/zhaofang/pudongwaihuan/"> <b>P</b> 浦东外环 </a>
                                </li>
                                <li mark="pudong"><a id="sanlin" class=""
                                                     href="/zhaofang/sanlin/"> <b>S</b> 三林 </a>
                                </li>
                                <li mark="pudong"><a id="shangnan" class=""
                                                     href="/zhaofang/shangnan/"> 上南 </a>
                                </li>
                                <li mark="pudong"><a id="shibobinjiang" class=""
                                                     href="/zhaofang/shibobinjiang/"> 世博滨江 </a>
                                </li>
                                <li mark="pudong"><a id="shijigongyuan" class=""
                                                     href="/zhaofang/shijigongyuan/"> 世纪公园 </a>
                                </li>
                                <li mark="pudong"><a id="tangzhen" class=""
                                                     href="/zhaofang/tangzhen/"> <b>T</b> 唐镇 </a>
                                </li>
                                <li mark="pudong"><a id="tangqiao" class=""
                                                     href="/zhaofang/tangqiao/"> 塘桥 </a>
                                </li>
                                <li mark="pudong"><a id="waigaoqiao" class=""
                                                     href="/zhaofang/waigaoqiao/"> <b>W</b> 外高桥 </a>
                                </li>
                                <li mark="pudong"><a id="weifang" class=""
                                                     href="/zhaofang/weifang/"> 潍坊 </a>
                                </li>
                                <li mark="pudong"><a id="xinchang" class=""
                                                     href="/zhaofang/xinchang/"> <b>X</b> 新场 </a>
                                </li>
                                <li mark="pudong"><a id="yangdong" class=""
                                                     href="/zhaofang/yangdong/"> <b>Y</b> 杨东 </a>
                                </li>
                                <li mark="pudong"><a id="yangjing" class=""
                                                     href="/zhaofang/yangjing/"> 洋泾 </a>
                                </li>
                                <li mark="pudong"><a id="yuanshen" class=""
                                                     href="/zhaofang/yuanshen/"> 源深 </a>
                                </li>
                                <li mark="pudong"><a id="zhangjiang" class=""
                                                     href="/zhaofang/zhangjiang/"> <b>Z</b> 张江 </a>
                                </li>
                                <li mark="pudong"><a id="zhoupu" class=""
                                                     href="/zhaofang/zhoupu/"> 周浦 </a>
                                </li>
                                <li mark="pudong"><a id="zhuqiao" class=""
                                                     href="/zhaofang/zhuqiao/"> 祝桥 </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="pos-r pos_inline li_leveltwo" style="display: none;"
                         id="div_baoshan" style="display: none;">
                        <div class="down-list" style="text-align: center;">
                            <ul class="pop-list clearfix">
                                <li mark="baoshan"><a id="baoshan_quanbu"
                                                      href="/zhaofang/baoshan/" class="text-specific">全部</a></li>
                                <li mark="baoshan"><a id="dachang" class=""
                                                      href="/zhaofang/dachang/"> <b>D</b> 大场 </a>
                                </li>
                                <li mark="baoshan"><a id="dahua" class=""
                                                      href="/zhaofang/dahua/"> 大华 </a>
                                </li>
                                <li mark="baoshan"><a id="gaojing" class=""
                                                      href="/zhaofang/gaojing/"> <b>G</b> 高境 </a>
                                </li>
                                <li mark="baoshan"><a id="gongfu" class=""
                                                      href="/zhaofang/gongfu/"> 共富 </a>
                                </li>
                                <li mark="baoshan"><a id="gongkang" class=""
                                                      href="/zhaofang/gongkang/"> 共康 </a>
                                </li>
                                <li mark="baoshan"><a id="gucun" class=""
                                                      href="/zhaofang/gucun/"> 顾村 </a>
                                </li>
                                <li mark="baoshan"><a id="luodian" class=""
                                                      href="/zhaofang/luodian/"> <b>L</b> 罗店 </a>
                                </li>
                                <li mark="baoshan"><a id="luojing" class=""
                                                      href="/zhaofang/luojing/"> 罗泾 </a>
                                </li>
                                <li mark="baoshan"><a id="shangda" class=""
                                                      href="/zhaofang/shangda/"> <b>S</b> 上大 </a>
                                </li>
                                <li mark="baoshan"><a id="sitang" class=""
                                                      href="/zhaofang/sitang/"> 泗塘 </a>
                                </li>
                                <li mark="baoshan"><a id="songbao" class=""
                                                      href="/zhaofang/songbao/"> 淞宝 </a>
                                </li>
                                <li mark="baoshan"><a id="songnan" class=""
                                                      href="/zhaofang/songnan/"> 淞南 </a>
                                </li>
                                <li mark="baoshan"><a id="tonghe" class=""
                                                      href="/zhaofang/tonghe/"> <b>T</b> 通河 </a>
                                </li>
                                <li mark="baoshan"><a id="yangxing" class=""
                                                      href="/zhaofang/yangxing/"> <b>Y</b> 杨行 </a>
                                </li>
                                <li mark="baoshan"><a id="yuepu" class=""
                                                      href="/zhaofang/yuepu/"> 月浦 </a>
                                </li>
                                <li mark="baoshan"><a id="zhangmiao" class=""
                                                      href="/zhaofang/zhangmiao/"> <b>Z</b> 张庙 </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="pos-r pos_inline li_leveltwo" style="display: none;"
                         id="div_minhang" style="display: none;">
                        <div class="down-list" style="text-align: center;">
                            <ul class="pop-list clearfix">
                                <li mark="minhang"><a id="minhang_quanbu"
                                                      href="/zhaofang/minhang/" class="text-specific">全部</a></li>
                                <li mark="minhang"><a id="chunshen" class=""
                                                      href="/zhaofang/chunshen/"> <b>C</b> 春申 </a>
                                </li>
                                <li mark="minhang"><a id="gumeiluoyang" class=""
                                                      href="/zhaofang/gumeiluoyang/"> <b>G</b> 古美罗阳 </a>
                                </li>
                                <li mark="minhang"><a id="hanghua" class=""
                                                      href="/zhaofang/hanghua/"> <b>H</b> 航华 </a>
                                </li>
                                <li mark="minhang"><a id="huacao" class=""
                                                      href="/zhaofang/huacao/"> 华漕 </a>
                                </li>
                                <li mark="minhang"><a id="jiangchuanlu" class=""
                                                      href="/zhaofang/jiangchuanlu/"> <b>J</b> 江川路 </a>
                                </li>
                                <li mark="minhang"><a id="jinhongqiao" class=""
                                                      href="/zhaofang/jinhongqiao/"> 金虹桥 </a>
                                </li>
                                <li mark="minhang"><a id="jinganxincheng" class=""
                                                      href="/zhaofang/jinganxincheng/"> 静安新城 </a>
                                </li>
                                <li mark="minhang"><a id="longbaijinhui" class=""
                                                      href="/zhaofang/longbaijinhui/"> <b>L</b> 龙柏金汇 </a>
                                </li>
                                <li mark="minhang"><a id="laominxing" class=""
                                                      href="/zhaofang/laominxing/"> 老闵行 </a>
                                </li>
                                <li mark="minhang"><a id="maqiao" class=""
                                                      href="/zhaofang/maqiao/"> <b>M</b> 马桥 </a>
                                </li>
                                <li mark="minhang"><a id="meilong" class=""
                                                      href="/zhaofang/meilong/"> 梅陇 </a>
                                </li>
                                <li mark="minhang"><a id="pujiang" class=""
                                                      href="/zhaofang/pujiang/"> <b>P</b> 浦江 </a>
                                </li>
                                <li mark="minhang"><a id="qibao" class=""
                                                      href="/zhaofang/qibao/"> <b>Q</b> 七宝 </a>
                                </li>
                                <li mark="minhang"><a id="wujing" class=""
                                                      href="/zhaofang/wujing/"> <b>W</b> 吴泾 </a>
                                </li>
                                <li mark="minhang"><a id="xinzhuang" class=""
                                                      href="/zhaofang/xinzhuang/"> <b>X</b> 莘庄 </a>
                                </li>
                                <li mark="minhang"><a id="zhuanqiao" class=""
                                                      href="/zhaofang/zhuanqiao/"> <b>Z</b> 颛桥 </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="pos-r pos_inline li_leveltwo" style="display: none;"
                         id="div_songjiang" style="display: none;">
                        <div class="down-list" style="text-align: center;">
                            <ul class="pop-list clearfix">
                                <li mark="songjiang"><a id="songjiang_quanbu"
                                                        href="/zhaofang/songjiang/" class="text-specific">全部</a></li>
                                <li mark="songjiang"><a id="dongjing" class=""
                                                        href="/zhaofang/dongjing/"> <b>D</b> 洞泾 </a>
                                </li>
                                <li mark="songjiang"><a id="jiuting" class=""
                                                        href="/zhaofang/jiuting/"> <b>J</b> 九亭 </a>
                                </li>
                                <li mark="songjiang"><a id="sheshan" class=""
                                                        href="/zhaofang/sheshan/"> <b>S</b> 佘山 </a>
                                </li>
                                <li mark="songjiang"><a id="songjiangchengqu" class=""
                                                        href="/zhaofang/songjiangchengqu/"> 松江城区 </a>
                                </li>
                                <li mark="songjiang"><a id="songjiangdaxuecheng" class=""
                                                        href="/zhaofang/songjiangdaxuecheng/"> 松江大学城 </a>
                                </li>
                                <li mark="songjiang"><a id="songjiangxincheng" class=""
                                                        href="/zhaofang/songjiangxincheng/"> 松江新城 </a>
                                </li>
                                <li mark="songjiang"><a id="songjianglaocheng" class=""
                                                        href="/zhaofang/songjianglaocheng/"> 松江老城 </a>
                                </li>
                                <li mark="songjiang"><a id="sijing" class=""
                                                        href="/zhaofang/sijing/"> 泗泾 </a>
                                </li>
                                <li mark="songjiang"><a id="xiaokunshan" class=""
                                                        href="/zhaofang/xiaokunshan/"> <b>X</b> 小昆山 </a>
                                </li>
                                <li mark="songjiang"><a id="xinqiao" class=""
                                                        href="/zhaofang/xinqiao/"> 新桥 </a>
                                </li>
                                <li mark="songjiang"><a id="xinmin" class=""
                                                        href="/zhaofang/xinmin/"> 莘闵 </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="pos-r pos_inline li_leveltwo" style="display: none;"
                         id="div_jiading" style="display: none;">
                        <div class="down-list" style="text-align: center;">
                            <ul class="pop-list clearfix">
                                <li mark="jiading"><a id="jiading_quanbu"
                                                      href="/zhaofang/jiading/" class="text-specific">全部</a></li>
                                <li mark="jiading"><a id="anting" class=""
                                                      href="/zhaofang/anting/"> <b>A</b> 安亭 </a>
                                </li>
                                <li mark="jiading"><a id="fengzhuang" class=""
                                                      href="/zhaofang/fengzhuang/"> <b>F</b> 丰庄 </a>
                                </li>
                                <li mark="jiading"><a id="jiadingchengqu" class=""
                                                      href="/zhaofang/jiadingchengqu/"> <b>J</b> 嘉定城区 </a>
                                </li>
                                <li mark="jiading"><a id="jiadingxincheng" class=""
                                                      href="/zhaofang/jiadingxincheng/"> 嘉定新城 </a>
                                </li>
                                <li mark="jiading"><a id="jiadingzhen" class=""
                                                      href="/zhaofang/jiadingzhen/"> 嘉定镇 </a>
                                </li>
                                <li mark="jiading"><a id="jiangqiaoxincheng" class=""
                                                      href="/zhaofang/jiangqiaoxincheng/"> 江桥新城 </a>
                                </li>
                                <li mark="jiading"><a id="juyuanxinqu" class=""
                                                      href="/zhaofang/juyuanxinqu/"> 菊园新区 </a>
                                </li>
                                <li mark="jiading"><a id="nanxiang" class=""
                                                      href="/zhaofang/nanxiang/"> <b>N</b> 南翔 </a>
                                </li>
                                <li mark="jiading"><a id="zhenxin" class=""
                                                      href="/zhaofang/zhenxin/"> <b>Z</b> 真新 </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="pos-r pos_inline li_leveltwo" style="display: none;"
                         id="div_putuo" style="display: none;">
                        <div class="down-list" style="text-align: center;">
                            <ul class="pop-list clearfix">
                                <li mark="putuo"><a id="putuo_quanbu"
                                                    href="/zhaofang/putuo/" class="text-specific">全部</a></li>
                                <li mark="putuo"><a id="caoyang" class=""
                                                    href="/zhaofang/caoyang/"> <b>C</b> 曹杨 </a>
                                </li>
                                <li mark="putuo"><a id="changshoulu" class=""
                                                    href="/zhaofang/changshoulu/"> 长寿路 </a>
                                </li>
                                <li mark="putuo"><a id="changzheng" class=""
                                                    href="/zhaofang/changzheng/"> 长征 </a>
                                </li>
                                <li mark="putuo"><a id="changfeng" class=""
                                                    href="/zhaofang/changfeng/"> 长风 </a>
                                </li>
                                <li mark="putuo"><a id="guangxin" class=""
                                                    href="/zhaofang/guangxin/"> <b>G</b> 光新 </a>
                                </li>
                                <li mark="putuo"><a id="ganquanyichuan" class=""
                                                    href="/zhaofang/ganquanyichuan/"> 甘泉宜川 </a>
                                </li>
                                <li mark="putuo"><a id="taopu" class=""
                                                    href="/zhaofang/taopu/"> <b>T</b> 桃浦 </a>
                                </li>
                                <li mark="putuo"><a id="wanli" class=""
                                                    href="/zhaofang/wanli/"> <b>W</b> 万里 </a>
                                </li>
                                <li mark="putuo"><a id="wuning" class=""
                                                    href="/zhaofang/wuning/"> 武宁 </a>
                                </li>
                                <li mark="putuo"><a id="zhongyuanliangwancheng" class=""
                                                    href="/zhaofang/zhongyuanliangwancheng/"> <b>Z</b> 中远两湾城 </a>
                                </li>
                                <li mark="putuo"><a id="zhenguang" class=""
                                                    href="/zhaofang/zhenguang/"> 真光 </a>
                                </li>
                                <li mark="putuo"><a id="zhenru" class=""
                                                    href="/zhaofang/zhenru/"> 真如 </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="pos-r pos_inline li_leveltwo" style="display: none;"
                         id="div_xuhui" style="display: none;">
                        <div class="down-list" style="text-align: center;">
                            <ul class="pop-list clearfix">
                                <li mark="xuhui"><a id="xuhui_quanbu"
                                                    href="/zhaofang/xuhui/" class="text-specific">全部</a></li>
                                <li mark="xuhui"><a id="binjiang" class=""
                                                    href="/zhaofang/binjiang/"> <b>B</b> 滨江 </a>
                                </li>
                                <li mark="xuhui"><a id="changqiao" class=""
                                                    href="/zhaofang/changqiao/"> <b>C</b> 长桥 </a>
                                </li>
                                <li mark="xuhui"><a id="fuxingzhonglu" class=""
                                                    href="/zhaofang/fuxingzhonglu/"> <b>F</b> 复兴中路 </a>
                                </li>
                                <li mark="xuhui"><a id="huadongligong" class=""
                                                    href="/zhaofang/huadongligong/"> <b>H</b> 华东理工 </a>
                                </li>
                                <li mark="xuhui"><a id="huajing" class=""
                                                    href="/zhaofang/huajing/"> 华泾 </a>
                                </li>
                                <li mark="xuhui"><a id="huaihaixilu" class=""
                                                    href="/zhaofang/huaihaixilu/"> 淮海西路 </a>
                                </li>
                                <li mark="xuhui"><a id="hunanlu" class=""
                                                    href="/zhaofang/hunanlu/"> 湖南路 </a>
                                </li>
                                <li mark="xuhui"><a id="jianguoxilu" class=""
                                                    href="/zhaofang/jianguoxilu/"> <b>J</b> 建国西路 </a>
                                </li>
                                <li mark="xuhui"><a id="kangjian" class=""
                                                    href="/zhaofang/kangjian/"> <b>K</b> 康健 </a>
                                </li>
                                <li mark="xuhui"><a id="longhua" class=""
                                                    href="/zhaofang/longhua/"> <b>L</b> 龙华 </a>
                                </li>
                                <li mark="xuhui"><a id="shanghainanzhan" class=""
                                                    href="/zhaofang/shanghainanzhan/"> <b>S</b> 上海南站 </a>
                                </li>
                                <li mark="xuhui"><a id="tianlin" class=""
                                                    href="/zhaofang/tianlin/"> <b>T</b> 田林 </a>
                                </li>
                                <li mark="xuhui"><a id="wantiguan" class=""
                                                    href="/zhaofang/wantiguan/"> <b>W</b> 万体馆 </a>
                                </li>
                                <li mark="xuhui"><a id="xujiahui" class=""
                                                    href="/zhaofang/xujiahui/"> <b>X</b> 徐家汇 </a>
                                </li>
                                <li mark="xuhui"><a id="xietulu" class=""
                                                    href="/zhaofang/xietulu/"> 斜土路 </a>
                                </li>
                                <li mark="xuhui"><a id="zhiwuyuan" class=""
                                                    href="/zhaofang/zhiwuyuan/"> <b>Z</b> 植物园 </a>
                                </li>
                                <li mark="xuhui"><a id="zhaojiabanglu" class=""
                                                    href="/zhaofang/zhaojiabanglu/"> 肇嘉浜路 </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="pos-r pos_inline li_leveltwo" style="display: none;"
                         id="div_yangpu" style="display: none;">
                        <div class="down-list" style="text-align: center;">
                            <ul class="pop-list clearfix">
                                <li mark="yangpu"><a id="yangpu_quanbu"
                                                     href="/zhaofang/yangpu/" class="text-specific">全部</a></li>
                                <li mark="yangpu"><a id="anshan" class=""
                                                     href="/zhaofang/anshan/"> <b>A</b> 鞍山 </a>
                                </li>
                                <li mark="yangpu"><a id="dongwaitan" class=""
                                                     href="/zhaofang/dongwaitan/"> <b>D</b> 东外滩 </a>
                                </li>
                                <li mark="yangpu"><a id="huangxinggongyuan" class=""
                                                     href="/zhaofang/huangxinggongyuan/"> <b>H</b> 黄兴公园 </a>
                                </li>
                                <li mark="yangpu"><a id="kongjianglu" class=""
                                                     href="/zhaofang/kongjianglu/"> <b>K</b> 控江路 </a>
                                </li>
                                <li mark="yangpu"><a id="wujiaochang" class=""
                                                     href="/zhaofang/wujiaochang/"> <b>W</b> 五角场 </a>
                                </li>
                                <li mark="yangpu"><a id="xinjiangwancheng" class=""
                                                     href="/zhaofang/xinjiangwancheng/"> <b>X</b> 新江湾城 </a>
                                </li>
                                <li mark="yangpu"><a id="yangpugongyuan" class=""
                                                     href="/zhaofang/yangpugongyuan/"> <b>Y</b> 杨浦公园 </a>
                                </li>
                                <li mark="yangpu"><a id="yangpudaqiao" class=""
                                                     href="/zhaofang/yangpudaqiao/"> 杨浦大桥 </a>
                                </li>
                                <li mark="yangpu"><a id="zhongyuanshequ" class=""
                                                     href="/zhaofang/zhongyuanshequ/"> <b>Z</b> 中原社区 </a>
                                </li>
                                <li mark="yangpu"><a id="zhoujiazuilu" class=""
                                                     href="/zhaofang/zhoujiazuilu/"> 周家嘴路 </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="pos-r pos_inline li_leveltwo" style="display: none;"
                         id="div_changning" style="display: none;">
                        <div class="down-list" style="text-align: center;">
                            <ul class="pop-list clearfix">
                                <li mark="changning"><a id="changning_quanbu"
                                                        href="/zhaofang/changning/" class="text-specific">全部</a></li>
                                <li mark="changning"><a id="beixinjing" class=""
                                                        href="/zhaofang/beixinjing/"> <b>B</b> 北新泾 </a>
                                </li>
                                <li mark="changning"><a id="dongwuyuan" class=""
                                                        href="/zhaofang/dongwuyuan/"> <b>D</b> 动物园 </a>
                                </li>
                                <li mark="changning"><a id="gubei" class=""
                                                        href="/zhaofang/gubei/"> <b>G</b> 古北 </a>
                                </li>
                                <li mark="changning"><a id="hongqiaolu" class=""
                                                        href="/zhaofang/hongqiaolu/"> <b>H</b> 虹桥路 </a>
                                </li>
                                <li mark="changning"><a id="tianshan" class=""
                                                        href="/zhaofang/tianshan/"> <b>T</b> 天山 </a>
                                </li>
                                <li mark="changning"><a id="xianxia" class=""
                                                        href="/zhaofang/xianxia/"> <b>X</b> 仙霞 </a>
                                </li>
                                <li mark="changning"><a id="xinhualu" class=""
                                                        href="/zhaofang/xinhualu/"> 新华路 </a>
                                </li>
                                <li mark="changning"><a id="zhenninglu" class=""
                                                        href="/zhaofang/zhenninglu/"> <b>Z</b> 镇宁路 </a>
                                </li>
                                <li mark="changning"><a id="zhongshangongyuan" class=""
                                                        href="/zhaofang/zhongshangongyuan/"> 中山公园 </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="pos-r pos_inline li_leveltwo" style="display: none;"
                         id="div_hongkou" style="display: none;">
                        <div class="down-list" style="text-align: center;">
                            <ul class="pop-list clearfix">
                                <li mark="hongkou"><a id="hongkou_quanbu"
                                                      href="/zhaofang/hongkou/" class="text-specific">全部</a></li>
                                <li mark="hongkou"><a id="beiwaitan" class=""
                                                      href="/zhaofang/beiwaitan/"> <b>B</b> 北外滩 </a>
                                </li>
                                <li mark="hongkou"><a id="hepinggongyuan" class=""
                                                      href="/zhaofang/hepinggongyuan/"> <b>H</b> 和平公园 </a>
                                </li>
                                <li mark="hongkou"><a id="jiangwanzhen" class=""
                                                      href="/zhaofang/jiangwanzhen/"> <b>J</b> 江湾镇 </a>
                                </li>
                                <li mark="hongkou"><a id="liangcheng" class=""
                                                      href="/zhaofang/liangcheng/"> <b>L</b> 凉城 </a>
                                </li>
                                <li mark="hongkou"><a id="linpinglu" class=""
                                                      href="/zhaofang/linpinglu/"> 临平路 </a>
                                </li>
                                <li mark="hongkou"><a id="luxungongyuan" class=""
                                                      href="/zhaofang/luxungongyuan/"> 鲁迅公园 </a>
                                </li>
                                <li mark="hongkou"><a id="quyang" class=""
                                                      href="/zhaofang/quyang/"> <b>Q</b> 曲阳 </a>
                                </li>
                                <li mark="hongkou"><a id="sichuanbeilu" class=""
                                                      href="/zhaofang/sichuanbeilu/"> <b>S</b> 四川北路 </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="pos-r pos_inline li_leveltwo" style="display: none;"
                         id="div_qingpu" style="display: none;">
                        <div class="down-list" style="text-align: center;">
                            <ul class="pop-list clearfix">
                                <li mark="qingpu"><a id="qingpu_quanbu"
                                                     href="/zhaofang/qingpu/" class="text-specific">全部</a></li>
                                <li mark="qingpu"><a id="baihe" class=""
                                                     href="/zhaofang/baihe/"> <b>B</b> 白鹤 </a>
                                </li>
                                <li mark="qingpu"><a id="huaxin" class=""
                                                     href="/zhaofang/huaxin/"> <b>H</b> 华新 </a>
                                </li>
                                <li mark="qingpu"><a id="qingpubeibu" class=""
                                                     href="/zhaofang/qingpubeibu/"> <b>Q</b> 青浦北部 </a>
                                </li>
                                <li mark="qingpu"><a id="qingpuxincheng" class=""
                                                     href="/zhaofang/qingpuxincheng/"> 青浦新城 </a>
                                </li>
                                <li mark="qingpu"><a id="xujing" class=""
                                                     href="/zhaofang/xujing/"> <b>X</b> 徐泾 </a>
                                </li>
                                <li mark="qingpu"><a id="zhujiajiao" class=""
                                                     href="/zhaofang/zhujiajiao/"> <b>Z</b> 朱家角 </a>
                                </li>
                                <li mark="qingpu"><a id="zhaoxiang" class=""
                                                     href="/zhaofang/zhaoxiang/"> 赵巷 </a>
                                </li>
                                <li mark="qingpu"><a id="zhonggu" class=""
                                                     href="/zhaofang/zhonggu/"> 重固 </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="pos-r pos_inline li_leveltwo" style="display: none;"
                         id="div_jingan" style="display: none;">
                        <div class="down-list" style="text-align: center;">
                            <ul class="pop-list clearfix">
                                <li mark="jingan"><a id="jingan_quanbu"
                                                     href="/zhaofang/jingan/" class="text-specific">全部</a></li>
                                <li mark="jingan"><a id="caojiadu" class=""
                                                     href="/zhaofang/caojiadu/"> <b>C</b> 曹家渡 </a>
                                </li>
                                <li mark="jingan"><a id="daninglvdi" class=""
                                                     href="/zhaofang/daninglvdi/"> <b>D</b> 大宁绿地 </a>
                                </li>
                                <li mark="jingan"><a id="jiangninglu" class=""
                                                     href="/zhaofang/jiangninglu/"> <b>J</b> 江宁路 </a>
                                </li>
                                <li mark="jingan"><a id="jingansi" class=""
                                                     href="/zhaofang/jingansi/"> 静安寺 </a>
                                </li>
                                <li mark="jingan"><a id="nanjingxilu" class=""
                                                     href="/zhaofang/nanjingxilu/"> <b>N</b> 南京西路 </a>
                                </li>
                                <li mark="jingan"><a id="pengpu" class=""
                                                     href="/zhaofang/pengpu/"> <b>P</b> 彭浦 </a>
                                </li>
                                <li mark="jingan"><a id="xinkezhan" class=""
                                                     href="/zhaofang/xinkezhan/"> <b>X</b> 新客站 </a>
                                </li>
                                <li mark="jingan"><a id="xicangbeilu" class=""
                                                     href="/zhaofang/xicangbeilu/"> 西藏北路 </a>
                                </li>
                                <li mark="jingan"><a id="yangchengyonghe" class=""
                                                     href="/zhaofang/yangchengyonghe/"> <b>Y</b> 阳城永和 </a>
                                </li>
                                <li mark="jingan"><a id="zhabeigongyuan" class=""
                                                     href="/zhaofang/zhabeigongyuan/"> <b>Z</b> 闸北公园 </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="pos-r pos_inline li_leveltwo" style="display: none;"
                         id="div_huangpu" style="display: none;">
                        <div class="down-list" style="text-align: center;">
                            <ul class="pop-list clearfix">
                                <li mark="huangpu"><a id="huangpu_quanbu"
                                                      href="/zhaofang/huangpu/" class="text-specific">全部</a></li>
                                <li mark="huangpu"><a id="dongjiadu" class=""
                                                      href="/zhaofang/dongjiadu/"> <b>D</b> 董家渡 </a>
                                </li>
                                <li mark="huangpu"><a id="dapuqiao" class=""
                                                      href="/zhaofang/dapuqiao/"> 打浦桥 </a>
                                </li>
                                <li mark="huangpu"><a id="fuxinggongyuan" class=""
                                                      href="/zhaofang/fuxinggongyuan/"> <b>F</b> 复兴公园 </a>
                                </li>
                                <li mark="huangpu"><a id="huangpubinjiang" class=""
                                                      href="/zhaofang/huangpubinjiang/"> <b>H</b> 黄浦滨江 </a>
                                </li>
                                <li mark="huangpu"><a id="huaihaizhonglu" class=""
                                                      href="/zhaofang/huaihaizhonglu/"> 淮海中路 </a>
                                </li>
                                <li mark="huangpu"><a id="laoximen" class=""
                                                      href="/zhaofang/laoximen/"> <b>L</b> 老西门 </a>
                                </li>
                                <li mark="huangpu"><a id="nanjingdonglu" class=""
                                                      href="/zhaofang/nanjingdonglu/"> <b>N</b> 南京东路 </a>
                                </li>
                                <li mark="huangpu"><a id="penglaigongyuan" class=""
                                                      href="/zhaofang/penglaigongyuan/"> <b>P</b> 蓬莱公园 </a>
                                </li>
                                <li mark="huangpu"><a id="renminguangchang" class=""
                                                      href="/zhaofang/renminguangchang/"> <b>R</b> 人民广场 </a>
                                </li>
                                <li mark="huangpu"><a id="shibobinjiang" class=""
                                                      href="/zhaofang/shibobinjiang/"> <b>S</b> 世博滨江 </a>
                                </li>
                                <li mark="huangpu"><a id="wuliqiao" class=""
                                                      href="/zhaofang/wuliqiao/"> <b>W</b> 五里桥 </a>
                                </li>
                                <li mark="huangpu"><a id="xintiandi" class=""
                                                      href="/zhaofang/xintiandi/"> <b>X</b> 新天地 </a>
                                </li>
                                <li mark="huangpu"><a id="yuyuan" class=""
                                                      href="/zhaofang/yuyuan/"> <b>Y</b> 豫园 </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="pos-r pos_inline li_leveltwo" style="display: none;"
                         id="div_fengxian" style="display: none;">
                        <div class="down-list" style="text-align: center;">
                            <ul class="pop-list clearfix">
                                <li mark="fengxian"><a id="fengxian_quanbu"
                                                       href="/zhaofang/fengxian/" class="text-specific">全部</a></li>
                                <li mark="fengxian"><a id="fengcheng" class=""
                                                       href="/zhaofang/fengcheng/"> <b>F</b> 奉城 </a>
                                </li>
                                <li mark="fengxian"><a id="haiwan" class=""
                                                       href="/zhaofang/haiwan/"> <b>H</b> 海湾 </a>
                                </li>
                                <li mark="fengxian"><a id="haiwanlvyouqu" class=""
                                                       href="/zhaofang/haiwanlvyouqu/"> 海湾旅游区 </a>
                                </li>
                                <li mark="fengxian"><a id="jinhui" class=""
                                                       href="/zhaofang/jinhui/"> <b>J</b> 金汇 </a>
                                </li>
                                <li mark="fengxian"><a id="nanqiao" class=""
                                                       href="/zhaofang/nanqiao/"> <b>N</b> 南桥 </a>
                                </li>
                                <li mark="fengxian"><a id="xidu" class=""
                                                       href="/zhaofang/xidu/"> <b>X</b> 西渡 </a>
                                </li>
                                <li mark="fengxian"><a id="zhelin" class=""
                                                       href="/zhaofang/zhelin/"> <b>Z</b> 柘林 </a>
                                </li>
                                <li mark="fengxian"><a id="zhuangxing" class=""
                                                       href="/zhaofang/zhuangxing/"> 庄行 </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="pos-r pos_inline li_leveltwo" style="display: none;"
                         id="div_jinshan" style="display: none;">
                        <div class="down-list" style="text-align: center;">
                            <ul class="pop-list clearfix">
                                <li mark="jinshan"><a id="jinshan_quanbu"
                                                      href="/zhaofang/jinshan/" class="text-specific">全部</a></li>
                                <li mark="jinshan"><a id="caojing" class=""
                                                      href="/zhaofang/caojing/"> <b>C</b> 漕泾 </a>
                                </li>
                                <li mark="jinshan"><a id="fengjing" class=""
                                                      href="/zhaofang/fengjing/"> <b>F</b> 枫泾 </a>
                                </li>
                                <li mark="jinshan"><a id="jinshanxincheng" class=""
                                                      href="/zhaofang/jinshanxincheng/"> <b>J</b> 金山新城 </a>
                                </li>
                                <li mark="jinshan"><a id="jinshanzhongbu" class=""
                                                      href="/zhaofang/jinshanzhongbu/"> 金山中部 </a>
                                </li>
                                <li mark="jinshan"><a id="shihua" class=""
                                                      href="/zhaofang/shihua/"> <b>S</b> 石化 </a>
                                </li>
                                <li mark="jinshan"><a id="tinglin" class=""
                                                      href="/zhaofang/tinglin/"> <b>T</b> 亭林 </a>
                                </li>
                                <li mark="jinshan"><a id="zhujing" class=""
                                                      href="/zhaofang/zhujing/"> <b>Z</b> 朱泾 </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="pos-r pos_inline li_leveltwo" style="display: none;"
                         id="div_chongming" style="display: none;">
                        <div class="down-list" style="text-align: center;">
                            <ul class="pop-list clearfix">
                                <li mark="chongming"><a id="chongming_quanbu"
                                                        href="/zhaofang/chongming/" class="text-specific">全部</a></li>
                                <li mark="chongming"><a id="baozhen" class=""
                                                        href="/zhaofang/baozhen/"> <b>B</b> 堡镇 </a>
                                </li>
                                <li mark="chongming"><a id="changxingdao" class=""
                                                        href="/zhaofang/changxingdao/"> <b>C</b> 长兴岛 </a>
                                </li>
                                <li mark="chongming"><a id="chenjiazhen" class=""
                                                        href="/zhaofang/chenjiazhen/"> 陈家镇 </a>
                                </li>
                                <li mark="chongming"><a id="chongming_3" class=""
                                                        href="/zhaofang/chongming_3/"> 崇明 </a>
                                </li>
                                <li mark="chongming"><a id="chongmingxincheng" class=""
                                                        href="/zhaofang/chongmingxincheng/"> 崇明新城 </a>
                                </li>
                                <li mark="chongming"><a id="hengshadao" class=""
                                                        href="/zhaofang/hengshadao/"> <b>H</b> 横沙岛 </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!--三级区域-->
                </div>

                <div class="tab-center" style="display:none">
                    <!--地铁线-->
                    <dl class="clearfix">
                        <dt>地铁:</dt>
                        <dd>
                            <ul id="PBAsubway" class="line-list clearfix">
                                <li mark="地铁不限"><a href="javascript:" class="clearIcon">不限</a>
                                </li>
                                <li mark="1号线">
                                    <!-- onmouseout="javascript:hidenInlineDiv(this);" onmouseover="javascript:showInlineDiv(this);" -->
                                    <a class="" href="/zhaofang/d100/">1号线</a>
                                </li>
                                <li mark="2号线">
                                    <!-- onmouseout="javascript:hidenInlineDiv(this);" onmouseover="javascript:showInlineDiv(this);" -->
                                    <a class="" href="/zhaofang/d200/">2号线</a>
                                </li>
                                <li mark="3号线">
                                    <!-- onmouseout="javascript:hidenInlineDiv(this);" onmouseover="javascript:showInlineDiv(this);" -->
                                    <a class="" href="/zhaofang/d300/">3号线</a>
                                </li>
                                <li mark="4号线">
                                    <!-- onmouseout="javascript:hidenInlineDiv(this);" onmouseover="javascript:showInlineDiv(this);" -->
                                    <a class="" href="/zhaofang/d400/">4号线</a>
                                </li>
                                <li mark="5号线">
                                    <!-- onmouseout="javascript:hidenInlineDiv(this);" onmouseover="javascript:showInlineDiv(this);" -->
                                    <a class="" href="/zhaofang/d500/">5号线</a>
                                </li>
                                <li mark="6号线">
                                    <!-- onmouseout="javascript:hidenInlineDiv(this);" onmouseover="javascript:showInlineDiv(this);" -->
                                    <a class="" href="/zhaofang/d600/">6号线</a>
                                </li>
                                <li mark="7号线">
                                    <!-- onmouseout="javascript:hidenInlineDiv(this);" onmouseover="javascript:showInlineDiv(this);" -->
                                    <a class="" href="/zhaofang/d700/">7号线</a>
                                </li>
                                <li mark="8号线">
                                    <!-- onmouseout="javascript:hidenInlineDiv(this);" onmouseover="javascript:showInlineDiv(this);" -->
                                    <a class="" href="/zhaofang/d800/">8号线</a>
                                </li>
                                <li mark="9号线">
                                    <!-- onmouseout="javascript:hidenInlineDiv(this);" onmouseover="javascript:showInlineDiv(this);" -->
                                    <a class="" href="/zhaofang/d900/">9号线</a>
                                </li>
                                <li mark="10号线">
                                    <!-- onmouseout="javascript:hidenInlineDiv(this);" onmouseover="javascript:showInlineDiv(this);" -->
                                    <a class="" href="/zhaofang/d1000/">10号线</a>
                                </li>
                                <li mark="11号线">
                                    <!-- onmouseout="javascript:hidenInlineDiv(this);" onmouseover="javascript:showInlineDiv(this);" -->
                                    <a class="" href="/zhaofang/d1100/">11号线</a>
                                </li>
                                <li mark="12号线">
                                    <!-- onmouseout="javascript:hidenInlineDiv(this);" onmouseover="javascript:showInlineDiv(this);" -->
                                    <a class="" href="/zhaofang/d1200/">12号线</a>
                                </li>
                                <li mark="13号线">
                                    <!-- onmouseout="javascript:hidenInlineDiv(this);" onmouseover="javascript:showInlineDiv(this);" -->
                                    <a class="" href="/zhaofang/d1300/">13号线</a>
                                </li>
                                <li mark="16号线">
                                    <!-- onmouseout="javascript:hidenInlineDiv(this);" onmouseover="javascript:showInlineDiv(this);" -->
                                    <a class="" href="/zhaofang/d1600/">16号线</a>
                                </li>
                                <li mark="2号线东延线">
                                    <!-- onmouseout="javascript:hidenInlineDiv(this);" onmouseover="javascript:showInlineDiv(this);" -->
                                    <a class="" href="/zhaofang/d5000/">2号线东延线</a>
                                </li>
                            </ul>
                        </dd>
                    </dl>
                    <!--地铁线-->
                    <!--地铁站-->
                    <div class="pos-r pos-inline" id="div_1号线" style="display: none;">
                        <div class="pos-r pos_inline" id="div_1号线">
                            <div class="down-list" style="text-align: center;">
                                <ul class="pop-list list-new-chcek clearfix">
                                    <li mark="1号线"><a id="1号线_quanbu" href="/zhaofang/d100/"
                                                      class="text-specific clearIcon">全部</a>
                                    </li>
                                    <li mark="1号线"><a class="" id="莘庄" href="/zhaofang/d101/">莘庄
                                    </a>
                                    </li>
                                    <li mark="1号线"><a class="" id="外环路" href="/zhaofang/d102/">外环路
                                    </a>
                                    </li>
                                    <li mark="1号线"><a class="" id="莲花路" href="/zhaofang/d103/">莲花路
                                    </a>
                                    </li>
                                    <li mark="1号线"><a class="" id="锦江乐园"
                                                      href="/zhaofang/d104/">锦江乐园 </a>
                                    </li>
                                    <li mark="1号线"><a class="" id="上海南站"
                                                      href="/zhaofang/d105/">上海南站 </a>
                                    </li>
                                    <li mark="1号线"><a class="" id="漕宝路" href="/zhaofang/d106/">漕宝路
                                    </a>
                                    </li>
                                    <li mark="1号线"><a class="" id="上海体育馆"
                                                      href="/zhaofang/d107/">上海体育馆 </a>
                                    </li>
                                    <li mark="1号线"><a class="" id="徐家汇" href="/zhaofang/d108/">徐家汇
                                    </a>
                                    </li>
                                    <li mark="1号线"><a class="" id="衡山路" href="/zhaofang/d109/">衡山路
                                    </a>
                                    </li>
                                    <li mark="1号线"><a class="" id="常熟路" href="/zhaofang/d110/">常熟路
                                    </a>
                                    </li>
                                    <li mark="1号线"><a class="" id="陕西南路"
                                                      href="/zhaofang/d111/">陕西南路 </a>
                                    </li>
                                    <li mark="1号线"><a class="" id="黄陂南路"
                                                      href="/zhaofang/d112/">黄陂南路 </a>
                                    </li>
                                    <li mark="1号线"><a class="" id="人民广场"
                                                      href="/zhaofang/d113/">人民广场 </a>
                                    </li>
                                    <li mark="1号线"><a class="" id="新闸路" href="/zhaofang/d114/">新闸路
                                    </a>
                                    </li>
                                    <li mark="1号线"><a class="" id="汉中路" href="/zhaofang/d115/">汉中路
                                    </a>
                                    </li>
                                    <li mark="1号线"><a class="" id="上海火车站"
                                                      href="/zhaofang/d116/">上海火车站 </a>
                                    </li>
                                    <li mark="1号线"><a class="" id="中山北路"
                                                      href="/zhaofang/d117/">中山北路 </a>
                                    </li>
                                    <li mark="1号线"><a class="" id="延长路" href="/zhaofang/d118/">延长路
                                    </a>
                                    </li>
                                    <li mark="1号线"><a class="" id="上海马戏城"
                                                      href="/zhaofang/d119/">上海马戏城 </a>
                                    </li>
                                    <li mark="1号线"><a class="" id="汶水路" href="/zhaofang/d120/">汶水路
                                    </a>
                                    </li>
                                    <li mark="1号线"><a class="" id="彭浦新村"
                                                      href="/zhaofang/d121/">彭浦新村 </a>
                                    </li>
                                    <li mark="1号线"><a class="" id="共康路" href="/zhaofang/d122/">共康路
                                    </a>
                                    </li>
                                    <li mark="1号线"><a class="" id="通河新村"
                                                      href="/zhaofang/d123/">通河新村 </a>
                                    </li>
                                    <li mark="1号线"><a class="" id="呼兰路" href="/zhaofang/d124/">呼兰路
                                    </a>
                                    </li>
                                    <li mark="1号线"><a class="" id="共富新村"
                                                      href="/zhaofang/d125/">共富新村 </a>
                                    </li>
                                    <li mark="1号线"><a class="" id="宝安公路"
                                                      href="/zhaofang/d126/">宝安公路 </a>
                                    </li>
                                    <li mark="1号线"><a class="" id="友谊西路"
                                                      href="/zhaofang/d127/">友谊西路 </a>
                                    </li>
                                    <li mark="1号线"><a class="" id="富锦路" href="/zhaofang/d128/">富锦路
                                    </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="pos-r pos-inline" id="div_2号线" style="display: none;">
                        <div class="pos-r pos_inline" id="div_2号线">
                            <div class="down-list" style="text-align: center;">
                                <ul class="pop-list list-new-chcek clearfix">
                                    <li mark="2号线"><a id="2号线_quanbu" href="/zhaofang/d200/"
                                                      class="text-specific clearIcon">全部</a>
                                    </li>
                                    <li mark="2号线"><a class="" id="广兰路" href="/zhaofang/d209/">广兰路
                                    </a>
                                    </li>
                                    <li mark="2号线"><a class="" id="金科路" href="/zhaofang/d210/">金科路
                                    </a>
                                    </li>
                                    <li mark="2号线"><a class="" id="张江高科"
                                                      href="/zhaofang/d211/">张江高科 </a>
                                    </li>
                                    <li mark="2号线"><a class="" id="龙阳路" href="/zhaofang/d212/">龙阳路
                                    </a>
                                    </li>
                                    <li mark="2号线"><a class="" id="世纪公园"
                                                      href="/zhaofang/d213/">世纪公园 </a>
                                    </li>
                                    <li mark="2号线"><a class="" id="上海科技馆"
                                                      href="/zhaofang/d214/">上海科技馆 </a>
                                    </li>
                                    <li mark="2号线"><a class="" id="世纪大道"
                                                      href="/zhaofang/d215/">世纪大道 </a>
                                    </li>
                                    <li mark="2号线"><a class="" id="东昌路" href="/zhaofang/d216/">东昌路
                                    </a>
                                    </li>
                                    <li mark="2号线"><a class="" id="陆家嘴" href="/zhaofang/d217/">陆家嘴
                                    </a>
                                    </li>
                                    <li mark="2号线"><a class="" id="南京东路"
                                                      href="/zhaofang/d218/">南京东路 </a>
                                    </li>
                                    <li mark="2号线"><a class="" id="人民广场"
                                                      href="/zhaofang/d219/">人民广场 </a>
                                    </li>
                                    <li mark="2号线"><a class="" id="南京西路"
                                                      href="/zhaofang/d220/">南京西路 </a>
                                    </li>
                                    <li mark="2号线"><a class="" id="静安寺" href="/zhaofang/d221/">静安寺
                                    </a>
                                    </li>
                                    <li mark="2号线"><a class="" id="江苏路" href="/zhaofang/d222/">江苏路
                                    </a>
                                    </li>
                                    <li mark="2号线"><a class="" id="中山公园"
                                                      href="/zhaofang/d223/">中山公园 </a>
                                    </li>
                                    <li mark="2号线"><a class="" id="娄山关路"
                                                      href="/zhaofang/d224/">娄山关路 </a>
                                    </li>
                                    <li mark="2号线"><a class="" id="威宁路" href="/zhaofang/d225/">威宁路
                                    </a>
                                    </li>
                                    <li mark="2号线"><a class="" id="北新泾" href="/zhaofang/d226/">北新泾
                                    </a>
                                    </li>
                                    <li mark="2号线"><a class="" id="淞虹路" href="/zhaofang/d227/">淞虹路
                                    </a>
                                    </li>
                                    <li mark="2号线"><a class="" id="虹桥2号航站楼"
                                                      href="/zhaofang/d228/">虹桥2号航站楼 </a>
                                    </li>
                                    <li mark="2号线"><a class="" id="虹桥火车站"
                                                      href="/zhaofang/d229/">虹桥火车站 </a>
                                    </li>
                                    <li mark="2号线"><a class="" id="徐泾东" href="/zhaofang/d230/">徐泾东
                                    </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="pos-r pos-inline" id="div_3号线" style="display: none;">
                        <div class="pos-r pos_inline" id="div_3号线">
                            <div class="down-list" style="text-align: center;">
                                <ul class="pop-list list-new-chcek clearfix">
                                    <li mark="3号线"><a id="3号线_quanbu" href="/zhaofang/d300/"
                                                      class="text-specific clearIcon">全部</a>
                                    </li>
                                    <li mark="3号线"><a class="" id="上海南站"
                                                      href="/zhaofang/d301/">上海南站 </a>
                                    </li>
                                    <li mark="3号线"><a class="" id="石龙路" href="/zhaofang/d302/">石龙路
                                    </a>
                                    </li>
                                    <li mark="3号线"><a class="" id="龙漕路" href="/zhaofang/d303/">龙漕路
                                    </a>
                                    </li>
                                    <li mark="3号线"><a class="" id="漕溪路" href="/zhaofang/d304/">漕溪路
                                    </a>
                                    </li>
                                    <li mark="3号线"><a class="" id="宜山路" href="/zhaofang/d305/">宜山路
                                    </a>
                                    </li>
                                    <li mark="3号线"><a class="" id="虹桥路" href="/zhaofang/d306/">虹桥路
                                    </a>
                                    </li>
                                    <li mark="3号线"><a class="" id="延安西路"
                                                      href="/zhaofang/d307/">延安西路 </a>
                                    </li>
                                    <li mark="3号线"><a class="" id="中山公园"
                                                      href="/zhaofang/d308/">中山公园 </a>
                                    </li>
                                    <li mark="3号线"><a class="" id="金沙江路"
                                                      href="/zhaofang/d309/">金沙江路 </a>
                                    </li>
                                    <li mark="3号线"><a class="" id="曹杨路" href="/zhaofang/d310/">曹杨路
                                    </a>
                                    </li>
                                    <li mark="3号线"><a class="" id="镇坪路" href="/zhaofang/d311/">镇坪路
                                    </a>
                                    </li>
                                    <li mark="3号线"><a class="" id="中潭路" href="/zhaofang/d312/">中潭路
                                    </a>
                                    </li>
                                    <li mark="3号线"><a class="" id="上海火车站"
                                                      href="/zhaofang/d313/">上海火车站 </a>
                                    </li>
                                    <li mark="3号线"><a class="" id="宝山路" href="/zhaofang/d314/">宝山路
                                    </a>
                                    </li>
                                    <li mark="3号线"><a class="" id="东宝兴路"
                                                      href="/zhaofang/d315/">东宝兴路 </a>
                                    </li>
                                    <li mark="3号线"><a class="" id="虹口足球场"
                                                      href="/zhaofang/d316/">虹口足球场 </a>
                                    </li>
                                    <li mark="3号线"><a class="" id="赤峰路" href="/zhaofang/d317/">赤峰路
                                    </a>
                                    </li>
                                    <li mark="3号线"><a class="" id="大柏树" href="/zhaofang/d318/">大柏树
                                    </a>
                                    </li>
                                    <li mark="3号线"><a class="" id="江湾镇" href="/zhaofang/d319/">江湾镇
                                    </a>
                                    </li>
                                    <li mark="3号线"><a class="" id="殷高西路"
                                                      href="/zhaofang/d320/">殷高西路 </a>
                                    </li>
                                    <li mark="3号线"><a class="" id="长江南路"
                                                      href="/zhaofang/d321/">长江南路 </a>
                                    </li>
                                    <li mark="3号线"><a class="" id="淞发路" href="/zhaofang/d322/">淞发路
                                    </a>
                                    </li>
                                    <li mark="3号线"><a class="" id="张华浜" href="/zhaofang/d323/">张华浜
                                    </a>
                                    </li>
                                    <li mark="3号线"><a class="" id="淞滨路" href="/zhaofang/d324/">淞滨路
                                    </a>
                                    </li>
                                    <li mark="3号线"><a class="" id="水产路" href="/zhaofang/d325/">水产路
                                    </a>
                                    </li>
                                    <li mark="3号线"><a class="" id="宝杨路" href="/zhaofang/d326/">宝杨路
                                    </a>
                                    </li>
                                    <li mark="3号线"><a class="" id="友谊路" href="/zhaofang/d327/">友谊路
                                    </a>
                                    </li>
                                    <li mark="3号线"><a class="" id="铁力路" href="/zhaofang/d328/">铁力路
                                    </a>
                                    </li>
                                    <li mark="3号线"><a class="" id="江杨北路"
                                                      href="/zhaofang/d329/">江杨北路 </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="pos-r pos-inline" id="div_4号线" style="display: none;">
                        <div class="pos-r pos_inline" id="div_4号线">
                            <div class="down-list" style="text-align: center;">
                                <ul class="pop-list list-new-chcek clearfix">
                                    <li mark="4号线"><a id="4号线_quanbu" href="/zhaofang/d400/"
                                                      class="text-specific clearIcon">全部</a>
                                    </li>
                                    <li mark="4号线"><a class="" id="宜山路" href="/zhaofang/d401/">宜山路
                                    </a>
                                    </li>
                                    <li mark="4号线"><a class="" id="上海体育馆"
                                                      href="/zhaofang/d402/">上海体育馆 </a>
                                    </li>
                                    <li mark="4号线"><a class="" id="上海体育场"
                                                      href="/zhaofang/d403/">上海体育场 </a>
                                    </li>
                                    <li mark="4号线"><a class="" id="东安路" href="/zhaofang/d404/">东安路
                                    </a>
                                    </li>
                                    <li mark="4号线"><a class="" id="大木桥路"
                                                      href="/zhaofang/d405/">大木桥路 </a>
                                    </li>
                                    <li mark="4号线"><a class="" id="鲁班路" href="/zhaofang/d406/">鲁班路
                                    </a>
                                    </li>
                                    <li mark="4号线"><a class="" id="西藏南路"
                                                      href="/zhaofang/d407/">西藏南路 </a>
                                    </li>
                                    <li mark="4号线"><a class="" id="南浦大桥"
                                                      href="/zhaofang/d408/">南浦大桥 </a>
                                    </li>
                                    <li mark="4号线"><a class="" id="塘桥" href="/zhaofang/d409/">塘桥
                                    </a>
                                    </li>
                                    <li mark="4号线"><a class="" id="蓝村路" href="/zhaofang/d410/">蓝村路
                                    </a>
                                    </li>
                                    <li mark="4号线"><a class="" id="浦电路" href="/zhaofang/d411/">浦电路
                                    </a>
                                    </li>
                                    <li mark="4号线"><a class="" id="世纪大道"
                                                      href="/zhaofang/d412/">世纪大道 </a>
                                    </li>
                                    <li mark="4号线"><a class="" id="浦东大道"
                                                      href="/zhaofang/d413/">浦东大道 </a>
                                    </li>
                                    <li mark="4号线"><a class="" id="杨树浦路"
                                                      href="/zhaofang/d414/">杨树浦路 </a>
                                    </li>
                                    <li mark="4号线"><a class="" id="大连路" href="/zhaofang/d415/">大连路
                                    </a>
                                    </li>
                                    <li mark="4号线"><a class="" id="临平路" href="/zhaofang/d416/">临平路
                                    </a>
                                    </li>
                                    <li mark="4号线"><a class="" id="海伦路" href="/zhaofang/d417/">海伦路
                                    </a>
                                    </li>
                                    <li mark="4号线"><a class="" id="宝山路" href="/zhaofang/d418/">宝山路
                                    </a>
                                    </li>
                                    <li mark="4号线"><a class="" id="上海火车站"
                                                      href="/zhaofang/d419/">上海火车站 </a>
                                    </li>
                                    <li mark="4号线"><a class="" id="中潭路" href="/zhaofang/d420/">中潭路
                                    </a>
                                    </li>
                                    <li mark="4号线"><a class="" id="镇坪路" href="/zhaofang/d421/">镇坪路
                                    </a>
                                    </li>
                                    <li mark="4号线"><a class="" id="曹杨路" href="/zhaofang/d422/">曹杨路
                                    </a>
                                    </li>
                                    <li mark="4号线"><a class="" id="金沙江路"
                                                      href="/zhaofang/d423/">金沙江路 </a>
                                    </li>
                                    <li mark="4号线"><a class="" id="中山公园"
                                                      href="/zhaofang/d424/">中山公园 </a>
                                    </li>
                                    <li mark="4号线"><a class="" id="延安西路"
                                                      href="/zhaofang/d425/">延安西路 </a>
                                    </li>
                                    <li mark="4号线"><a class="" id="虹桥路" href="/zhaofang/d426/">虹桥路
                                    </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="pos-r pos-inline" id="div_5号线" style="display: none;">
                        <div class="pos-r pos_inline" id="div_5号线">
                            <div class="down-list" style="text-align: center;">
                                <ul class="pop-list list-new-chcek clearfix">
                                    <li mark="5号线"><a id="5号线_quanbu" href="/zhaofang/d500/"
                                                      class="text-specific clearIcon">全部</a>
                                    </li>
                                    <li mark="5号线"><a class="" id="莘庄" href="/zhaofang/d501/">莘庄
                                    </a>
                                    </li>
                                    <li mark="5号线"><a class="" id="春申路" href="/zhaofang/d502/">春申路
                                    </a>
                                    </li>
                                    <li mark="5号线"><a class="" id="银都路" href="/zhaofang/d503/">银都路
                                    </a>
                                    </li>
                                    <li mark="5号线"><a class="" id="颛桥" href="/zhaofang/d504/">颛桥
                                    </a>
                                    </li>
                                    <li mark="5号线"><a class="" id="北桥" href="/zhaofang/d505/">北桥
                                    </a>
                                    </li>
                                    <li mark="5号线"><a class="" id="剑川路" href="/zhaofang/d506/">剑川路
                                    </a>
                                    </li>
                                    <li mark="5号线"><a class="" id="东川路" href="/zhaofang/d507/">东川路
                                    </a>
                                    </li>
                                    <li mark="5号线"><a class="" id="金平路" href="/zhaofang/d508/">金平路
                                    </a>
                                    </li>
                                    <li mark="5号线"><a class="" id="华宁路" href="/zhaofang/d509/">华宁路
                                    </a>
                                    </li>
                                    <li mark="5号线"><a class="" id="文井路" href="/zhaofang/d510/">文井路
                                    </a>
                                    </li>
                                    <li mark="5号线"><a class="" id="闵行开发区"
                                                      href="/zhaofang/d511/">闵行开发区 </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="pos-r pos-inline" id="div_6号线" style="display: none;">
                        <div class="pos-r pos_inline" id="div_6号线">
                            <div class="down-list" style="text-align: center;">
                                <ul class="pop-list list-new-chcek clearfix">
                                    <li mark="6号线"><a id="6号线_quanbu" href="/zhaofang/d600/"
                                                      class="text-specific clearIcon">全部</a>
                                    </li>
                                    <li mark="6号线"><a class="" id="港城路" href="/zhaofang/d601/">港城路
                                    </a>
                                    </li>
                                    <li mark="6号线"><a class="" id="外高桥保税区北"
                                                      href="/zhaofang/d602/">外高桥保税区北 </a>
                                    </li>
                                    <li mark="6号线"><a class="" id="航津路" href="/zhaofang/d603/">航津路
                                    </a>
                                    </li>
                                    <li mark="6号线"><a class="" id="外高桥保税区南"
                                                      href="/zhaofang/d604/">外高桥保税区南 </a>
                                    </li>
                                    <li mark="6号线"><a class="" id="洲海路" href="/zhaofang/d605/">洲海路
                                    </a>
                                    </li>
                                    <li mark="6号线"><a class="" id="五洲大道"
                                                      href="/zhaofang/d606/">五洲大道 </a>
                                    </li>
                                    <li mark="6号线"><a class="" id="东靖路" href="/zhaofang/d607/">东靖路
                                    </a>
                                    </li>
                                    <li mark="6号线"><a class="" id="巨峰路" href="/zhaofang/d608/">巨峰路
                                    </a>
                                    </li>
                                    <li mark="6号线"><a class="" id="五莲路" href="/zhaofang/d609/">五莲路
                                    </a>
                                    </li>
                                    <li mark="6号线"><a class="" id="博兴路" href="/zhaofang/d610/">博兴路
                                    </a>
                                    </li>
                                    <li mark="6号线"><a class="" id="金桥路" href="/zhaofang/d611/">金桥路
                                    </a>
                                    </li>
                                    <li mark="6号线"><a class="" id="云山路" href="/zhaofang/d612/">云山路
                                    </a>
                                    </li>
                                    <li mark="6号线"><a class="" id="德平路" href="/zhaofang/d613/">德平路
                                    </a>
                                    </li>
                                    <li mark="6号线"><a class="" id="北洋泾路"
                                                      href="/zhaofang/d614/">北洋泾路 </a>
                                    </li>
                                    <li mark="6号线"><a class="" id="民生路" href="/zhaofang/d615/">民生路
                                    </a>
                                    </li>
                                    <li mark="6号线"><a class="" id="源深体育中心"
                                                      href="/zhaofang/d616/">源深体育中心 </a>
                                    </li>
                                    <li mark="6号线"><a class="" id="世纪大道"
                                                      href="/zhaofang/d617/">世纪大道 </a>
                                    </li>
                                    <li mark="6号线"><a class="" id="浦电路" href="/zhaofang/d618/">浦电路
                                    </a>
                                    </li>
                                    <li mark="6号线"><a class="" id="蓝村路" href="/zhaofang/d619/">蓝村路
                                    </a>
                                    </li>
                                    <li mark="6号线"><a class="" id="上海儿童医学中心"
                                                      href="/zhaofang/d620/">上海儿童医学中心 </a>
                                    </li>
                                    <li mark="6号线"><a class="" id="临沂新村"
                                                      href="/zhaofang/d621/">临沂新村 </a>
                                    </li>
                                    <li mark="6号线"><a class="" id="高科西路"
                                                      href="/zhaofang/d622/">高科西路 </a>
                                    </li>
                                    <li mark="6号线"><a class="" id="东明路" href="/zhaofang/d623/">东明路
                                    </a>
                                    </li>
                                    <li mark="6号线"><a class="" id="高青路" href="/zhaofang/d624/">高青路
                                    </a>
                                    </li>
                                    <li mark="6号线"><a class="" id="华夏西路"
                                                      href="/zhaofang/d625/">华夏西路 </a>
                                    </li>
                                    <li mark="6号线"><a class="" id="上南路" href="/zhaofang/d626/">上南路
                                    </a>
                                    </li>
                                    <li mark="6号线"><a class="" id="灵岩南路"
                                                      href="/zhaofang/d627/">灵岩南路 </a>
                                    </li>
                                    <li mark="6号线"><a class="" id="东方体育中心"
                                                      href="/zhaofang/d628/">东方体育中心 </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="pos-r pos-inline" id="div_7号线" style="display: none;">
                        <div class="pos-r pos_inline" id="div_7号线">
                            <div class="down-list" style="text-align: center;">
                                <ul class="pop-list list-new-chcek clearfix">
                                    <li mark="7号线"><a id="7号线_quanbu" href="/zhaofang/d700/"
                                                      class="text-specific clearIcon">全部</a>
                                    </li>
                                    <li mark="7号线"><a class="" id="花木路" href="/zhaofang/d701/">花木路
                                    </a>
                                    </li>
                                    <li mark="7号线"><a class="" id="龙阳路" href="/zhaofang/d702/">龙阳路
                                    </a>
                                    </li>
                                    <li mark="7号线"><a class="" id="芳华路" href="/zhaofang/d703/">芳华路
                                    </a>
                                    </li>
                                    <li mark="7号线"><a class="" id="锦绣路" href="/zhaofang/d704/">锦绣路
                                    </a>
                                    </li>
                                    <li mark="7号线"><a class="" id="杨高南路"
                                                      href="/zhaofang/d705/">杨高南路 </a>
                                    </li>
                                    <li mark="7号线"><a class="" id="高科西路"
                                                      href="/zhaofang/d706/">高科西路 </a>
                                    </li>
                                    <li mark="7号线"><a class="" id="云台路" href="/zhaofang/d707/">云台路
                                    </a>
                                    </li>
                                    <li mark="7号线"><a class="" id="耀华路" href="/zhaofang/d708/">耀华路
                                    </a>
                                    </li>
                                    <li mark="7号线"><a class="" id="长清路" href="/zhaofang/d709/">长清路
                                    </a>
                                    </li>
                                    <li mark="7号线"><a class="" id="后滩" href="/zhaofang/d710/">后滩
                                    </a>
                                    </li>
                                    <li mark="7号线"><a class="" id="龙华中路"
                                                      href="/zhaofang/d711/">龙华中路 </a>
                                    </li>
                                    <li mark="7号线"><a class="" id="东安路" href="/zhaofang/d712/">东安路
                                    </a>
                                    </li>
                                    <li mark="7号线"><a class="" id="肇嘉浜路"
                                                      href="/zhaofang/d713/">肇嘉浜路 </a>
                                    </li>
                                    <li mark="7号线"><a class="" id="常熟路" href="/zhaofang/d714/">常熟路
                                    </a>
                                    </li>
                                    <li mark="7号线"><a class="" id="静安寺" href="/zhaofang/d715/">静安寺
                                    </a>
                                    </li>
                                    <li mark="7号线"><a class="" id="昌平路" href="/zhaofang/d716/">昌平路
                                    </a>
                                    </li>
                                    <li mark="7号线"><a class="" id="长寿路" href="/zhaofang/d717/">长寿路
                                    </a>
                                    </li>
                                    <li mark="7号线"><a class="" id="镇坪路" href="/zhaofang/d718/">镇坪路
                                    </a>
                                    </li>
                                    <li mark="7号线"><a class="" id="岚皋路" href="/zhaofang/d719/">岚皋路
                                    </a>
                                    </li>
                                    <li mark="7号线"><a class="" id="新村路" href="/zhaofang/d720/">新村路
                                    </a>
                                    </li>
                                    <li mark="7号线"><a class="" id="大华三路"
                                                      href="/zhaofang/d721/">大华三路 </a>
                                    </li>
                                    <li mark="7号线"><a class="" id="行知路" href="/zhaofang/d722/">行知路
                                    </a>
                                    </li>
                                    <li mark="7号线"><a class="" id="大场镇" href="/zhaofang/d723/">大场镇
                                    </a>
                                    </li>
                                    <li mark="7号线"><a class="" id="场中路" href="/zhaofang/d724/">场中路
                                    </a>
                                    </li>
                                    <li mark="7号线"><a class="" id="上大路" href="/zhaofang/d725/">上大路
                                    </a>
                                    </li>
                                    <li mark="7号线"><a class="" id="南陈路" href="/zhaofang/d726/">南陈路
                                    </a>
                                    </li>
                                    <li mark="7号线"><a class="" id="上海大学"
                                                      href="/zhaofang/d727/">上海大学 </a>
                                    </li>
                                    <li mark="7号线"><a class="" id="祁华路" href="/zhaofang/d728/">祁华路
                                    </a>
                                    </li>
                                    <li mark="7号线"><a class="" id="顾村公园"
                                                      href="/zhaofang/d729/">顾村公园 </a>
                                    </li>
                                    <li mark="7号线"><a class="" id="刘行" href="/zhaofang/d730/">刘行
                                    </a>
                                    </li>
                                    <li mark="7号线"><a class="" id="潘广路" href="/zhaofang/d731/">潘广路
                                    </a>
                                    </li>
                                    <li mark="7号线"><a class="" id="罗南新村"
                                                      href="/zhaofang/d732/">罗南新村 </a>
                                    </li>
                                    <li mark="7号线"><a class="" id="美兰湖" href="/zhaofang/d733/">美兰湖
                                    </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="pos-r pos-inline" id="div_8号线" style="display: none;">
                        <div class="pos-r pos_inline" id="div_8号线">
                            <div class="down-list" style="text-align: center;">
                                <ul class="pop-list list-new-chcek clearfix">
                                    <li mark="8号线"><a id="8号线_quanbu" href="/zhaofang/d800/"
                                                      class="text-specific clearIcon">全部</a>
                                    </li>
                                    <li mark="8号线"><a class="" id="沈杜公路"
                                                      href="/zhaofang/d801/">沈杜公路 </a>
                                    </li>
                                    <li mark="8号线"><a class="" id="联航路" href="/zhaofang/d802/">联航路
                                    </a>
                                    </li>
                                    <li mark="8号线"><a class="" id="江月路" href="/zhaofang/d803/">江月路
                                    </a>
                                    </li>
                                    <li mark="8号线"><a class="" id="浦江镇" href="/zhaofang/d804/">浦江镇
                                    </a>
                                    </li>
                                    <li mark="8号线"><a class="" id="芦恒路" href="/zhaofang/d805/">芦恒路
                                    </a>
                                    </li>
                                    <li mark="8号线"><a class="" id="凌兆新村"
                                                      href="/zhaofang/d806/">凌兆新村 </a>
                                    </li>
                                    <li mark="8号线"><a class="" id="东方体育中心"
                                                      href="/zhaofang/d807/">东方体育中心 </a>
                                    </li>
                                    <li mark="8号线"><a class="" id="杨思" href="/zhaofang/d808/">杨思
                                    </a>
                                    </li>
                                    <li mark="8号线"><a class="" id="成山路" href="/zhaofang/d809/">成山路
                                    </a>
                                    </li>
                                    <li mark="8号线"><a class="" id="耀华路" href="/zhaofang/d810/">耀华路
                                    </a>
                                    </li>
                                    <li mark="8号线"><a class="" id="中华艺术宫"
                                                      href="/zhaofang/d811/">中华艺术宫 </a>
                                    </li>
                                    <li mark="8号线"><a class="" id="西藏南路"
                                                      href="/zhaofang/d812/">西藏南路 </a>
                                    </li>
                                    <li mark="8号线"><a class="" id="陆家浜路"
                                                      href="/zhaofang/d813/">陆家浜路 </a>
                                    </li>
                                    <li mark="8号线"><a class="" id="老西门" href="/zhaofang/d814/">老西门
                                    </a>
                                    </li>
                                    <li mark="8号线"><a class="" id="大世界" href="/zhaofang/d815/">大世界
                                    </a>
                                    </li>
                                    <li mark="8号线"><a class="" id="人民广场"
                                                      href="/zhaofang/d816/">人民广场 </a>
                                    </li>
                                    <li mark="8号线"><a class="" id="曲阜路" href="/zhaofang/d817/">曲阜路
                                    </a>
                                    </li>
                                    <li mark="8号线"><a class="" id="中兴路" href="/zhaofang/d818/">中兴路
                                    </a>
                                    </li>
                                    <li mark="8号线"><a class="" id="西藏北路"
                                                      href="/zhaofang/d819/">西藏北路 </a>
                                    </li>
                                    <li mark="8号线"><a class="" id="虹口足球场"
                                                      href="/zhaofang/d820/">虹口足球场 </a>
                                    </li>
                                    <li mark="8号线"><a class="" id="曲阳路" href="/zhaofang/d821/">曲阳路
                                    </a>
                                    </li>
                                    <li mark="8号线"><a class="" id="四平路" href="/zhaofang/d822/">四平路
                                    </a>
                                    </li>
                                    <li mark="8号线"><a class="" id="鞍山新村"
                                                      href="/zhaofang/d823/">鞍山新村 </a>
                                    </li>
                                    <li mark="8号线"><a class="" id="江浦路" href="/zhaofang/d824/">江浦路
                                    </a>
                                    </li>
                                    <li mark="8号线"><a class="" id="黄兴路" href="/zhaofang/d825/">黄兴路
                                    </a>
                                    </li>
                                    <li mark="8号线"><a class="" id="延吉中路"
                                                      href="/zhaofang/d826/">延吉中路 </a>
                                    </li>
                                    <li mark="8号线"><a class="" id="黄兴公园"
                                                      href="/zhaofang/d827/">黄兴公园 </a>
                                    </li>
                                    <li mark="8号线"><a class="" id="翔殷路" href="/zhaofang/d828/">翔殷路
                                    </a>
                                    </li>
                                    <li mark="8号线"><a class="" id="嫩江路" href="/zhaofang/d829/">嫩江路
                                    </a>
                                    </li>
                                    <li mark="8号线"><a class="" id="市光路" href="/zhaofang/d830/">市光路
                                    </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="pos-r pos-inline" id="div_9号线" style="display: none;">
                        <div class="pos-r pos_inline" id="div_9号线">
                            <div class="down-list" style="text-align: center;">
                                <ul class="pop-list list-new-chcek clearfix">
                                    <li mark="9号线"><a id="9号线_quanbu" href="/zhaofang/d900/"
                                                      class="text-specific clearIcon">全部</a>
                                    </li>
                                    <li mark="9号线"><a class="" id="曹路" href="/zhaofang/d927/">曹路
                                    </a>
                                    </li>
                                    <li mark="9号线"><a class="" id="民雷路" href="/zhaofang/d928/">民雷路
                                    </a>
                                    </li>
                                    <li mark="9号线"><a class="" id="顾唐路" href="/zhaofang/d929/">顾唐路
                                    </a>
                                    </li>
                                    <li mark="9号线"><a class="" id="金海路" href="/zhaofang/d930/">金海路
                                    </a>
                                    </li>
                                    <li mark="9号线"><a class="" id="金吉路" href="/zhaofang/d931/">金吉路
                                    </a>
                                    </li>
                                    <li mark="9号线"><a class="" id="金桥" href="/zhaofang/d932/">金桥
                                    </a>
                                    </li>
                                    <li mark="9号线"><a class="" id="台儿庄路"
                                                      href="/zhaofang/d933/">台儿庄路 </a>
                                    </li>
                                    <li mark="9号线"><a class="" id="蓝天路" href="/zhaofang/d934/">蓝天路
                                    </a>
                                    </li>
                                    <li mark="9号线"><a class="" id="芳甸路" href="/zhaofang/d935/">芳甸路
                                    </a>
                                    </li>
                                    <li mark="9号线"><a class="" id="杨高中路"
                                                      href="/zhaofang/d901/">杨高中路 </a>
                                    </li>
                                    <li mark="9号线"><a class="" id="世纪大道"
                                                      href="/zhaofang/d902/">世纪大道 </a>
                                    </li>
                                    <li mark="9号线"><a class="" id="商城路" href="/zhaofang/d903/">商城路
                                    </a>
                                    </li>
                                    <li mark="9号线"><a class="" id="小南门" href="/zhaofang/d904/">小南门
                                    </a>
                                    </li>
                                    <li mark="9号线"><a class="" id="陆家浜" href="/zhaofang/d905/">陆家浜
                                    </a>
                                    </li>
                                    <li mark="9号线"><a class="" id="马当路" href="/zhaofang/d906/">马当路
                                    </a>
                                    </li>
                                    <li mark="9号线"><a class="" id="打浦桥" href="/zhaofang/d907/">打浦桥
                                    </a>
                                    </li>
                                    <li mark="9号线"><a class="" id="嘉善路" href="/zhaofang/d908/">嘉善路
                                    </a>
                                    </li>
                                    <li mark="9号线"><a class="" id="肇嘉浜路"
                                                      href="/zhaofang/d909/">肇嘉浜路 </a>
                                    </li>
                                    <li mark="9号线"><a class="" id="徐家汇" href="/zhaofang/d910/">徐家汇
                                    </a>
                                    </li>
                                    <li mark="9号线"><a class="" id="宜山路" href="/zhaofang/d911/">宜山路
                                    </a>
                                    </li>
                                    <li mark="9号线"><a class="" id="桂林路" href="/zhaofang/d912/">桂林路
                                    </a>
                                    </li>
                                    <li mark="9号线"><a class="" id="漕河泾开发区"
                                                      href="/zhaofang/d913/">漕河泾开发区 </a>
                                    </li>
                                    <li mark="9号线"><a class="" id="合川路" href="/zhaofang/d914/">合川路
                                    </a>
                                    </li>
                                    <li mark="9号线"><a class="" id="星中路" href="/zhaofang/d915/">星中路
                                    </a>
                                    </li>
                                    <li mark="9号线"><a class="" id="七宝" href="/zhaofang/d916/">七宝
                                    </a>
                                    </li>
                                    <li mark="9号线"><a class="" id="中春路" href="/zhaofang/d917/">中春路
                                    </a>
                                    </li>
                                    <li mark="9号线"><a class="" id="九亭" href="/zhaofang/d918/">九亭
                                    </a>
                                    </li>
                                    <li mark="9号线"><a class="" id="泗泾" href="/zhaofang/d919/">泗泾
                                    </a>
                                    </li>
                                    <li mark="9号线"><a class="" id="佘山" href="/zhaofang/d920/">佘山
                                    </a>
                                    </li>
                                    <li mark="9号线"><a class="" id="洞泾" href="/zhaofang/d921/">洞泾
                                    </a>
                                    </li>
                                    <li mark="9号线"><a class="" id="松江大学城"
                                                      href="/zhaofang/d922/">松江大学城 </a>
                                    </li>
                                    <li mark="9号线"><a class="" id="松江新城"
                                                      href="/zhaofang/d923/">松江新城 </a>
                                    </li>
                                    <li mark="9号线"><a class="" id="松江体育中心"
                                                      href="/zhaofang/d924/">松江体育中心 </a>
                                    </li>
                                    <li mark="9号线"><a class="" id="醉白池" href="/zhaofang/d925/">醉白池
                                    </a>
                                    </li>
                                    <li mark="9号线"><a class="" id="松江南站"
                                                      href="/zhaofang/d926/">松江南站 </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="pos-r pos-inline" id="div_10号线" style="display: none;">
                        <div class="pos-r pos_inline" id="div_10号线">
                            <div class="down-list" style="text-align: center;">
                                <ul class="pop-list list-new-chcek clearfix">
                                    <li mark="10号线"><a id="10号线_quanbu"
                                                       href="/zhaofang/d1000/" class="text-specific clearIcon">全部</a>
                                    </li>
                                    <li mark="10号线"><a class="" id="新江湾城"
                                                       href="/zhaofang/d1001/">新江湾城 </a>
                                    </li>
                                    <li mark="10号线"><a class="" id="殷高东路"
                                                       href="/zhaofang/d1002/">殷高东路 </a>
                                    </li>
                                    <li mark="10号线"><a class="" id="三门路"
                                                       href="/zhaofang/d1003/">三门路 </a>
                                    </li>
                                    <li mark="10号线"><a class="" id="江湾体育场"
                                                       href="/zhaofang/d1004/">江湾体育场 </a>
                                    </li>
                                    <li mark="10号线"><a class="" id="五角场"
                                                       href="/zhaofang/d1005/">五角场 </a>
                                    </li>
                                    <li mark="10号线"><a class="" id="国权路"
                                                       href="/zhaofang/d1006/">国权路 </a>
                                    </li>
                                    <li mark="10号线"><a class="" id="同济大学"
                                                       href="/zhaofang/d1007/">同济大学 </a>
                                    </li>
                                    <li mark="10号线"><a class="" id="四平路"
                                                       href="/zhaofang/d1008/">四平路 </a>
                                    </li>
                                    <li mark="10号线"><a class="" id="邮电新村"
                                                       href="/zhaofang/d1009/">邮电新村 </a>
                                    </li>
                                    <li mark="10号线"><a class="" id="海伦路"
                                                       href="/zhaofang/d1010/">海伦路 </a>
                                    </li>
                                    <li mark="10号线"><a class="" id="四川北路"
                                                       href="/zhaofang/d1011/">四川北路 </a>
                                    </li>
                                    <li mark="10号线"><a class="" id="天潼路"
                                                       href="/zhaofang/d1012/">天潼路 </a>
                                    </li>
                                    <li mark="10号线"><a class="" id="南京东路"
                                                       href="/zhaofang/d1013/">南京东路 </a>
                                    </li>
                                    <li mark="10号线"><a class="" id="豫园"
                                                       href="/zhaofang/d1014/">豫园 </a>
                                    </li>
                                    <li mark="10号线"><a class="" id="老西门"
                                                       href="/zhaofang/d1015/">老西门 </a>
                                    </li>
                                    <li mark="10号线"><a class="" id="新天地"
                                                       href="/zhaofang/d1016/">新天地 </a>
                                    </li>
                                    <li mark="10号线"><a class="" id="陕西南路"
                                                       href="/zhaofang/d1017/">陕西南路 </a>
                                    </li>
                                    <li mark="10号线"><a class="" id="上海图书馆"
                                                       href="/zhaofang/d1018/">上海图书馆 </a>
                                    </li>
                                    <li mark="10号线"><a class="" id="交通大学"
                                                       href="/zhaofang/d1019/">交通大学 </a>
                                    </li>
                                    <li mark="10号线"><a class="" id="虹桥路"
                                                       href="/zhaofang/d1020/">虹桥路 </a>
                                    </li>
                                    <li mark="10号线"><a class="" id="宋园路"
                                                       href="/zhaofang/d1021/">宋园路 </a>
                                    </li>
                                    <li mark="10号线"><a class="" id="伊犁路"
                                                       href="/zhaofang/d1022/">伊犁路 </a>
                                    </li>
                                    <li mark="10号线"><a class="" id="水城路"
                                                       href="/zhaofang/d1023/">水城路 </a>
                                    </li>
                                    <li mark="10号线"><a class="" id="龙溪路"
                                                       href="/zhaofang/d1024/">龙溪路 </a>
                                    </li>
                                    <li mark="10号线"><a class="" id="上海动物园"
                                                       href="/zhaofang/d1025/">上海动物园 </a>
                                    </li>
                                    <li mark="10号线"><a class="" id="虹桥1号航站楼"
                                                       href="/zhaofang/d1026/">虹桥1号航站楼 </a>
                                    </li>
                                    <li mark="10号线"><a class="" id="虹桥2号航站楼"
                                                       href="/zhaofang/d1027/">虹桥2号航站楼 </a>
                                    </li>
                                    <li mark="10号线"><a class="" id="虹桥火车站"
                                                       href="/zhaofang/d1028/">虹桥火车站 </a>
                                    </li>
                                    <li mark="10号线"><a class="" id="龙柏新村"
                                                       href="/zhaofang/d1029/">龙柏新村 </a>
                                    </li>
                                    <li mark="10号线"><a class="" id="紫藤路"
                                                       href="/zhaofang/d1030/">紫藤路 </a>
                                    </li>
                                    <li mark="10号线"><a class="" id="航中路"
                                                       href="/zhaofang/d1031/">航中路 </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="pos-r pos-inline" id="div_11号线" style="display: none;">
                        <div class="pos-r pos_inline" id="div_11号线">
                            <div class="down-list" style="text-align: center;">
                                <ul class="pop-list list-new-chcek clearfix">
                                    <li mark="11号线"><a id="11号线_quanbu"
                                                       href="/zhaofang/d1100/" class="text-specific clearIcon">全部</a>
                                    </li>
                                    <li mark="11号线"><a class="" id="罗山路"
                                                       href="/zhaofang/d1101/">罗山路 </a>
                                    </li>
                                    <li mark="11号线"><a class="" id="御桥"
                                                       href="/zhaofang/d1102/">御桥 </a>
                                    </li>
                                    <li mark="11号线"><a class="" id="浦三路"
                                                       href="/zhaofang/d1103/">浦三路 </a>
                                    </li>
                                    <li mark="11号线"><a class="" id="三林东"
                                                       href="/zhaofang/d1104/">三林东 </a>
                                    </li>
                                    <li mark="11号线"><a class="" id="三林"
                                                       href="/zhaofang/d1105/">三林 </a>
                                    </li>
                                    <li mark="11号线"><a class="" id="东方体育中心"
                                                       href="/zhaofang/d1106/">东方体育中心 </a>
                                    </li>
                                    <li mark="11号线"><a class="" id="龙耀路"
                                                       href="/zhaofang/d1107/">龙耀路 </a>
                                    </li>
                                    <li mark="11号线"><a class="" id="云锦路"
                                                       href="/zhaofang/d1108/">云锦路 </a>
                                    </li>
                                    <li mark="11号线"><a class="" id="龙华"
                                                       href="/zhaofang/d1109/">龙华 </a>
                                    </li>
                                    <li mark="11号线"><a class="" id="上海游泳馆"
                                                       href="/zhaofang/d1110/">上海游泳馆 </a>
                                    </li>
                                    <li mark="11号线"><a class="" id="徐家汇"
                                                       href="/zhaofang/d1111/">徐家汇 </a>
                                    </li>
                                    <li mark="11号线"><a class="" id="交通大学"
                                                       href="/zhaofang/d1112/">交通大学 </a>
                                    </li>
                                    <li mark="11号线"><a class="" id="江苏路"
                                                       href="/zhaofang/d1113/">江苏路 </a>
                                    </li>
                                    <li mark="11号线"><a class="" id="隆德路"
                                                       href="/zhaofang/d1114/">隆德路 </a>
                                    </li>
                                    <li mark="11号线"><a class="" id="曹杨路"
                                                       href="/zhaofang/d1115/">曹杨路 </a>
                                    </li>
                                    <li mark="11号线"><a class="" id="枫桥路"
                                                       href="/zhaofang/d1116/">枫桥路 </a>
                                    </li>
                                    <li mark="11号线"><a class="" id="真如"
                                                       href="/zhaofang/d1117/">真如 </a>
                                    </li>
                                    <li mark="11号线"><a class="" id="上海西站"
                                                       href="/zhaofang/d1118/">上海西站 </a>
                                    </li>
                                    <li mark="11号线"><a class="" id="李子园"
                                                       href="/zhaofang/d1119/">李子园 </a>
                                    </li>
                                    <li mark="11号线"><a class="" id="祁连山路"
                                                       href="/zhaofang/d1120/">祁连山路 </a>
                                    </li>
                                    <li mark="11号线"><a class="" id="武威路"
                                                       href="/zhaofang/d1121/">武威路 </a>
                                    </li>
                                    <li mark="11号线"><a class="" id="桃浦新村"
                                                       href="/zhaofang/d1122/">桃浦新村 </a>
                                    </li>
                                    <li mark="11号线"><a class="" id="南翔"
                                                       href="/zhaofang/d1123/">南翔 </a>
                                    </li>
                                    <li mark="11号线"><a class="" id="马陆"
                                                       href="/zhaofang/d1124/">马陆 </a>
                                    </li>
                                    <li mark="11号线"><a class="" id="嘉定新城"
                                                       href="/zhaofang/d1125/">嘉定新城 </a>
                                    </li>
                                    <li mark="11号线"><a class="" id="白银路"
                                                       href="/zhaofang/d1126/">白银路 </a>
                                    </li>
                                    <li mark="11号线"><a class="" id="嘉定西站"
                                                       href="/zhaofang/d1127/">嘉定西站 </a>
                                    </li>
                                    <li mark="11号线"><a class="" id="嘉定北站"
                                                       href="/zhaofang/d1128/">嘉定北站 </a>
                                    </li>
                                    <li mark="11号线"><a class="" id="上海赛车场"
                                                       href="/zhaofang/d1129/">上海赛车场 </a>
                                    </li>
                                    <li mark="11号线"><a class="" id="昌吉东路"
                                                       href="/zhaofang/d1130/">昌吉东路 </a>
                                    </li>
                                    <li mark="11号线"><a class="" id="上海汽车城"
                                                       href="/zhaofang/d1131/">上海汽车城 </a>
                                    </li>
                                    <li mark="11号线"><a class="" id="安亭"
                                                       href="/zhaofang/d1132/">安亭 </a>
                                    </li>
                                    <li mark="11号线"><a class="" id="兆丰路"
                                                       href="/zhaofang/d1133/">兆丰路 </a>
                                    </li>
                                    <li mark="11号线"><a class="" id="光明路"
                                                       href="/zhaofang/d1134/">光明路 </a>
                                    </li>
                                    <li mark="11号线"><a class="" id="花桥"
                                                       href="/zhaofang/d1135/">花桥 </a>
                                    </li>
                                    <li mark="11号线"><a class="" id="迪士尼"
                                                       href="/zhaofang/d1136/">迪士尼 </a>
                                    </li>
                                    <li mark="11号线"><a class="" id="康新公路"
                                                       href="/zhaofang/d1137/">康新公路 </a>
                                    </li>
                                    <li mark="11号线"><a class="" id="秀沿路"
                                                       href="/zhaofang/d1138/">秀沿路 </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="pos-r pos-inline" id="div_12号线" style="display: none;">
                        <div class="pos-r pos_inline" id="div_12号线">
                            <div class="down-list" style="text-align: center;">
                                <ul class="pop-list list-new-chcek clearfix">
                                    <li mark="12号线"><a id="12号线_quanbu"
                                                       href="/zhaofang/d1200/" class="text-specific clearIcon">全部</a>
                                    </li>
                                    <li mark="12号线"><a class="" id="金海路"
                                                       href="/zhaofang/d1201/">金海路 </a>
                                    </li>
                                    <li mark="12号线"><a class="" id="申江路"
                                                       href="/zhaofang/d1202/">申江路 </a>
                                    </li>
                                    <li mark="12号线"><a class="" id="金京路"
                                                       href="/zhaofang/d1203/">金京路 </a>
                                    </li>
                                    <li mark="12号线"><a class="" id="杨高北路"
                                                       href="/zhaofang/d1204/">杨高北路 </a>
                                    </li>
                                    <li mark="12号线"><a class="" id="巨峰路"
                                                       href="/zhaofang/d1205/">巨峰路 </a>
                                    </li>
                                    <li mark="12号线"><a class="" id="东陆路"
                                                       href="/zhaofang/d1206/">东陆路 </a>
                                    </li>
                                    <li mark="12号线"><a class="" id="复兴岛"
                                                       href="/zhaofang/d1207/">复兴岛 </a>
                                    </li>
                                    <li mark="12号线"><a class="" id="爱国路"
                                                       href="/zhaofang/d1208/">爱国路 </a>
                                    </li>
                                    <li mark="12号线"><a class="" id="隆昌路"
                                                       href="/zhaofang/d1209/">隆昌路 </a>
                                    </li>
                                    <li mark="12号线"><a class="" id="宁国路"
                                                       href="/zhaofang/d1210/">宁国路 </a>
                                    </li>
                                    <li mark="12号线"><a class="" id="江浦公园"
                                                       href="/zhaofang/d1211/">江浦公园 </a>
                                    </li>
                                    <li mark="12号线"><a class="" id="大连路"
                                                       href="/zhaofang/d1212/">大连路 </a>
                                    </li>
                                    <li mark="12号线"><a class="" id="提篮桥"
                                                       href="/zhaofang/d1213/">提篮桥 </a>
                                    </li>
                                    <li mark="12号线"><a class="" id="国际客运中心"
                                                       href="/zhaofang/d1214/">国际客运中心 </a>
                                    </li>
                                    <li mark="12号线"><a class="" id="天潼路"
                                                       href="/zhaofang/d1215/">天潼路 </a>
                                    </li>
                                    <li mark="12号线"><a class="" id="曲阜路"
                                                       href="/zhaofang/d1216/">曲阜路 </a>
                                    </li>
                                    <li mark="12号线"><a class="" id="汉中路"
                                                       href="/zhaofang/d1217/">汉中路 </a>
                                    </li>
                                    <li mark="12号线"><a class="" id="南京西路"
                                                       href="/zhaofang/d1218/">南京西路 </a>
                                    </li>
                                    <li mark="12号线"><a class="" id="陕西南路"
                                                       href="/zhaofang/d1219/">陕西南路 </a>
                                    </li>
                                    <li mark="12号线"><a class="" id="嘉善路"
                                                       href="/zhaofang/d1220/">嘉善路 </a>
                                    </li>
                                    <li mark="12号线"><a class="" id="大木桥路"
                                                       href="/zhaofang/d1221/">大木桥路 </a>
                                    </li>
                                    <li mark="12号线"><a class="" id="龙华中路"
                                                       href="/zhaofang/d1222/">龙华中路 </a>
                                    </li>
                                    <li mark="12号线"><a class="" id="龙华"
                                                       href="/zhaofang/d1223/">龙华 </a>
                                    </li>
                                    <li mark="12号线"><a class="" id="龙漕路"
                                                       href="/zhaofang/d1224/">龙漕路 </a>
                                    </li>
                                    <li mark="12号线"><a class="" id="漕宝路"
                                                       href="/zhaofang/d1225/">漕宝路 </a>
                                    </li>
                                    <li mark="12号线"><a class="" id="桂林公园"
                                                       href="/zhaofang/d1226/">桂林公园 </a>
                                    </li>
                                    <li mark="12号线"><a class="" id="虹漕路"
                                                       href="/zhaofang/d1227/">虹漕路 </a>
                                    </li>
                                    <li mark="12号线"><a class="" id="虹梅路"
                                                       href="/zhaofang/d1228/">虹梅路 </a>
                                    </li>
                                    <li mark="12号线"><a class="" id="东兰路"
                                                       href="/zhaofang/d1229/">东兰路 </a>
                                    </li>
                                    <li mark="12号线"><a class="" id="顾戴路"
                                                       href="/zhaofang/d1230/">顾戴路 </a>
                                    </li>
                                    <li mark="12号线"><a class="" id="虹莘路"
                                                       href="/zhaofang/d1231/">虹莘路 </a>
                                    </li>
                                    <li mark="12号线"><a class="" id="七莘路"
                                                       href="/zhaofang/d1232/">七莘路 </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="pos-r pos-inline" id="div_13号线" style="display: none;">
                        <div class="pos-r pos_inline" id="div_13号线">
                            <div class="down-list" style="text-align: center;">
                                <ul class="pop-list list-new-chcek clearfix">
                                    <li mark="13号线"><a id="13号线_quanbu"
                                                       href="/zhaofang/d1300/" class="text-specific clearIcon">全部</a>
                                    </li>
                                    <li mark="13号线"><a class="" id="金运路"
                                                       href="/zhaofang/d1301/">金运路 </a>
                                    </li>
                                    <li mark="13号线"><a class="" id="金沙江西路"
                                                       href="/zhaofang/d1302/">金沙江西路 </a>
                                    </li>
                                    <li mark="13号线"><a class="" id="丰庄"
                                                       href="/zhaofang/d1303/">丰庄 </a>
                                    </li>
                                    <li mark="13号线"><a class="" id="祁连山南路"
                                                       href="/zhaofang/d1304/">祁连山南路 </a>
                                    </li>
                                    <li mark="13号线"><a class="" id="真北路"
                                                       href="/zhaofang/d1305/">真北路 </a>
                                    </li>
                                    <li mark="13号线"><a class="" id="大渡河路"
                                                       href="/zhaofang/d1306/">大渡河路 </a>
                                    </li>
                                    <li mark="13号线"><a class="" id="金沙江路"
                                                       href="/zhaofang/d1307/">金沙江路 </a>
                                    </li>
                                    <li mark="13号线"><a class="" id="隆德路"
                                                       href="/zhaofang/d1308/">隆德路 </a>
                                    </li>
                                    <li mark="13号线"><a class="" id="武宁路"
                                                       href="/zhaofang/d1309/">武宁路 </a>
                                    </li>
                                    <li mark="13号线"><a class="" id="长寿路"
                                                       href="/zhaofang/d1310/">长寿路 </a>
                                    </li>
                                    <li mark="13号线"><a class="" id="江宁路"
                                                       href="/zhaofang/d1311/">江宁路 </a>
                                    </li>
                                    <li mark="13号线"><a class="" id="汉中路"
                                                       href="/zhaofang/d1312/">汉中路 </a>
                                    </li>
                                    <li mark="13号线"><a class="" id="自然博物馆"
                                                       href="/zhaofang/d1313/">自然博物馆 </a>
                                    </li>
                                    <li mark="13号线"><a class="" id="南京西路"
                                                       href="/zhaofang/d1314/">南京西路 </a>
                                    </li>
                                    <li mark="13号线"><a class="" id="淮海中路"
                                                       href="/zhaofang/d1315/">淮海中路 </a>
                                    </li>
                                    <li mark="13号线"><a class="" id="新天地"
                                                       href="/zhaofang/d1316/">新天地 </a>
                                    </li>
                                    <li mark="13号线"><a class="" id="马当路"
                                                       href="/zhaofang/d1317/">马当路 </a>
                                    </li>
                                    <li mark="13号线"><a class="" id="世博会博物馆"
                                                       href="/zhaofang/d1318/">世博会博物馆 </a>
                                    </li>
                                    <li mark="13号线"><a class="" id="世博大道"
                                                       href="/zhaofang/d1319/">世博大道 </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="pos-r pos-inline" id="div_16号线" style="display: none;">
                        <div class="pos-r pos_inline" id="div_16号线">
                            <div class="down-list" style="text-align: center;">
                                <ul class="pop-list list-new-chcek clearfix">
                                    <li mark="16号线"><a id="16号线_quanbu"
                                                       href="/zhaofang/d1600/" class="text-specific clearIcon">全部</a>
                                    </li>
                                    <li mark="16号线"><a class="" id="滴水湖"
                                                       href="/zhaofang/d1601/">滴水湖 </a>
                                    </li>
                                    <li mark="16号线"><a class="" id="临港大道"
                                                       href="/zhaofang/d1602/">临港大道 </a>
                                    </li>
                                    <li mark="16号线"><a class="" id="书院"
                                                       href="/zhaofang/d1603/">书院 </a>
                                    </li>
                                    <li mark="16号线"><a class="" id="惠南东"
                                                       href="/zhaofang/d1604/">惠南东 </a>
                                    </li>
                                    <li mark="16号线"><a class="" id="惠南"
                                                       href="/zhaofang/d1605/">惠南 </a>
                                    </li>
                                    <li mark="16号线"><a class="" id="野生动物园"
                                                       href="/zhaofang/d1606/">野生动物园 </a>
                                    </li>
                                    <li mark="16号线"><a class="" id="新场"
                                                       href="/zhaofang/d1607/">新场 </a>
                                    </li>
                                    <li mark="16号线"><a class="" id="航头东"
                                                       href="/zhaofang/d1608/">航头东 </a>
                                    </li>
                                    <li mark="16号线"><a class="" id="鹤沙航城"
                                                       href="/zhaofang/d1609/">鹤沙航城 </a>
                                    </li>
                                    <li mark="16号线"><a class="" id="周浦东"
                                                       href="/zhaofang/d1610/">周浦东 </a>
                                    </li>
                                    <li mark="16号线"><a class="" id="罗山路"
                                                       href="/zhaofang/d1611/">罗山路 </a>
                                    </li>
                                    <li mark="16号线"><a class="" id="华夏中路"
                                                       href="/zhaofang/d1612/">华夏中路 </a>
                                    </li>
                                    <li mark="16号线"><a class="" id="龙阳路"
                                                       href="/zhaofang/d1613/">龙阳路 </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="pos-r pos-inline" id="div_2号线东延线"
                         style="display: none;">
                        <div class="pos-r pos_inline" id="div_2号线东延线">
                            <div class="down-list" style="text-align: center;">
                                <ul class="pop-list list-new-chcek clearfix">
                                    <li mark="2号线东延线"><a id="2号线东延线_quanbu"
                                                         href="/zhaofang/d5000/" class="text-specific clearIcon">全部</a>
                                    </li>
                                    <li mark="2号线东延线"><a class="" id="广兰路"
                                                         href="/zhaofang/d5001/">广兰路 </a>
                                    </li>
                                    <li mark="2号线东延线"><a class="" id="唐镇"
                                                         href="/zhaofang/d5002/">唐镇 </a>
                                    </li>
                                    <li mark="2号线东延线"><a class="" id="创新中路"
                                                         href="/zhaofang/d5003/">创新中路 </a>
                                    </li>
                                    <li mark="2号线东延线"><a class="" id="华夏东路"
                                                         href="/zhaofang/d5004/">华夏东路 </a>
                                    </li>
                                    <li mark="2号线东延线"><a class="" id="川沙"
                                                         href="/zhaofang/d5005/">川沙 </a>
                                    </li>
                                    <li mark="2号线东延线"><a class="" id="凌空路"
                                                         href="/zhaofang/d5006/">凌空路 </a>
                                    </li>
                                    <li mark="2号线东延线"><a class="" id="远东大道"
                                                         href="/zhaofang/d5007/">远东大道 </a>
                                    </li>
                                    <li mark="2号线东延线"><a class="" id="海天三路"
                                                         href="/zhaofang/d5008/">海天三路 </a>
                                    </li>
                                    <li mark="2号线东延线"><a class="" id="浦东国际机场"
                                                         href="/zhaofang/d5009/">浦东国际机场 </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!--地铁站-->
                </div>
                <dl class="clearfix">
                    <dt>租金:</dt>
                    <dd class="list-new-chcek house_option">
                        <ul id="PBArent" class="line-list clearfix">
                            <li mark="租金不限"><a href="javascript:"
                                               class="clearIcon house_option_wuxian">不限</a></li>
                            <li mark="1000元以下"><a class="money" href="javascript:" onclick="query">1000元以下</a>
                            </li>
                            <li mark="1000-2000元"><a class="money" href="javascript:">1000-2000元</a>
                            </li>
                            <li mark="2000-3000元"><a class="money" href="javascript:">2000-3000元</a>
                            </li>
                            <li mark="3000-4000元"><a class="money" href="javascript:">3000-4000元</a>
                            </li>
                            <li mark="4000-5000元"><a class="money" href="javascript:">4000-5000元</a>
                            </li>
                            <li mark="5000元以上"><a class="money" href="javascript:">5000元以上</a>
                            </li>
                            <li>
                                <div class="custom clearfix">
                                    <form name="form_monthrent" mark="租金确定">
                                        <input type="hidden" name="prefixUrl" value="/zhaofang/"/> <input
                                            name="rent_start" value="" type="text"> - <input
                                            name="rent_end" value="" type="text"> <a
                                            href="javascript:void(0);"
                                            onclick="javascript:searchMonthRent()"
                                            class="btn-line-red btn-line-red-new">确定</a>
                                    </form>
                                </div>
                            </li>
                        </ul>
                    </dd>
                </dl>
                <dl class="clearfix">
                    <dt>类型:</dt>
                    <dd class="list-new-chcek house_option">
                        <ul id="PBAtype" class="line-list clearfix">
                            <li mark="类型不限"><a href="javascript:"
                                               class="clearIcon house_option_wuxian">不限</a></li>
                            <li mark="合租"><a class="zType" href="javascript:">合租</a></li>
                            <li mark="整租"><a class="zType" href="javascript:" name="zz">整租</a></li>
                        </ul>
                    </dd>
                </dl>
                <dl class="clearfix">
                    <dt>户型:</dt>
                    <dd class="list-new-chcek house_option">
                        <ul id="PBAunit" class="line-list clearfix">
                            <li mark="户型不限"><a href="javascript:"
                                               class="clearIcon house_option_wuxian">不限</a></li>
                            <li mark="一室"><a class="roomNum" href="javascript:">一室</a></li>
                            <li mark="二室"><a class="roomNum" href="javascript:">二室</a></li>
                            <li mark="三室"><a class="roomNum" href="javascript:">三室</a></li>
                            <li mark="三室以上"><a class="roomNum" href="javascript:">三室以上</a></li>
                        </ul>
                    </dd>
                </dl>
                <dl class="clearfix">
                    <dt>特色:</dt>
                    <dd class="list-new-chcek house_option">
                        <ul id="PBAspe" class="line-list-check clearfix">
                            <li mark="户型不限"><a href="javascript:"
                                               class="clearIcon house_option_wuxian">不限</a></li>
                            <li><a href="javascript:" class="specials">独卫</a></li>
                            <li mark="近地铁"><a href="javascript:" class="specials">近地铁</a></li>
                            <li mark="非隔断"><a href="javascript:" class="specials">非隔断</a></li>
                            <li mark="朝南"><a href="javascript:" class="specials">朝南</a></li>
                            <li mark="带阳台"><a href="javascript:" class="specials">带阳台</a></li>
                            <li mark="精装修"><a href="javascript:" class="specials">精装修</a></li>
                            <li mark="家电齐全"><a href="javascript:" class="specials">家电齐全</a></li>
                        </ul>
                    </dd>
                </dl>
            </div>
            <div>
                <div class="list-selected paixu ">
                    <dl class="clearfix">
                        <dt>排序：</dt>
                        <dd>
                            <ul class="clearfix li_selected">
                                <li><a href="javascript:"> <span
                                        class="label-text paixuActive"> 默认 </span> </a>
                                </li>
                                <li><a href="javascript:"> <span class="label-text ">
											价格由低到高 </span> </a>
                                </li>
                                <li><a href="javascript:"> <span class="label-text ">
											价格由高到低 </span> </a>
                                </li>
                                <li><a href="javascript:"> <span class="label-text ">
											面积由小到大 </span> </a>
                                </li>
                                <li><a href="javascript:"> <span class="label-text ">
											面积由大到小 </span> </a>
                                </li>
                            </ul>
                        </dd>
                    </dl>
                    <div class="pos-r out">
                        <a href="javascript:void(0)" class="top-xiugai">修改</a>
                    </div>
                </div>
                <div class="view-tab-line">
                    <div class="view-tab">
                        <a href="javascript:void(0)" id="list-btn" class="showActive"><span
                                class="bg-liebiao_g"></span>列表</a> <a href="javascript:void(0)"
                                                                      id="bigImg-btn"><span class="bg-i01_grey"></span>大图</a>
                    </div>
                </div>
            </div>
        </div>
        <!--list-new-->
        <div class="unit-new clearfix ">
            <div class="list-center">
                <ul>
                    <%--<li uniqid="1" class="listUnit-date clearfix PBA_list_house"--%>
                        <%--num="574465" name="爱博七村 1室0厅0卫" category="华漕闵行" variant="合租"--%>
                        <%--price="3000">--%>
                        <%--<div class="pro-pic">--%>
                            <%--<a target="_blank"--%>
                               <%--href="http://sh.baletu.com/house/574465.html?view_source=1&position=2&seachId=0"--%>
                               <%--onclick="onProductClick(this)"> <img class="lazy"--%>
                                                                    <%--alt="爱博七村 1室0厅0卫"--%>
                                                                    <%--data-original="http://cdn.baletoo.cn/Uploads/housephoto/575/574465/oss_583fe522e1f1d.jpg@!380_280.png"/>--%>
                            <%--</a>--%>
                        <%--</div>--%>
                        <%--<div class="pro-text">--%>
                            <%--<div class="list-pic-title">--%>
                                <%--<h3>--%>
                                    <%--<a target="_blank"--%>
                                       <%--href="http://sh.baletu.com/house/574465.html?view_source=1&position=3&seachId=0"--%>
                                       <%--onclick="onProductClick_new(this)"> 爱博七村 </a> <span>华漕</span>--%>
                                <%--</h3>--%>
                                <%--<span class="price"><em>￥</em>3000</span> <span--%>
                                    <%--class="room-time">2018-04-15 发布</span>--%>
                            <%--</div>--%>
                            <%--<p class="list-pic-ps">华漕</p>--%>
                            <%--<p class="list-pic-ps">3户合租 | 朝南-主卧 | 28M²</p>--%>
                            <%--<div class="list-pic-ad">--%>
                                <%--<span class="bg-dingwei"></span>距离博恒路申长北路公交站163米--%>
                            <%--</div>--%>
                            <%--<div class="pro-lab">--%>
                                <%--<span>月付</span><span>主卧</span><span>朝南</span><span>智能电表</span>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</li>--%>
                    <c:forEach var="house" items="${houseList}">

                        <li class="listUnit-date clearfix PBA_list_house">
                            <div class="pro-pic">
                                <a target="_blank"
                                   href="http://sh.baletu.com/house/634834.html?view_source=1&position=5&seachId=0"
                                   onclick="onProductClick(this)">
                                    <img class="lazy"
                                         alt="爱博三村 1室0厅1卫"
                                         data-original="http://cdn.baletoo.cn/Uploads/housephoto/635/634834/oss_584d00dd10c02.jpg@!380_280.png"/>
                                </a>
                            </div>
                            <div class="pro-text">
                                <div class="list-pic-title">
                                    <h3>
                                        <a target="_blank"
                                           href="<%=basePath%>house/content?id=${house.id}"
                                           onclick="onProductClick_new(this)">
                                                ${house.title}</a> <span>华漕</span>
                                    </h3>
                                    <span class="price"><em>￥</em>${house.price}</span> <span
                                        class="room-time"> <fmt:formatDate value="${house.createTime}"
                                                                           pattern="yyyy-MM-dd"/> 发布</span>
                                </div>
                                <p class="list-pic-ps">华漕</p>
                                <p class="list-pic-ps">${house.zTypeContext} | ${house.roomWay} | ${house.square}</p>
                                <div class="list-pic-ad">
                                    <span class="bg-dingwei"></span>${house.address}
                                </div>
                                <div class="pro-lab">
                                    <span>月付</span><span>朝南</span><span>独卫</span><span>电梯房</span> ${house.id}
                                </div>
                            </div>
                        </li>
                    </c:forEach>

                    <%--<li>--%>
                        <%--*******************例子******************--%>
                        <%--<br>--%>
                        <%--<table>--%>
                            <%--<c:forEach var="house" items="${houseList}" varStatus="status">--%>
                                <%--<tr>--%>
                                    <%--<td>--%>
                                        <%--<span>${house.address }</span>--%>
                                    <%--</td>--%>
                                    <%--<td>--%>
                                        <%--<span>${house.floor }</span>--%>
                                    <%--</td>--%>
                                    <%--<td>--%>

                                    <%--</td>--%>
                                    <%--<td>--%>
                                        <%--<span>${house.special}</span>--%>
                                    <%--</td>--%>

                                <%--</tr>--%>
                            <%--</c:forEach>--%>
                        <%--</table>--%>
                    <%--</li>--%>
                </ul>
            </div>
        </div>
        <!--list-new end-->
        <form id="zhaofangForm">
            <input name="PVhouse" type="hidden" value="48"> <input
                name="PVtitle" type="hidden" value="上海租房"> <input
                name="PVurl" type="hidden" value="/zhaofang/"> <input
                name="PVdefaulturl" type="hidden" value="/zhaofang/0">
        </form>
        <script type="text/javascript"
                src="<%=basePath%>statics/js/kkpager.js"></script>
        <!--page numble-->

        <div id="zhaofangpager" class="page-numble"></div>
        <!--page numble end-->
    </div>


    <script type="text/javascript">
        //init
        // var href = searchHref(oldHref);

        var seoTags = 0;

        var relate_id = 0;

        var totalPage = 5;
        var totalRecords =13;
        var pageNo = 0;
        var seachId = 0;

        if (!pageNo) {
            pageNo = 1;
        }

        var selectPara = '';
        var areaPara = '';
        if (!(selectPara == '')) {
            selectPara = selectPara + '/';
        }
        if (!(areaPara == '')) {
            areaPara = areaPara + '/';
        }

        $(function () {
            //生成分页
            //有些参数是可选的，比如lang，若不传有默认值
            var href = window.location.pathname;


            kkpager.generPageHtml({
                pno: pageNo,
                //总页码
                total: totalPage,
                //总数据条数
                totalRecords: totalRecords,
                getLink: function (n) {

                    if (n == 1) {
                        if (href.indexOf("all") != -1 || href.indexOf("pNum") != -1) {
                            return '/house/pager';
                        } else {
                            return '/house/pager' + '?pNum=' + n;
                        }
                    } else {
                        if (href.indexOf("all") != -1) {
                            if (href.indexOf("_pager") != -1) {
                                href = href.replace("_pager", "");
                            }
                            return href + '_pager?pNum=' + n;

                        }
                        // href  = href.replace("","");
                        if (href.indexOf("_p" + (n + 1)) != -1) {
                            href = href.replace("_p" + (n + 1), "");
                        } else if (href.indexOf("_p" + (n - 1)) != -1) {
                            href = href.replace("_p" + (n - 1), "");
                        }
                        return href + '_p' + n;
                    }
                }


                /*
                ,lang				: {
                    firstPageText			: '首页',
                    firstPageTipText		: '首页',
                    lastPageText			: '尾页',
                    lastPageTipText			: '尾页',
                    prePageText				: '上一页',
                    prePageTipText			: '上一页',
                    nextPageText			: '下一页',
                    nextPageTipText			: '下一页',
                    totalPageBeforeText		: '共',
                    totalPageAfterText		: '页',
                    currPageBeforeText		: '当前第',
                    currPageAfterText		: '页',
                    totalInfoSplitStr		: '/',
                    totalRecordsBeforeText	: '共',
                    totalRecordsAfterText	: '条数据',
                    gopageBeforeText		: ' 转到',
                    gopageButtonOkText		: '确定',
                    gopageAfterText			: '页',
                    buttonTipBeforeText		: '第',
                    buttonTipAfterText		: '页'
                }*/

                //,
                //mode : 'click',//默认值是link，可选link或者click
                //click : function(n){
                //	this.selectPage(n);
                //  return false;
                //}
            });
        })
        ;
        // $(function () {
        //     //生成分页
        //     //有些参数是可选的，比如lang，若不传有默认值
        //     kkpager.generPageHtml({
        //         pno: pageNo,
        //         //总页码
        //         total: totalPage,
        //         //总数据条数
        //         totalRecords: totalRecords,
        //         //链接前部
        //         hrefFormer: '',
        //         //链接尾部
        //         hrefLatter: '',
        //         getLink: function (n) {
        //             var link = '';
        //             if (seoTags) {
        //                 if (n == 1) {
        //                     link = '/tags/' + relate_id + '.html';
        //                 } else {
        //                     link = '/tags/' + relate_id + '-' + n + '.html';
        //                 }
        //
        //                 return link;
        //             } else {
        //                 if (n == 1) {
        //                     link = '/hosue/' + areaPara + selectPara;
        //                     return link;
        //                 } else {
        //                     if (selectPara == '') {
        //                         link = '/house/pager' + areaPara + "?pNum=" + n;
        //                     } else {
        //                         link = '/house/pager' + areaPara + "?pNum=" + n;
        //                     }
        //                     return link;
        //                 }
        //
        //             }
        //
        //         },
        //         lang: {
        //             firstPageText: '首页',
        //             firstPageTipText: '首页',
        //             // lastPageText			: '尾页',
        //             // lastPageTipText		: '尾页',
        //             prePageText: '<i class="icon icon-jt-l"></i>',
        //             prePageTipText: '上一页',
        //             nextPageText: '<i class="icon icon-jt-r"></i>',
        //             nextPageTipText: '下一页',
        //             // totalPageBeforeText	: '共',
        //             // totalPageAfterText		: '页',
        //             // currPageBeforeText		: '当前第',
        //             // currPageAfterText		: '页',
        //             // totalInfoSplitStr		: '/',
        //             // totalRecordsBeforeText	: '共',
        //             // totalRecordsAfterText	: '条数据',
        //             //gopageBeforeText		: '跳转到',
        //             // gopageButtonOkText		: 'GO',
        //             //gopageAfterText			: '',
        //             // buttonTipBeforeText		: '第',
        //             // buttonTipAfterText		: '页'
        //         },
        //         isShowFirstPageBtn: false,
        //         isShowLastPageBtn: false,
        //         isGoPage: false,
        //         isWrapedPageBtns: false,
        //         isWrapedInfoTextAndGoPageBtn: false,
        //         isShowTotalRecords: false,
        //         isShowCurrPage: false,
        //         isShowTotalRecordsBeforeText: false,
        //
        //     });
        // });
        g_config['model_name'] = 'zhaofang';
        g_config['house_list'] = '[{"id":"574465","area_name":"\u534e\u6f15","subdistrict_name":"\u7231\u535a\u4e03\u6751","bedroom":1,"bathroom":0,"fname":"\u95f5\u884c","hire_way":2,"month_rent":3000},{"id":"634834","area_name":"\u534e\u6f15","subdistrict_name":"\u7231\u535a\u4e09\u6751","bedroom":1,"bathroom":1,"fname":"\u95f5\u884c","hire_way":2,"month_rent":2000},{"id":"715004","area_name":"\u53e4\u7f8e\u7f57\u9633","subdistrict_name":"\u7f57\u9633\u4e94\u6751\u76db\u6e90\u82b1\u56ed","bedroom":1,"bathroom":0,"fname":"\u95f5\u884c","hire_way":2,"month_rent":1100},{"id":"827054","area_name":"\u8398\u5e84","subdistrict_name":"\u5b9d\u5b89\u65b0\u82d1","bedroom":1,"bathroom":1,"fname":"\u95f5\u884c","hire_way":2,"month_rent":2300},{"id":"769215","area_name":"\u4e5d\u4ead","subdistrict_name":"\u4e0a\u6d77\u5965\u6797\u5339\u514b\u82b1\u56ed\u5357\u533a","bedroom":1,"bathroom":0,"fname":"\u677e\u6c5f","hire_way":2,"month_rent":1280},{"id":"346751","area_name":"\u4e5d\u4ead","subdistrict_name":"\u4e91\u6da6\u5bb6\u56ed","bedroom":1,"bathroom":0,"fname":"\u677e\u6c5f","hire_way":2,"month_rent":1450},{"id":"1246666","area_name":"\u677e\u6c5f\u5927\u5b66\u57ce","subdistrict_name":"\u4e5d\u9f99\u4ed3\u5170\u5bab","bedroom":1,"bathroom":1,"fname":"\u677e\u6c5f","hire_way":2,"month_rent":1600},{"id":"1000853","area_name":"\u4e5d\u4ead","subdistrict_name":"\u675c\u5df7\u5c0f\u533a\uff08\u6c11\u623f\uff09","bedroom":1,"bathroom":0,"fname":"\u677e\u6c5f","hire_way":2,"month_rent":1200},{"id":"387409","area_name":"\u4e5d\u4ead","subdistrict_name":"\u91d1\u4e30\u84dd\u5ead\uff08\u6caa\u4ead\u5317\u8def1080\u5f04\uff09","bedroom":1,"bathroom":1,"fname":"\u677e\u6c5f","hire_way":2,"month_rent":1700},{"id":"631312","area_name":"\u7530\u6797","subdistrict_name":"\u534e\u60a6\u5bb6\u56ed\u5357\u533a","bedroom":1,"bathroom":0,"fname":"\u5f90\u6c47","hire_way":2,"month_rent":3100},{"id":"465555","area_name":"\u987e\u6751","subdistrict_name":"\u4fdd\u5229\u53f6\u4e0a\u6d77\u4e09\u671f","bedroom":1,"bathroom":0,"fname":"\u5b9d\u5c71","hire_way":2,"month_rent":1400},{"id":"263663","area_name":"\u9ad8\u5883","subdistrict_name":"\u540c\u6d4e\u5317\u82d1","bedroom":1,"bathroom":0,"fname":"\u5b9d\u5c71","hire_way":2,"month_rent":2400},{"id":"567181","area_name":"\u4e0a\u5927","subdistrict_name":"\u9526\u79cb\u82b1\u56ed\u4e8c\u671f","bedroom":1,"bathroom":0,"fname":"\u5b9d\u5c71","hire_way":2,"month_rent":1600},{"id":"484776","area_name":"\u5916\u9ad8\u6865","subdistrict_name":"\u8bc1\u5927\u5bb6\u56ed\u4e09\u671f","bedroom":1,"bathroom":0,"fname":"\u6d66\u4e1c","hire_way":2,"month_rent":2300},{"id":"1415208","area_name":"\u6625\u7533","subdistrict_name":"\u6c5f\u5357\u6b23\u82d1","bedroom":1,"bathroom":0,"fname":"\u95f5\u884c","hire_way":2,"month_rent":1500},{"id":"812908","area_name":"\u6d66\u6c5f","subdistrict_name":"\u57ce\u6797\u96c5\u82d1","bedroom":1,"bathroom":0,"fname":"\u95f5\u884c","hire_way":2,"month_rent":1750},{"id":"2218312","area_name":"\u5317\u8521","subdistrict_name":"\u7389\u5170\u5c0f\u533a\uff08\u83b2\u4e2d\u8def337\u5f04\uff09","bedroom":1,"bathroom":0,"fname":"\u6d66\u4e1c","hire_way":2,"month_rent":1980},{"id":"1607549","area_name":"\u987e\u6751","subdistrict_name":"\u83ca\u6cc9\u65b0\u57ce\u7231\u5efa\u987e\u56ed\u897f\u533a","bedroom":1,"bathroom":0,"fname":"\u5b9d\u5c71","hire_way":2,"month_rent":1700},{"id":"488664","area_name":"\u5317\u8521","subdistrict_name":"\u5927\u534e\u9526\u7ee3\u534e\u57ce4\u53f7\u8857\u533a\uff08\u632f\u4e1c\u82b1\u82d1\u5c0f\u533a\uff09","bedroom":1,"bathroom":1,"fname":"\u6d66\u4e1c","hire_way":2,"month_rent":2300},{"id":"509091","area_name":"\u4e0a\u5927","subdistrict_name":"\u9526\u79cb\u82b1\u56ed\u4e03\u671f","bedroom":1,"bathroom":1,"fname":"\u5b9d\u5c71","hire_way":2,"month_rent":1000},{"id":"577509","area_name":"\u5916\u9ad8\u6865","subdistrict_name":"\u7941\u5bd3\u516c\u5bd3","bedroom":1,"bathroom":1,"fname":"\u6d66\u4e1c","hire_way":1,"month_rent":1700},{"id":"620618","area_name":"\u5916\u9ad8\u6865","subdistrict_name":"\u9ad8\u884c\u7eff\u6d32\u4e94\u671f","bedroom":1,"bathroom":1,"fname":"\u6d66\u4e1c","hire_way":2,"month_rent":1600},{"id":"523017","area_name":"\u4e09\u6797","subdistrict_name":"\u4e1c\u65b9\u5eb7\u8fbe\u5bb6\u82d12\u671f","bedroom":1,"bathroom":1,"fname":"\u6d66\u4e1c","hire_way":2,"month_rent":2350},{"id":"849666","area_name":"\u5ddd\u6c99","subdistrict_name":"\u534e\u5ddd\u5bb6\u56ed","bedroom":1,"bathroom":0,"fname":"\u6d66\u4e1c","hire_way":2,"month_rent":950},{"id":"870574","area_name":"\u5ddd\u6c99","subdistrict_name":"\u5ddd\u8679\u65b0\u82d1","bedroom":1,"bathroom":0,"fname":"\u6d66\u4e1c","hire_way":2,"month_rent":1050},{"id":"631411","area_name":"\u8398\u5e84","subdistrict_name":"\u5c0f\u5bcc\u4eba\u5bb6\uff08\u6e90\u6210\u6625\u82d1\uff09","bedroom":1,"bathroom":1,"fname":"\u95f5\u884c","hire_way":2,"month_rent":2300},{"id":"631421","area_name":"\u8398\u5e84","subdistrict_name":"\u51ef\u5229\u5927\u697c","bedroom":1,"bathroom":0,"fname":"\u95f5\u884c","hire_way":2,"month_rent":1300},{"id":"634805","area_name":"\u83ca\u56ed\u65b0\u533a","subdistrict_name":"\u80dc\u60a6\u5609\u82d1\u4e1c\u82d1","bedroom":1,"bathroom":0,"fname":"\u5609\u5b9a","hire_way":2,"month_rent":1100},{"id":"496542","area_name":"\u5317\u8521","subdistrict_name":"\u9e4f\u5065\u82d1","bedroom":1,"bathroom":1,"fname":"\u6d66\u4e1c","hire_way":2,"month_rent":1600},{"id":"2489616","area_name":"\u5317\u8521","subdistrict_name":"\u83b2\u5eb7\u82d1","bedroom":1,"bathroom":0,"fname":"\u6d66\u4e1c","hire_way":2,"month_rent":2000},{"id":"602807","area_name":"\u5317\u8521","subdistrict_name":"\u9e4f\u4e30\u82d13\u671f","bedroom":1,"bathroom":1,"fname":"\u6d66\u4e1c","hire_way":2,"month_rent":2000},{"id":"603023","area_name":"\u5317\u8521","subdistrict_name":"\u5fb7\u9526\u82d1","bedroom":1,"bathroom":1,"fname":"\u6d66\u4e1c","hire_way":2,"month_rent":1900},{"id":"640714","area_name":"\u534e\u6f15","subdistrict_name":"\u7231\u535a\u4e09\u6751","bedroom":1,"bathroom":1,"fname":"\u95f5\u884c","hire_way":2,"month_rent":1900},{"id":"2460136","area_name":"\u677e\u6c5f\u5927\u5b66\u57ce","subdistrict_name":"\u4e5d\u9f99\u4ed3\u5170\u5bab","bedroom":1,"bathroom":0,"fname":"\u677e\u6c5f","hire_way":2,"month_rent":1700},{"id":"631314","area_name":"\u7530\u6797","subdistrict_name":"\u534e\u60a6\u5bb6\u56ed\u5357\u533a","bedroom":1,"bathroom":0,"fname":"\u5f90\u6c47","hire_way":2,"month_rent":2900},{"id":"812922","area_name":"\u6d66\u6c5f","subdistrict_name":"\u57ce\u6797\u96c5\u82d1","bedroom":1,"bathroom":0,"fname":"\u95f5\u884c","hire_way":2,"month_rent":1700},{"id":"1607554","area_name":"\u987e\u6751","subdistrict_name":"\u83ca\u6cc9\u65b0\u57ce\u7231\u5efa\u987e\u56ed\u897f\u533a","bedroom":1,"bathroom":0,"fname":"\u5b9d\u5c71","hire_way":2,"month_rent":1700},{"id":"2523546","area_name":"\u4e09\u6797","subdistrict_name":"\u4e1c\u65b9\u5eb7\u8fbe\u5bb6\u82d12\u671f","bedroom":1,"bathroom":1,"fname":"\u6d66\u4e1c","hire_way":2,"month_rent":2380},{"id":"2037785","area_name":"\u5ddd\u6c99","subdistrict_name":"\u534e\u5ddd\u5bb6\u56ed","bedroom":1,"bathroom":0,"fname":"\u6d66\u4e1c","hire_way":2,"month_rent":1600},{"id":"771201","area_name":"\u8398\u5e84","subdistrict_name":"\u51ef\u5229\u5927\u697c","bedroom":1,"bathroom":0,"fname":"\u95f5\u884c","hire_way":2,"month_rent":2000},{"id":"496544","area_name":"\u5317\u8521","subdistrict_name":"\u9e4f\u5065\u82d1","bedroom":1,"bathroom":1,"fname":"\u6d66\u4e1c","hire_way":2,"month_rent":1600},{"id":"2403791","area_name":"\u5317\u8521","subdistrict_name":"\u5fb7\u9526\u82d1","bedroom":1,"bathroom":1,"fname":"\u6d66\u4e1c","hire_way":2,"month_rent":2200},{"id":"2460142","area_name":"\u677e\u6c5f\u5927\u5b66\u57ce","subdistrict_name":"\u4e5d\u9f99\u4ed3\u5170\u5bab","bedroom":1,"bathroom":0,"fname":"\u677e\u6c5f","hire_way":2,"month_rent":1800},{"id":"952251","area_name":"\u7530\u6797","subdistrict_name":"\u534e\u60a6\u5bb6\u56ed\u5357\u533a","bedroom":1,"bathroom":1,"fname":"\u5f90\u6c47","hire_way":2,"month_rent":3400},{"id":"812923","area_name":"\u6d66\u6c5f","subdistrict_name":"\u57ce\u6797\u96c5\u82d1","bedroom":1,"bathroom":0,"fname":"\u95f5\u884c","hire_way":2,"month_rent":1800},{"id":"496547","area_name":"\u5317\u8521","subdistrict_name":"\u9e4f\u5065\u82d1","bedroom":1,"bathroom":0,"fname":"\u6d66\u4e1c","hire_way":2,"month_rent":2100},{"id":"496548","area_name":"\u5317\u8521","subdistrict_name":"\u9e4f\u5065\u82d1","bedroom":1,"bathroom":0,"fname":"\u6d66\u4e1c","hire_way":2,"month_rent":1550},{"id":"496549","area_name":"\u5317\u8521","subdistrict_name":"\u9e4f\u5065\u82d1","bedroom":1,"bathroom":1,"fname":"\u6d66\u4e1c","hire_way":2,"month_rent":1500}]';
    </script>
    <script src="<%=basePath%>statics/js/zhaofang.js"
            type="text/javascript"></script>

    <style>
        .mf_adv {
            cursor: pointer;
        }
    </style>
    <link rel="stylesheet" href="<%=basePath%>statics/css/aliim.css">
    <script src="/statics/js/queryCondition.js"></script>
    <script type="text/javascript" src="<%=basePath%>statics/js/common.js"></script>
    <script type="text/javascript" src="<%=basePath%>statics/js/popup.js"></script>
    <script type="text/javascript" src="<%=basePath%>statics/js/search.js"></script>
    <script src="<%=basePath%>statics/js/jquery.lazyload.js"></script>
    <script src="<%=basePath%>statics/js/aliim.js" type="text/javascript"></script>
    <script src="<%=basePath%>statics/js/wlog.js" charset="utf-8"></script>
    <jsp:include page="common/foot.jsp"/>
    <script>
        var user_mobile_for_fankui = '';
        if (user_mobile_for_fankui == '') {
            user_mobile_for_fankui = '';
        }
        $(function () {
            $("img.lazy").lazyload({
                effect: "fadeIn"
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
        seajs.use("monitor", function (mc) {
            mc.bindMonitor();
        });
    </script>

    <noscript>
        <div style="display:none;">
            <img height="1" width="1" style="border-style:none;" alt=""
                 src="<%=basePath%>statics/picture/c998c5e8798f4042932569e53bfd9e4c.gif"/>
        </div>
    </noscript>
</body>
</html>
<!--comment-->