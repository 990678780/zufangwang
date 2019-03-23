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
    <meta name='keywords' content='上海松江租房,松江租房价格,绿庭尚城租房,上海租房'>
    <meta name='description' content='上海巴乐兔租房信息网：上海松江租房,松江租房价格,绿庭尚城租房,上海租房，【零佣金,月付租,房东直租】,租房,找房,看房,就上巴乐兔租房。'>
    <!--谷歌站长权限代码-->
    <meta name="google-site-verification" content="3i4BqZDb2N4OWLUm4BljGQvkUKl1IaHKju_9w0N0XV8"/>
    <!--360站长权限代码-->
    <meta name="360-site-verification" content="bd1ad966359cceaa07a214b916d8e722"/>
    <title>上海松江_绿庭尚城_1室0厅0卫_合租_涞寅路658弄-上海巴乐兔租房</title>
    <!--百度站长权限代码-->
    <meta name="baidu-site-verification" content="7tK95plO2U"/>
    <link rel="shortcut icon" href="//js.baletoo.cn/static/pc/images/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>statics/css/common.css"/>

    <script src="<%=basePath%>statics/js/jquery.js"></script>
    <script src="<%=basePath%>statics/js/layui.js"></script>
    <!--[if lt IE 9]>
    <script src="<%=basePath%>statics/js/json.js" charset="utf-8"></script>
    <![endif]-->
    <script src="<%=basePath%>statics/js/af07b3bb71574f76995ae4ea46a441ff.js" charset="utf-8"></script>
    <script src="<%=basePath%>statics/js/sea.js"></script>
    <script src="<%=basePath%>statics/js/retina.min.js"></script>
    <script type="text/javascript">
        seajs.config({
            alias: {
                'monitor': '//js.baletoo.cn/static/pc/js/monitor_call.js?2018'
            }
        });
        var _hmt = _hmt || [];
        var g_config = [];
        g_config['city'] = 'sh';
        g_config['from'] = 'PC';
        g_config['dir'] = '//js.baletoo.cn';
        g_config['model_name'] = '';
        //百度自动推送代码
        (function () {
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
        (function () {
            var hm = document.createElement("script");
            hm.src = "https://hm.baidu.com/hm.js?8f953116d16f07247628a1edb29e8e9e";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
        //北京二级域
        var _hmt = _hmt || [];
        (function () {
            var hm = document.createElement("script");
            hm.src = "https://hm.baidu.com/hm.js?f84ef5f0d18d9cd88cb0e45d865b37aa";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
        //深圳二级域
        var _hmt = _hmt || [];
        (function () {
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
            <span><img src="<%=basePath%>statics/picture/close.png"/></span>
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
    <div class="header header-r ">
        <div class="out">
            <div class="region" style="">
                <a href="javascript:void(0)">
                    <!-- <span class="icon icon-pos-grey"></span> -->
                    <span class="icon icon-down-white"></span>
                    上海 </a>
            </div>
            <div class="nav">
                <ul>
                    <li><a id="navM3" mark="I3" href="<%=basePath%>index">首页</a>
                        <div class="nav-line"></div>
                    </li>
                    <li><a id="navM4" mark="I4" href="<%=basePath%>zhaofang">立即找房</a>
                        <div class="nav-line"></div>
                    </li>
                    <li>
                        <a href="<%=basePath%>createhouse">发布房源</a>
                        <div class="nav-line"></div>
                    </li>
                    <%--<li><a id="navM6" mark="I6" href="<%=basePath%>createhouse >发布房源</a></li><div class=" nav-line">--%>
        <%--</div>--%>
            <li>
                <a href="<%=basePath%>findsuble/index">找室友</a>
                <div class="nav-line"></div>
            </li>

            </ul>
        </div>
        <div class="login-link login-link-new">
            <ul class="clearfix">
                <li><span class="icon_people_black"></span></li>
                <li><a id="navM8" mark="I8" href="<%=basePath%>register">注册</a>
                </li>
                <li><a id="navM7" mark="I7" href="<%=basePath%>login">登录</a></li>
            </ul>
        </div>
    </div>
    </div>

    <script src="<%=basePath%>statics/js/header.js"></script>
    <script type="text/javascript">
        //console.log(cityname_py);
        function toroommate() {
            if (cityname_py == '') {
                cityname_py = 'shanghai';
            }
            window.location.href = "http://www.baletu.com/roommate/findsublet_" + cityname_py;
        }

    </script>

    <script src="<%=basePath%>statics/js/jquery.fancybox.min.js"></script>
    <link href="<%=basePath%>statics/css/jquery.fancybox.min.css" rel="stylesheet">
    <script src="<%=basePath%>statics/js/jquery-ui.min.js"></script>
    <link rel="stylesheet" href="<%=basePath%>statics/css/jquery-ui.min.css">
    <!--<link rel="stylesheet" href="<%=basePath%>statics/css/jquery-ui.min_1.css">-->
    <!--<link href="<%=basePath%>statics/css/jquery-ui-1.9.2.custom.css" rel="stylesheet">-->
    <link rel="stylesheet" href="<%=basePath%>statics/css/house_index.css"/>
    <script src="<%=basePath%>statics/js/wlog.js" charset="utf-8"></script>


    <style type="text/css">
        #loading_notice_div {
            position: fixed;
            top: 30%;

            text-align: center;
            width: 22%;
            padding: 1.5%;
            margin-left: 37.5%;
            background: #000000;
            color: white;
            opacity: 0.6;
            display: none;
            border-radius: 5px;
            z-index: 10000;
        }

        #datetime-picker-container {
            position: fixed;
            z-index: 20000;
            display: none;
            border: 1px solid #aaaaaa;
            border-radius: 4px;
            width: 17em;
            padding: .2em .2em 0;
            background: white;
            padding-top: 20px;
        }

        #datetime-picker-container div {
            float: left;
            margin-bottom: 14px;
            width: 25%;
            text-align: center;
        }

        #datetime-picker-container div span {
            padding: 5px;
            border-radius: 3px;
            cursor: pointer;
        }

        #datetime-picker-container div span:hover {
            background: #9E9E9E;
            color: white;
        }

        .getCodee {
            margin-top: -35px;
            cursor: pointer;
            width: 36%;
            float: right;
            color: #ea3843;
            border: #ea3843 solid 1px;
            height: 44px;
            line-height: 44px;
            border-radius: 5px;
            text-align: center;
        }

        /* 图片预览 */
        .imagesPreviewer {
            width: 770px;
            height: 450px;
            background-color: #fff;
        }

        /* 左边大图 */
        .imagesPreviewer .i-images {
            width: 600px;
            height: 100%;
            float: left;
            overflow-y: hidden;
        }

        .imagesPreviewer .i-images ul {
            width: 100%;
        }

        .imagesPreviewer .i-images ul li {
            width: 100%;
            height: 450px;
            text-align: center;
            line-height: 450px;
            font-size: 0;
        }

        .imagesPreviewer .i-images ul li img {
            max-width: 100%;
            max-height: 100%;
            vertical-align: middle;
        }

        /* 右边缩略图 */
        .imagesPreviewer .i-nav {
            width: 170px;
            height: 100%;
            padding-left: 10px;
            box-sizing: border-box;
            float: right;
        }

        .imagesPreviewer .i-nav .i-nav-btn {
            width: 100%;
            height: 25px;
            background-color: #c3c3c3;
            text-align: center;
        }

        .imagesPreviewer .i-nav .i-nav-btn:hover {
            background-color: #9f9f9f;
        }

        .imagesPreviewer .i-nav .i-nav-btn .i-nav-btn-icon {
            display: inline-block;
            width: 24px;
            height: 14px;
            background-size: 100% 100%;
            margin-top: 5.5px;
        }

        .imagesPreviewer .i-nav .i-nav-pre .i-nav-btn-icon {
            background-image: url("images/listpic-jt-t2x.png");
        }

        .imagesPreviewer .i-nav .i-nav-next .i-nav-btn-icon {
            background-image: url("images/listpic-jt-d2x.png");
        }

        .imagesPreviewer .i-nav .i-nav-thumb {
            width: 100%;
            height: 400px;
            overflow-y: hidden;
        }

        .imagesPreviewer .i-nav .i-nav-thumb ul {
            width: 100%;
        }

        .imagesPreviewer .i-nav .i-nav-thumb ul li {
            width: 100%;
            height: 120px;
            margin: 10px 0;
        }

        .imagesPreviewer .i-nav .i-nav-thumb ul li img {
            width: 100%;
            height: 100%;
            box-sizing: border-box;
        }

        /* 查看大图蒙层 */
        .imagesPreviewer .i-mask {
            position: fixed;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            margin: auto;
            background-color: rgba(0, 0, 0, 0.5);
            z-index: 1000;
            display: none;
        }

        .imagesPreviewer .i-mask .content {
            width: 100%;
            height: 70%;
            position: fixed;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            margin: auto;
            z-index: 1001;
        }

        .imagesPreviewer .i-mask .content .nav {
            width: 15%;
            height: 100%;
            position: relative;
        }

        .imagesPreviewer .i-mask .content .nav .icon {
            width: 25px;
            height: 45px;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translateX(-50%) translateY(-50%);
            -ms-transform: translateX(-50%) translateY(-50%); /* IE 9 */
            -moz-transform: translateX(-50%) translateY(-50%); /* Firefox */
            -webkit-transform: translateX(-50%) translateY(-50%); /* Safari 和 Chrome */
            -o-transform: translateX(-50%) translateY(-50%); /* Opera */

            background-size: 100% 100%;
        }

        .imagesPreviewer .i-mask .content .nav-left {
            float: left;
        }

        .imagesPreviewer .i-mask .content .nav-left .icon {
            background-image: url("images/nav_prev.png");
        }

        .imagesPreviewer .i-mask .content .nav-right {
            float: right;
        }

        .imagesPreviewer .i-mask .content .nav-right .icon {
            background-image: url("images/nav_next.png");
        }

        .imagesPreviewer .i-mask .content .imagebox {
            width: 70%;
            height: 100%;
            float: left;
            position: relative;
        }

        .imagesPreviewer .i-mask .content .imagebox .image {
            width: 100%;
            height: 100%;
            position: relative;
        }

        .imagesPreviewer .i-mask .content .imagebox .image img {
            max-width: 100%;
            max-height: 100%;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translateX(-50%) translateY(-50%);
            -ms-transform: translateX(-50%) translateY(-50%); /* IE 9 */
            -moz-transform: translateX(-50%) translateY(-50%); /* Firefox */
            -webkit-transform: translateX(-50%) translateY(-50%); /* Safari 和 Chrome */
            -o-transform: translateX(-50%) translateY(-50%); /* Opera */
        }

        .imagesPreviewer .i-mask .content .imagebox .count {
            width: 100%;
            height: 40px;
            position: absolute;
            bottom: -60px;
        }

        .imagesPreviewer .i-mask .content .imagebox .count .count-inner {
            width: 100px;
            height: 100%;
            margin: 0 auto;
            border-radius: 5px;
            text-align: center;
            background-color: rgba(0, 0, 0, 0.9);
        }

        .imagesPreviewer .i-mask .content .imagebox .count .count-inner text {
            color: #fff;
            line-height: 40px;
            font-size: 16px;
        }

        .imagesPreviewer .i-mask .exitBtn {
            width: 40px;
            height: 40px;
            background-image: url("images/full_close.png");
            background-size: 100% 100%;
            position: absolute;
            top: 30px;
            right: 20px;
        }

        /*地图搜索样式*/
        .amap-lib-transfer {
            border: none 0;
        }

        /* 首次进入详情显示微信拨号引导遮罩 */
        .QR-phoneCall .cover-QR {
            display: none;
            background-color: rgba(0, 0, 0, 0.7);
            position: fixed;
            top: 0;
            bottom: 0;
            right: 0;
            left: 0;
            z-index: 10001;
        }

        .QR-phoneCall .cover-QR-text {
            display: none;
            position: absolute;
            right: 130px;
            top: -185px;
            z-index: 10002;
            width: 800px;
        }

        .QR-phoneCall .cover-QR-text img {
            width: 100%;
        }

        .QR-phoneCall .cover-QR-ma {
            display: none;
            width: 130px;
            height: 130px;
            position: absolute;
            left: 0;
            top: 0;
            z-index: 10002;
        }

        .QR-phoneCall .cover-QR-ma img {
            width: 100%;
            height: 100%;
        }
    </style>
    <form name="info_form">
        <input name="user_name" value="" type="hidden"/>
        <input name="renter_mobile" value="" type="hidden"/>
        <input name="house_photos[]"
               value="http://cdn.baletoo.cn/Uploads/housephoto/2571/2570091/oss_5ad0160718dfe.jpg@!blth" type="hidden"/><input
            name="house_photos[]"
            value="http://cdn.baletoo.cn/Uploads/housephoto/2571/2570091/oss_5acee0c94b560.jpg@!blth"
            type="hidden"/><input name="house_photos[]"
                                  value="http://cdn.baletoo.cn/Uploads/housephoto/2571/2570091/oss_5acee0c995074.jpg@!blth"
                                  type="hidden"/><input name="house_photos[]"
                                                        value="http://cdn.baletoo.cn/Uploads/housephoto/2571/2570091/oss_5acee0c9e8817.jpg@!blth"
                                                        type="hidden"/><input name="house_photos[]"
                                                                              value="http://cdn.baletoo.cn/Uploads/housephoto/2571/2570091/oss_5acee0cb7585c.jpg@!blth"
                                                                              type="hidden"/><input
            name="house_photos[]"
            value="http://cdn.baletoo.cn/Uploads/housephoto/2571/2570091/oss_5acee0cbb6b6f.jpg@!blth"
            type="hidden"/><input name="house_photos[]"
                                  value="http://cdn.baletoo.cn/Uploads/housephoto/2571/2570091/oss_5acee0cc0f174.jpg@!blth"
                                  type="hidden"/><input name="house_photos[]"
                                                        value="http://cdn.baletoo.cn/Uploads/housephoto/2571/2570091/oss_5acee0cc54816.jpg@!blth"
                                                        type="hidden"/><input name="house_photos[]"
                                                                              value="http://cdn.baletoo.cn/Uploads/housephoto/0/0/oss_5a51e9c5cd21a.png@!blth"
                                                                              type="hidden"/><input
            name="house_photos[]" value="http://cdn.baletoo.cn/Uploads/housephoto/0/0/oss_5a51e9c5e0d8b.png@!blth"
            type="hidden"/><input name="house_photos[]"
                                  value="http://cdn.baletoo.cn/Uploads/housephoto/0/0/oss_5a51e9c5ee6b6.png@!blth"
                                  type="hidden"/></form>
    <!--导航-->
    <div class="mapOut">
        <div class="out">
            <div class="map">巴乐兔上海站 &gt; <a href="<%=basePath%>zhaofang/">立即找房</a> &gt; <a href=""
                                                                                           class="active">绿庭尚城</a></div>
        </div>
    </div>
    <!--导航 end-->
    <!--sidebar-->
    <div class="basic-line">
        <div class="out">
            <div class="basic">
                <div class="pop-invalid">
                    <div class="invalid-pic"><img src="<%=basePath%>statics/picture/tuzhang.png"/></div>
                </div>
                <div class="basic-title basic-title-margin">
                    <h1>
                        <a href="http://sh.baletu.com/house/2570091.html" title="绿庭尚城">${house.title}</a>
                    </h1>
                    <p></p>
                    <span class="basic-title-ps"></span>
                </div>
                <!--房源介绍信息-->
                <div class="house-text-Akey">
                    <ul class="clearfix">
                        <li class="price">${house.price}<span>元/月</span></li>
                        <li class="cent">${house.square} <span>M²</span></li>
                        <li>${house.roomWay.substring(3,5)}</li>
                    </ul>
                </div>
                <!--房源介绍信息-->
                <div class="house-text-list clearfix">
                    <dl class="dl-haf">
                        <dt>交通：</dt>
                        <dd>${house.station}</dd>
                    </dl>
                    <dl class="dl-haf">
                        <dt>户型：</dt>
                        <dd>${house.hType}</dd>
                    </dl>
                    <dl class="dl-haf">
                        <dt>楼层：</dt>
                        <dd>${house.floor}</dd>
                    </dl>
                    <dl class="dl-haf">
                        <dt>类型：</dt>
                        <dd> ${house.zTypeContext}</dd>
                    </dl>
                    <dl class="dl-haf">
                        <dt>付款：</dt>
                        <dd>面议</dd>
                    </dl>
                    <dl class="dl-haf">
                        <dt>区域：</dt>
                        <dd>
                            <p>${house.area.areaName}</p>
                        </dd>
                        </dd>
                    </dl>
                    <dl class="dl-whole">
                        <dt>地址：</dt>
                        <dd>${house.address}</dd>
                    </dl>
                </div>
                <div class="basic-btn"
                     num="2570091"
                     name="绿庭尚城 1室0厅0卫"
                     category="松江-九亭"
                     variant="合租"
                     price="2300.00"
                >
                <%--<div class="basic-btn-box clearfix">--%>
                    <%--<div class="basic-btn-left">--%>
                        <%--<!-- <a id="tel_server_btn" href="javascript:void(0);" onmouseenter="showConnectMobile(2570091);" class="btn-red">--%>

                        <%--<span class="tel_server_span"><i class="bg-dianhua_w"></i></span>--%>
                        <%--</a> -->--%>
                        <%--<img src="<%=basePath%>statics/picture/rabbit_housedetial.png"--%>
                             <%--data-rjs="//js.baletoo.cn/static/pc/images/mac/detail/rabbit_mac.png" id=""/>--%>
                    <%--</div>--%>
                    <%--<div class="basic-btn-center">--%>
                        <%--<h3>巴乐兔管家</h3>--%>
                        <%--<h4><span id="dianhuakefu" style="color:#ee3843;">电话客服</span></h4>--%>
                        <%--<h3 style="color:#959595;">微信扫码拨打<img src="<%=basePath%>statics/picture/lookhouse_phone.png"--%>
                                                              <%--id=""/></h3>--%>
                    <%--</div>--%>
                    <%--<div class="basic-btn-right QR-phoneCall" style="position: relative;">--%>
                        <%--<img src="<%=basePath%>statics/picture/bg130.png" id="mobile_erweima1"/>--%>
                        <%--<div class="cover-QR-text">--%>
                            <%--<img src="<%=basePath%>statics/picture/housemakephonecallbyqr.png"/>--%>
                        <%--</div>--%>
                        <%--<div class="cover-QR-ma">--%>
                            <%--<img src="<%=basePath%>statics/picture/bg130.png" id="mobile_erweima2"/>--%>
                        <%--</div>--%>
                        <%--<div class="cover-QR"></div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="clear"></div>--%>
                <%--<div class="tel-bot-line clearfix">--%>
                    <%--<a id="house_index_yuyue" mark="预约看房" href="javascript:void(0)" onClick="yuyueConfirm(this);"--%>
                       <%--class="tel-bot-l">预约看房</a>--%>
                    <%--<a id="house_index_addMenu" mark="加入清单" href="javascript:void(0)"--%>
                       <%--onClick="addMenuConfirm(this);" class="link-dt">加入清单</a>--%>
                <%--</div>--%>
            </div>
        </div>
    </div>
    </div>
    <!--sidebar end-->


    <div class="out clearfix">
        <!--list -->
        <div class="details">
            <div class="imagesPreviewer clearfix">
                <div class="i-images">
                    <ul>
                        <li>
                            <img class="img" onclick="showBigImgPreviewer(event)" data-index="0"
                                 data-src="<%=basePath%>statics/picture/oss_5ad0160718dfe.jpg@!blth"
                                 src="//js.baletoo.cn/static/pc/images/img_loading_600_450.png" alt="">
                        </li>
                        <li>
                            <img class="img" onclick="showBigImgPreviewer(event)" data-index="1"
                                 data-src="<%=basePath%>statics/picture/oss_5acee0c94b560.jpg@!blth"
                                 src="//js.baletoo.cn/static/pc/images/img_loading_600_450.png" alt="">
                        </li>
                        <li>
                            <img class="img" onclick="showBigImgPreviewer(event)" data-index="2"
                                 data-src="<%=basePath%>statics/picture/oss_5acee0c995074.jpg@!blth"
                                 src="//js.baletoo.cn/static/pc/images/img_loading_600_450.png" alt="">
                        </li>
                        <li>
                            <img class="img" onclick="showBigImgPreviewer(event)" data-index="3"
                                 data-src="<%=basePath%>statics/picture/oss_5acee0c9e8817.jpg@!blth"
                                 src="//js.baletoo.cn/static/pc/images/img_loading_600_450.png" alt="">
                        </li>
                        <li>
                            <img class="img" onclick="showBigImgPreviewer(event)" data-index="4"
                                 data-src="<%=basePath%>statics/picture/oss_5acee0cb7585c.jpg@!blth"
                                 src="//js.baletoo.cn/static/pc/images/img_loading_600_450.png" alt="">
                        </li>
                        <li>
                            <img class="img" onclick="showBigImgPreviewer(event)" data-index="5"
                                 data-src="<%=basePath%>statics/picture/oss_5acee0cbb6b6f.jpg@!blth"
                                 src="//js.baletoo.cn/static/pc/images/img_loading_600_450.png" alt="">
                        </li>
                        <li>
                            <img class="img" onclick="showBigImgPreviewer(event)" data-index="6"
                                 data-src="<%=basePath%>statics/picture/oss_5acee0cc0f174.jpg@!blth"
                                 src="//js.baletoo.cn/static/pc/images/img_loading_600_450.png" alt="">
                        </li>
                        <li>
                            <img class="img" onclick="showBigImgPreviewer(event)" data-index="7"
                                 data-src="<%=basePath%>statics/picture/oss_5acee0cc54816.jpg@!blth"
                                 src="//js.baletoo.cn/static/pc/images/img_loading_600_450.png" alt="">
                        </li>
                        <li>
                            <img class="img" onclick="showBigImgPreviewer(event)" data-index="8"
                                 data-src="<%=basePath%>statics/picture/oss_5a51e9c5cd21a.png@!blth"
                                 src="//js.baletoo.cn/static/pc/images/img_loading_600_450.png" alt="">
                        </li>
                        <li>
                            <img class="img" onclick="showBigImgPreviewer(event)" data-index="9"
                                 data-src="<%=basePath%>statics/picture/oss_5a51e9c5e0d8b.png@!blth"
                                 src="//js.baletoo.cn/static/pc/images/img_loading_600_450.png" alt="">
                        </li>
                        <li>
                            <img class="img" onclick="showBigImgPreviewer(event)" data-index="10"
                                 data-src="<%=basePath%>statics/picture/oss_5a51e9c5ee6b6.png@!blth"
                                 src="//js.baletoo.cn/static/pc/images/img_loading_600_450.png" alt="">
                        </li>
                    </ul>
                </div>
                <div class="i-nav">
                    <div class="i-nav-btn i-nav-pre" onclick="changeImageBtn(1)">
                        <span class="i-nav-btn-icon"></span>
                    </div>
                    <div class="i-nav-thumb">
                        <ul>
                            <li>
                                <img class="img" onclick="changeImage(event)" data-index="0"
                                     data-src="<%=basePath%>statics/picture/oss_5ad0160718dfe.jpg@!blth"
                                     src="//js.baletoo.cn/static/pc/images/img_loading_160_120.png" alt="">
                            </li>
                            <li>
                                <img class="img" onclick="changeImage(event)" data-index="1"
                                     data-src="<%=basePath%>statics/picture/oss_5acee0c94b560.jpg@!blth"
                                     src="//js.baletoo.cn/static/pc/images/img_loading_160_120.png" alt="">
                            </li>
                            <li>
                                <img class="img" onclick="changeImage(event)" data-index="2"
                                     data-src="<%=basePath%>statics/picture/oss_5acee0c995074.jpg@!blth"
                                     src="//js.baletoo.cn/static/pc/images/img_loading_160_120.png" alt="">
                            </li>
                            <li>
                                <img class="img" onclick="changeImage(event)" data-index="3"
                                     data-src="<%=basePath%>statics/picture/oss_5acee0c9e8817.jpg@!blth"
                                     src="//js.baletoo.cn/static/pc/images/img_loading_160_120.png" alt="">
                            </li>
                            <li>
                                <img class="img" onclick="changeImage(event)" data-index="4"
                                     data-src="<%=basePath%>statics/picture/oss_5acee0cb7585c.jpg@!blth"
                                     src="//js.baletoo.cn/static/pc/images/img_loading_160_120.png" alt="">
                            </li>
                            <li>
                                <img class="img" onclick="changeImage(event)" data-index="5"
                                     data-src="<%=basePath%>statics/picture/oss_5acee0cbb6b6f.jpg@!blth"
                                     src="//js.baletoo.cn/static/pc/images/img_loading_160_120.png" alt="">
                            </li>
                            <li>
                                <img class="img" onclick="changeImage(event)" data-index="6"
                                     data-src="<%=basePath%>statics/picture/oss_5acee0cc0f174.jpg@!blth"
                                     src="//js.baletoo.cn/static/pc/images/img_loading_160_120.png" alt="">
                            </li>
                            <li>
                                <img class="img" onclick="changeImage(event)" data-index="7"
                                     data-src="<%=basePath%>statics/picture/oss_5acee0cc54816.jpg@!blth"
                                     src="//js.baletoo.cn/static/pc/images/img_loading_160_120.png" alt="">
                            </li>
                            <li>
                                <img class="img" onclick="changeImage(event)" data-index="8"
                                     data-src="<%=basePath%>statics/picture/oss_5a51e9c5cd21a.png@!blth"
                                     src="//js.baletoo.cn/static/pc/images/img_loading_160_120.png" alt="">
                            </li>
                            <li>
                                <img class="img" onclick="changeImage(event)" data-index="9"
                                     data-src="<%=basePath%>statics/picture/oss_5a51e9c5e0d8b.png@!blth"
                                     src="//js.baletoo.cn/static/pc/images/img_loading_160_120.png" alt="">
                            </li>
                            <li>
                                <img class="img" onclick="changeImage(event)" data-index="10"
                                     data-src="<%=basePath%>statics/picture/oss_5a51e9c5ee6b6.png@!blth"
                                     src="//js.baletoo.cn/static/pc/images/img_loading_160_120.png" alt="">
                            </li>
                        </ul>
                    </div>
                    <div class="i-nav-btn i-nav-next" onclick="changeImageBtn(2)">
                        <span class="i-nav-btn-icon"></span>
                    </div>
                </div>
                <div class="i-mask">
                    <div class="content clearfix">
                        <div class="nav nav-left">
                            <div class="icon" onclick="changeBigImgPreviewer(1)"></div>
                        </div>
                        <div class="imagebox">
                            <div class="image">
                                <img src="<%=basePath%>statics/picture/img_loading_600_450.png" alt="">
                            </div>
                            <div class="count">
                                <div class="count-inner">
                                    <text></text>
                                </div>
                            </div>
                        </div>
                        <div class="nav nav-right">
                            <div class="icon" onclick="changeBigImgPreviewer(2)"></div>
                        </div>
                    </div>
                    <div class="exitBtn" onclick="hideBigImgPreviewer()"></div>
                </div>
            </div>
            <!---->
            <!-- <div class="details-top clearfix">
    <div class="img-show">
        <div class="page">

            <div class="lun_bo_tu">
                <div class="lun_bo_tu_big" style="height: 300px;text-align: center;;overflow: hidden;cursor: pointer">
                    <div class="bigImg-tab">
                        <a id="Img-pre"><img  style="float: left; margin-top: 135px;
      "src="<%=basePath%>statics/picture/left-small1.png" /></a>
                        <a id="Img-next"><img style="float: right; margin-top: 135px;
       " src="<%=basePath%>statics/picture/right-small1.png" /></a>
                    </div>
                    <img     onclick="turnImgToFullScreen(this)" style="height: 100%;max-width: 520px;" src="<%=basePath%>statics/picture/oss_5ad0160718dfe.jpg@!blth" />
                </div>
                <div class="lun_bo_tu_small">
                    <div id="carousel_a" class="carousel_all">
                        <ul id="carousel_a_ul">
                        </ul>
                        <div class="clearfix"></div>
                        <div class="sPic-btn">
                            <a id="prev_a" class="sPic-btn-l" href="javascript:void(0);">
                                <i class="icon icon-jt-red-l"></i>
                            </a>
                            <a id="next_a" class="sPic-btn-r" href="javascript:void(0);">
                                <i class="icon icon-jt-red-r"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

</div> -->
            <!---->


            <!--周边信息-->

            <div class="details-unit" id="find-place">
                <div class="details-unit-title">交通周边</div>
                <div class="details-inner">
                    <ul>
                        <li><span class="icon-jt bg-bus"></span><span>交通：</span>9号线(九亭站)<br/>797路；186路；198路；706路；1840路；松江42路；松江41路；松江84路；沪陈线
                        </li>

                        <li><span class="icon-jt bg-daocha"></span><span>饮食：</span>沙县小吃、白头山串烧、爱鱼爱虾、邑香居、切意烤羊腿</li>
                        <li><span class="icon-jt bg-gouwu"></span><span>购物：</span>摩立盛汇生活广场、贝尚坊、晶久·九亭休闲购物广场、八号桥购物广场</li>
                        <li><span class="icon-jt bg-shenghuo"></span><span>生活：</span>松江区九亭第四幼儿园、中国建设银行、复美大药房</li>
                    </ul>
                </div>
                <%--<div class="details-unit-map">--%>
                <%--<div class="map-tab">--%>
                <%--<ul class="clearfix">--%>
                <%--<li id="ditie" mark="地铁" onclick="AMap_searchNearBy('地铁',this);" class="active">地铁</li>--%>
                <%--<li id="gongjiao" mark="公交" onclick="AMap_searchNearBy('公交',this);">公交</li>--%>
                <%--<li id="canyin" mark="餐饮" onclick="AMap_searchNearBy('餐饮',this);">餐饮</li>--%>
                <%--<li id="gouwu" mark="购物" onclick="AMap_searchNearBy('购物',this);">购物</li>--%>
                <%--<li id="yinhang" mark="银行" onclick="AMap_searchNearBy('银行',this);">银行</li>--%>
                <%--<li id="yiyuan" mark="医院" onclick="AMap_searchNearBy('医院',this);">医院</li>--%>
                <%--<li id="xuexiao" mark="学校" onclick="AMap_searchNearBy('学校',this);">学校</li>--%>
                <%--<a href="javascript:void(0)" onclick="markerCenter()" class="locationThis">&nbsp&nbsp<img--%>
                <%--src="<%=basePath%>statics/picture/dingwei-11.png"--%>
                <%--data-rjs="//js.baletoo.cn/static/pc/images/mac/detail/dingwei-11@3x.png">&nbsp定位到当前房源&nbsp&nbsp</a>--%>
                <%--</ul>--%>
                <%--</div>--%>

                <%--<div class="map-text">--%>
                <%--<div id="map-show" class="map-show"></div>--%>
                <%--<div class="search-line">--%>
                <%--<div class="search-main search-page">--%>
                <%--<ul class="clearfix">--%>
                <%--<li><input id="map-search-input" type="text" placeholder="请输入区域"--%>
                <%--class="search-input"></li>--%>
                <%--<li>--%>
                <%--<a onClick="AMap_drawRoutePath('公交');_hmt.push(['_trackEvent', 'wap','sh', '公交']);"--%>
                <%--class="btn-red btn-search" href="javascript:void(0)">公交</a></li>--%>
                <%--<li>--%>
                <%--<a onClick="AMap_drawRoutePath('自驾');_hmt.push(['_trackEvent', 'wap','sh', '自驾']);"--%>
                <%--class="btn-red btn-search" href="javascript:void(0)">自驾</a></li>--%>
                <%--<li>--%>
                <%--<a onClick="AMap_drawRoutePath('步行');_hmt.push(['_trackEvent', 'wap','sh', '步行']);"--%>
                <%--class="btn-red btn-search" href="javascript:void(0)">步行</a></li>--%>
                <%--</ul>--%>
                <%--</div>--%>
                <%--</div>--%>
                <%--<div id="map-path-list" class="map-text-list"></div>--%>
                <%--<!-- <div class="puckUp"><a href="javascript:void(0)" onclick="$('.planTitle').click();" class="red-text">收起</a></div> -->--%>
                <%--</div>--%>
                <%--</div>--%>
            </div>
            <!--<div class="details-unit">-->
            <!--    <div class="details-unit-title">-->
            <!--        <ul class="details-unit-title-tab clearfix">-->
            <!--            <li>独用设施</li>-->
            <!--            <li>|22222</li>-->
            <!--            <li>共用设施</li>-->
            <!--        </ul>-->
            <!--    </div>-->
            <!--    <div class="details-unit-warp">-->
            <!--        111-->
            <!--    </div>-->
            <!--</div>-->

            <!---->
            <!--图片信息介绍-->
            <%--<div class="wrap">--%>

            <%--<div class="details-unit">--%>
            <%--<div class="details-unit-title iconsh-tab">--%>
            <%--<span class="ra active"></span>--%>
            <%--<span>|</span>--%>
            <%--<span class="rap"></span>--%>
            <%--</div>--%>
            <%--<div id='privateFalicities' class="details-unit-warp">--%>
            <%--<div class="list-icon">--%>
            <%--<ul class="clearfix">--%>
            <%--<li>--%>
            <%--<!-- <p><i class="iconSS /Public/new_equipment/house/2.png"></i></p>--%>
            <%--<h4>双人床</h4> -->--%>
            <%--<img alt="双人床" src=<%=basePath%>statics/picture/2.png>--%>
            <%--</li>--%>
            <%--<li>--%>
            <%--<!-- <p><i class="iconSS /Public/new_equipment/house/3.png"></i></p>--%>
            <%--<h4>衣橱</h4> -->--%>
            <%--<img alt="衣橱" src=<%=basePath%>statics/picture/3.png>--%>
            <%--</li>--%>
            <%--<li>--%>
            <%--<!-- <p><i class="iconSS /Public/new_equipment/house/4.png"></i></p>--%>
            <%--<h4>写字台</h4> -->--%>
            <%--<img alt="写字台" src=<%=basePath%>statics/picture/4.png>--%>
            <%--</li>--%>
            <%--<li>--%>
            <%--<!-- <p><i class="iconSS /Public/new_equipment/house/7.png"></i></p>--%>
            <%--<h4>空调</h4> -->--%>
            <%--<img alt="空调" src=<%=basePath%>statics/picture/7.png>--%>
            <%--</li>--%>
            <%--</ul>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--<!---->--%>
            <%--<!---->--%>
            <%--<div id='publicFalicities' class="details-unit-warp">--%>
            <%--<div class="list-icon">--%>
            <%--<ul class="clearfix">--%>
            <%--<li>--%>
            <%--<!-- <p><i class="iconSS /Public/new_equipment/house/115.png"></i></p>--%>
            <%--<h4>热水器</h4> -->--%>
            <%--<img alt="热水器" src="<%=basePath%>statics/picture/115.png">--%>
            <%--</li>--%>
            <%--<li>--%>
            <%--<!-- <p><i class="iconSS /Public/new_equipment/house/116.png"></i></p>--%>
            <%--<h4>卫生间</h4> -->--%>
            <%--<img alt="卫生间" src="<%=basePath%>statics/picture/116.png">--%>
            <%--</li>--%>
            <%--<li>--%>
            <%--<!-- <p><i class="iconSS /Public/new_equipment/house/136.png"></i></p>--%>
            <%--<h4>坐式马桶</h4> -->--%>
            <%--<img alt="坐式马桶" src="<%=basePath%>statics/picture/136.png">--%>
            <%--</li>--%>
            <%--</ul>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--</div>--%>

            <!---->
            <!---->
            <%--<div class="details-unit">--%>
            <%--<div class="details-unit-title">房间信息</div>--%>
            <%--<div class="details-unit-warp details-unit-table">--%>
            <%--<table border="0" cellpadding="0" cellspacing="0" class="table-list">--%>
            <%--<tr>--%>
            <%--<th>房间</th>--%>
            <%--<th>室友</th>--%>
            <%--<th>面积</th>--%>
            <%--<th>朝向</th>--%>
            <%--<th>租金</th>--%>
            <%--<th>状态</th>--%>
            <%--</tr>--%>
            <%--<tr>--%>

            <%--<td>当前房间</td>--%>
            <%--<td class="roomMate-ms">--%>

            <%--</td>--%>
            <%--<td>20M²</td>--%>
            <%--<td>朝西北</td>--%>
            <%--<td>2300元</td>--%>
            <%--<td class="room-link">--%>
            <%--<a target="_blank" href="http://sh.baletu.com/house/2570091.html">可租</a>--%>

            <%--</td>--%>
            <%--</tr>--%>
            <%--<tr>--%>

            <%--<td>B</td>--%>
            <%--<td class="roomMate-ms">--%>
            <%--<div class="roomMate-ms-nv">--%>
            <%--</div>--%>

            <%--</td>--%>
            <%--<td>18M²</td>--%>
            <%--<td>朝南</td>--%>
            <%--<td>&nbsp;</td>--%>
            <%--<td class="room-link">--%>
            <%--已租--%>

            <%--</td>--%>
            <%--</tr>--%>
            <%--<tr>--%>

            <%--<td>C</td>--%>
            <%--<td class="roomMate-ms">--%>
            <%--<div class="roomMate-ms-nv">--%>
            <%--</div>--%>

            <%--</td>--%>
            <%--<td>20M²</td>--%>
            <%--<td>朝东南</td>--%>
            <%--<td>&nbsp;</td>--%>
            <%--<td class="room-link">--%>
            <%--已租--%>

            <%--</td>--%>
            <%--</tr>--%>
            <%--<tr>--%>

            <%--<td>D</td>--%>
            <%--<td class="roomMate-ms">--%>
            <%--<div class="roomMate-ms-nv">--%>
            <%--</div>--%>

            <%--</td>--%>
            <%--<td>25M²</td>--%>
            <%--<td>朝西北</td>--%>
            <%--<td>&nbsp;</td>--%>
            <%--<td class="room-link">--%>
            <%--已租--%>

            <%--</td>--%>
            <%--</tr>--%>
            <%--<tr>--%>

            <%--<td>E</td>--%>
            <%--<td class="roomMate-ms">--%>
            <%--<div class="roomMate-ms-nv">--%>
            <%--</div>--%>

            <%--</td>--%>
            <%--<td>20M²</td>--%>
            <%--<td>朝东北</td>--%>
            <%--<td>&nbsp;</td>--%>
            <%--<td class="room-link">--%>
            <%--已租--%>

            <%--</td>--%>
            <%--</tr>--%>
            <%--<tr>--%>

            <%--<td>F</td>--%>
            <%--<td class="roomMate-ms">--%>
            <%--<div class="roomMate-ms-nv">--%>
            <%--</div>--%>

            <%--</td>--%>
            <%--<td>20M²</td>--%>
            <%--<td>朝西北</td>--%>
            <%--<td>&nbsp;</td>--%>
            <%--<td class="room-link">--%>
            <%--已租--%>

            <%--</td>--%>
            <%--</tr>--%>
            <%--<tr>--%>

            <%--<td>G</td>--%>
            <%--<td class="roomMate-ms">--%>
            <%--<div class="roomMate-ms-nv">--%>
            <%--</div>--%>

            <%--</td>--%>
            <%--<td>20M²</td>--%>
            <%--<td>朝西北</td>--%>
            <%--<td>&nbsp;</td>--%>
            <%--<td class="room-link">--%>
            <%--已租--%>

            <%--</td>--%>
            <%--</tr>--%>
            <%--</table>--%>
            <%--</div>--%>
            <%--</div>--%>
            <!---->

            <!---->
            <!---->
            <!---->
            <!---->
        </div>
        <%--<div id="OtherHouseContainer" class="unit-detail">--%>
        <%--<div class="unit-pro">--%>
        <%--<div class="pro-title">--%>
        <%--<h2>该房东其他房源</h2>--%>
        <%--<a href="javascript:void(0)" onclick="changeOtherHouse()" class="more"><span>•</span>换一批</a>--%>
        <%--</div>--%>
        <%--<ul id="other_house_items_container" class="pro-list clearfix">--%>

        <%--<li num="631366" name="华悦家园南区 1室0厅0卫" category="徐汇-田林" variant="合租" price="2700">--%>
        <%--<a onclick="pbalistshowkhouse(this)" target="_blank"--%>
        <%--href="http://sh.baletu.com/house/631366.html?view_source=5" class="pro-pic">--%>
        <%--<img style="width: 100%" alt="华悦家园南区"--%>
        <%--src="<%=basePath%>statics/picture/oss_58a169e870fe5.jpg@!380_280.png"/>--%>
        <%--</a>--%>
        <%--<div class="list-index-text">--%>
        <%--<div class="list-pic-title">--%>
        <%--<h3>华悦家园南区</h3>--%>
        <%--<span class="price"><em>￥</em> 2700</span>--%>
        <%--</div>--%>
        <%--<p class="list-pic-ps">徐汇-田林4户合租 | 朝南-次卧 | 18M²</p>--%>
        <%--<div class="pro-lab">--%>
        <%--<span>月付</span>--%>
        <%--<span>新上架</span>--%>
        <%--<span>近地铁</span>--%>
        <%--<span>朝南</span>--%>
        <%--</div>--%>
        <%--</div>--%>
        <%--</li>--%>


        <%--<li num="663104" name="华悦家园南区 1室0厅0卫" category="徐汇-田林" variant="合租" price="3000">--%>
        <%--<a onclick="pbalistshowkhouse(this)" target="_blank"--%>
        <%--href="http://sh.baletu.com/house/663104.html?view_source=5" class="pro-pic">--%>
        <%--<img style="width: 100%" alt="华悦家园南区"--%>
        <%--src="<%=basePath%>statics/picture/oss_58d61b00e8d51.jpg@!380_280.png"/>--%>
        <%--</a>--%>
        <%--<div class="list-index-text">--%>
        <%--<div class="list-pic-title">--%>
        <%--<h3>华悦家园南区</h3>--%>
        <%--<span class="price"><em>￥</em> 3000</span>--%>
        <%--</div>--%>
        <%--<p class="list-pic-ps">徐汇-田林5户合租 | 朝南-次卧 | 15M²</p>--%>
        <%--<div class="pro-lab">--%>
        <%--<span>月付</span>--%>
        <%--<span>新上架</span>--%>
        <%--<span>近地铁</span>--%>
        <%--<span>朝南</span>--%>
        <%--</div>--%>
        <%--</div>--%>
        <%--</li>--%>


        <%--<li num="2600603" name="绿庭尚城 1室0厅0卫" category="松江-九亭" variant="合租" price="2600">--%>
        <%--<a onclick="pbalistshowkhouse(this)" target="_blank"--%>
        <%--href="http://sh.baletu.com/house/2600603.html?view_source=5" class="pro-pic">--%>
        <%--<img style="width: 100%" alt="绿庭尚城"--%>
        <%--src="<%=basePath%>statics/picture/oss_5ad70455b5d2c.jpg@!380_280.png"/>--%>
        <%--</a>--%>
        <%--<div class="list-index-text">--%>
        <%--<div class="list-pic-title">--%>
        <%--<h3>绿庭尚城</h3>--%>
        <%--<span class="price"><em>￥</em> 2600</span>--%>
        <%--</div>--%>
        <%--<p class="list-pic-ps">松江-九亭4户合租 | 朝南-次卧 | 25M²</p>--%>
        <%--<div class="pro-lab">--%>
        <%--<span>月付</span>--%>
        <%--<span>朝南</span>--%>
        <%--<span>电梯房</span>--%>
        <%--<span>非一楼</span>--%>
        <%--</div>--%>
        <%--</div>--%>
        <%--</li>--%>


        <%--<li num="2377066" name="五洲云景花苑 1室0厅0卫" category="松江-九亭" variant="合租" price="2300">--%>
        <%--<a onclick="pbalistshowkhouse(this)" target="_blank"--%>
        <%--href="http://sh.baletu.com/house/2377066.html?view_source=5" class="pro-pic">--%>
        <%--<img style="width: 100%" alt="五洲云景花苑"--%>
        <%--src="<%=basePath%>statics/picture/oss_5811a429a26c5.jpg@!380_280.png"/>--%>
        <%--</a>--%>
        <%--<div class="list-index-text">--%>
        <%--<div class="list-pic-title">--%>
        <%--<h3>五洲云景花苑</h3>--%>
        <%--<span class="price"><em>￥</em> 2300</span>--%>
        <%--</div>--%>
        <%--<p class="list-pic-ps">松江-九亭7户合租 | 朝南-次卧 | 20M²</p>--%>
        <%--<div class="pro-lab">--%>
        <%--<span>月付</span>--%>
        <%--<span>朝南</span>--%>
        <%--<span>电梯房</span>--%>
        <%--<span>非一楼</span>--%>
        <%--</div>--%>
        <%--</div>--%>
        <%--</li>--%>

        <%--</ul>--%>
        <%--</div>--%>
        <%--</div>--%>
        <%--相似房源--%>
        <div id="RelationHouseContainer" class="unit-detail">
            <div class="unit-pro">
                <div class="pro-title">
                    <%--<h2>相似房源</h2>--%>
                    <%--<a href="javascript:void(0)" onclick="changeRelationHouse()" class="more"><span>•</span>换一批</a>--%>
                </div>
                <ul id="relation_house_items_container" class="pro-list clearfix">

                    <%--<li num="2610995" name="young派梦想城 1室1厅1卫" category="松江-九亭" variant="整租" price="2600">--%>
                    <%--<a onclick="pbalistshowkhouse(this)" target="_blank"--%>
                    <%--href="http://sh.baletu.com/house/2610995.html?view_source=4" class="pro-pic">--%>
                    <%--<img style="width: 100%" alt="young派梦想城"--%>
                    <%--src="<%=basePath%>statics/picture/oss_5ad56bd01a1e0.jpg@!380_280.png"/>--%>
                    <%--</a>--%>
                    <%--<div class="list-index-text">--%>
                    <%--<div class="list-pic-title">--%>
                    <%--<h3>young派梦想城</h3>--%>
                    <%--<span class="price"><em>￥</em> 2600</span>--%>
                    <%--</div>--%>
                    <%--<p class="list-pic-ps">松江-九亭整租 | 1室1厅1卫 | 64M²</p>--%>
                    <%--<div class="pro-lab">--%>
                    <%--<span>独立厨房</span>--%>
                    <%--<span>电梯房</span>--%>
                    <%--<span>非一楼</span>--%>
                    <%--<span>非隔断</span>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--</li>--%>

                    <%--<li num="520547" name="绿庭尚城 1室0厅0卫" category="松江-九亭" variant="合租" price="1800">--%>
                    <%--<a onclick="pbalistshowkhouse(this)" target="_blank"--%>
                    <%--href="http://sh.baletu.com/house/520547.html?view_source=4" class="pro-pic">--%>
                    <%--<img style="width: 100%" alt="绿庭尚城"--%>
                    <%--src="<%=basePath%>statics/picture/oss_5879d31284626.jpg@!380_280.png"/>--%>
                    <%--</a>--%>
                    <%--<div class="list-index-text">--%>
                    <%--<div class="list-pic-title">--%>
                    <%--<h3>绿庭尚城</h3>--%>
                    <%--<span class="price"><em>￥</em> 1800</span>--%>
                    <%--</div>--%>
                    <%--<p class="list-pic-ps">松江-九亭3户合租 | 朝北-次卧 | 17M²</p>--%>
                    <%--<div class="pro-lab">--%>
                    <%--<span>月付</span>--%>
                    <%--<span>家电全配</span>--%>
                    <%--<span>电梯房</span>--%>
                    <%--<span>非一楼</span>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--</li>--%>

                    <%--<li num="917989" name="五洲云景花苑 1室0厅1卫" category="松江-九亭" variant="合租" price="2300">--%>
                    <%--<a onclick="pbalistshowkhouse(this)" target="_blank"--%>
                    <%--href="http://sh.baletu.com/house/917989.html?view_source=4" class="pro-pic">--%>
                    <%--<img style="width: 100%" alt="五洲云景花苑"--%>
                    <%--src="<%=basePath%>statics/picture/oss_5abc7ead3ef8f.jpg@!380_280.png"/>--%>
                    <%--</a>--%>
                    <%--<div class="list-index-text">--%>
                    <%--<div class="list-pic-title">--%>
                    <%--<h3>五洲云景花苑</h3>--%>
                    <%--<span class="price"><em>￥</em> 2300</span>--%>
                    <%--</div>--%>
                    <%--<p class="list-pic-ps">松江-九亭3户合租 | 朝东南-主卧 | 20M²</p>--%>
                    <%--<div class="pro-lab">--%>
                    <%--<span>月付</span>--%>
                    <%--<span>主卧</span>--%>
                    <%--<span>独卫</span>--%>
                    <%--<span>带阳台</span>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--</li>--%>

                    <%--<li num="1105450" name="西郊家园（青浦） 1室0厅0卫" category="青浦-徐泾" variant="合租" price="2400">--%>
                    <%--<a onclick="pbalistshowkhouse(this)" target="_blank"--%>
                    <%--href="http://sh.baletu.com/house/1105450.html?view_source=4" class="pro-pic">--%>
                    <%--<img style="width: 100%" alt="西郊家园（青浦）"--%>
                    <%--src="<%=basePath%>statics/picture/oss_5982d21a187a7.jpg@!380_280.png"/>--%>
                    <%--</a>--%>
                    <%--<div class="list-index-text">--%>
                    <%--<div class="list-pic-title">--%>
                    <%--<h3>西郊家园（青浦）</h3>--%>
                    <%--<span class="price"><em>￥</em> 2400</span>--%>
                    <%--</div>--%>
                    <%--<p class="list-pic-ps">青浦-徐泾12户合租 | 朝南-次卧 | 30M²</p>--%>
                    <%--<div class="pro-lab">--%>
                    <%--<span>近地铁</span>--%>
                    <%--<span>朝南</span>--%>
                    <%--<span>非一楼</span>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--</li>--%>
                </ul>
            </div>
        </div>

    </div>

    <div id="loading_notice_div">加载中</div>
    <div id="datetime-picker-container">
        <div><span>8:00</span></div>
        <div><span>9:00</span></div>
        <div><span>10:00</span></div>
        <div><span>11:00</span></div>
        <div><span>12:00</span></div>
        <div><span>13:00</span></div>
        <div><span>14:00</span></div>
        <div><span>15:00</span></div>
        <div><span>16:00</span></div>
        <div><span>17:00</span></div>
        <div><span>18:00</span></div>
        <div><span>19:00</span></div>
        <div><span>20:00</span></div>
        <div><span>21:00</span></div>
        <div><span>22:00</span></div>
    </div>

    <div id="full_screen_div_bg"
         style="width: 100%;height: 100%;top: 0; left: 0; background: #000000;z-index: 100;position: fixed;opacity: 0.7;display: none">
    </div>
    <div id="full_screen_div" class="imgContainer"
         style="width: 100%;height: 100%;top: 0; left:0; background: transparent;z-index: 100;position: fixed;display: none">
        <div style="float: right;"><img style="margin-right: 20px;cursor: pointer" width="40"
                                        onclick="turnOffFullScreenImg()"
                                        src="<%=basePath%>statics/picture/full_close.png"/></div>
        <div class="detailImg"
             style="width: 100%;height: 70%;max-height: 600px;margin-top: 8%;max-width: 1200px;margin-left: auto;margin-right: auto;text-align: center;">
            <a id="detailImg-pre" style="cursor: pointer"><img style="width: 25px;position: absolute;top: 45%;left: 1%"
                                                               src="<%=basePath%>statics/picture/nav_prev.png"/></a>
            <div id="detailImg-box" class="box"
                 style="width: 70%;max-height: 540px;margin-left: auto;margin-right: auto;text-align: center"></div>
            <a id="detailImg-next" style="cursor: pointer"><img
                    style="width: 25px;position: absolute;top: 45%;right: 1%"
                    src="<%=basePath%>statics/picture/nav_next.png"/></a>
        </div>
        <div id="img_i_count"
             style="width: 4%; position: fixed; margin-left: 48%; bottom: 55px; background: black; color: white; padding: 6px 20px; text-align: center; border-radius: 5px;    opacity: 0.8;">
            1/2
        </div>
    </div>
    <script type="text/javascript" src="<%=basePath%>statics/js/2c7eaf46cd0a40e789912c83487f338c.js"></script>
    <!--<script type="text/javascript" src="<%=basePath%>statics/js/walkingrender1230.js"></script>-->
    <!--<script type="text/javascript" src="<%=basePath%>statics/js/transferrender1230.js"></script>-->
    <!--<script type="text/javascript" src="<%=basePath%>statics/js/drivingrender1230.js"></script>-->
    <!-- UI组件库 1.0 -->
    <script src="<%=basePath%>statics/js/main.js"></script>

    <link rel="stylesheet" href="<%=basePath%>statics/css/main1119.css"/>
    <style type="text/css">
        body {
            position: initial;
        }
    </style>
    <!--<link rel="stylesheet" href="<%=basePath%>statics/css/amap.walkingrender1120.css"/>-->
    <!--<link rel="stylesheet" href="<%=basePath%>statics/css/amap.transferrender1120.css"/>-->
    <!--<link rel="stylesheet" href="<%=basePath%>statics/css/amap.drivingrender1120.css"/>-->
    <script type="text/javascript">
        //*模块固定 by wn*
        var isExists = '0';//是否预约
        var isDelay = '0';//是否延迟预约
        var Agency_Company_Info_type = '2';//公寓
        var House_Info_lan_co_id = '1665';//大房东房源 0 空 null
        if (isExists == '1' || isDelay == '1') {
            $('#house_index_yuyue').text('查看预约');
        } else {
            $('#house_index_yuyue').text('预约看房');
        }
        window.onscroll = function () {
            var scrollTop = document.documentElement.scrollTop || window.pageYOffset || document.body.scrollTop;
            topHeight = $(".details").height();//获取内容高
            if (scrollTop >= 90 & topHeight - 450 >= scrollTop) {
                $('.basic-line').css({
                    "position": "fixed",
                    "top": "0px",
                });
            } else {
                $('.basic-line').css({
                    "position": "static",
                });
            }
        }
        //
        var privateFalicities = 'Array';
        var publicFalicities = 'Array';

        $(document).ready(function () {
            if (privateFalicities) {//ra独用 rap 公用
                $('.wrap span:first').html('独用设施');
                $('.wrap #privateFalicities').show();
                if (publicFalicities) {
                    $('.wrap .rap').html('公用设施');
                }
                $('.ra').click(function () {
                    $(this).addClass('active');
                    $(this).siblings().removeClass('active');
                    $('.wrap #publicFalicities').hide();
                    $('.wrap #privateFalicities').show();
                })
                $('.rap').click(function () {
                    $(this).addClass('active');
                    $(this).siblings().removeClass('active');
                    $('.wrap #publicFalicities').show();
                    $('.wrap #privateFalicities').hide();
                })
            } else {
                if (publicFalicities) {
                    $('.rap').addClass('active');
                    $('.iconsh-tab span:first').html('公用设施');
                    $('.iconsh-tab #publicFalicities').hide();
                }
            }
        });

        var s_lon = '121.312669';
        var s_lat = '31.146762';
        var s_address = '涞寅路658弄';
        var house_id = '2570091';
        var city_id = '1';
        var city_name = '上海';
        var showTimes = 0;
        showConnectMobile(house_id);

        function showConnectMobile(house_id) {
            if ($('#mobile_erweima1').attr('src') != '') {
                var m = 'cd3cbe727bc62726bcc49e145084823f';
                var indexUrl = '/ajax/getConnectMobile?id=' + house_id + '&city_id=' + city_id + '&m=' + m;
                $.getJSON(indexUrl, {}, function (data) {
                    $('#mobile_erweima1').attr('src', data['erweima']);
                    $('#mobile_phone').html(data['showNumber']);
                    $('#dianhuakefu').html(data['showNumber']);
                    // 遮罩内的二维码
                    if ($('#mobile_erweima2').attr('src') != '') $('#mobile_erweima2').attr('src', data['erweima']);
                });
            }
        }

        g_config['model_name'] = 'house';
        g_config['house_info'] = [];
        g_config['house_info']['num'] = "2570091";
        g_config['house_info']['name'] = "绿庭尚城 1室0厅0卫";
        g_config['house_info']['category'] = "松江-九亭";
        g_config['house_info']['variant'] = "合租";
        g_config['house_info']['price'] = "2300.00";

        var mapObj = new AMap.Map('map-show', {
            zoom: 14,
            resizeEnable: true,
            scrollWheel: false,
            center: [s_lon, s_lat],
            city: "上海"
        });

        function markerCenter() {
            mapObj.setZoomAndCenter(16, [s_lon, s_lat]);
            new AMap.Marker({ //小区中心点位置
                map: mapObj,
                icon: '//js.baletoo.cn/static/pc/images/icon-pos.png',
                position: new AMap.LngLat(s_lon, s_lat),
                offset: new AMap.Pixel(-20.5, -49),
            });
        }

        window.onload = function () {
            AMap_searchNearBy('地铁');
            setOnlickListener();
            LoadingNotice.initView();
            changeOtherHouse();
            changeRelationHouse();
        };

        function setOnlickListener() {
            $('body').on('click', function () {
                $('#datetime-picker-container').hide();
            });
        }

        function AMap_searchNearBy(type, el) {
            if (el != undefined) {
                $('.map-tab li.active').removeClass('active');
            }
            $("#map-path-list").empty();
            mapObj.clearMap();
            AMap.service(["AMap.PlaceSearch"], function () {
                var placeSearch = new AMap.PlaceSearch({ //构造地点查询类
                    pageSize: 100,
                    pageIndex: 1,
                    type: type,
                    city: "上海",
                    map: mapObj
                });

                var centerObj = mapObj.getCenter();
                var cpoint = [s_lon, s_lat]; //中心点坐标
                placeSearch.searchNearBy('', cpoint, 500, function (status, result) {
                    mapObj.panTo(centerObj);
                    mapObj.setZoom(15);
                });
            });
            if (el != null) {
                $(el).addClass('active');
            }
            markerCenter();
        }

        function AMap_drawRoutePath(type) {
            mapObj.clearMap();
            $("#map-path-list").empty();
            //构造路线导航类
            if (type == '步行') {
                var drawer = new AMap.Walking({
                    map: mapObj,
                    panel: "map-path-list"
                });
            } else if (type == '自驾') {
                var drawer = new AMap.Driving({
                    map: mapObj,
                    panel: "map-path-list"
                });
            } else if (type == '公交') {
                var transOptions = {
                    map: mapObj,
                    panel: 'map-path-list',
                    policy: AMap.TransferPolicy.LEAST_TIME //乘车策略
                };
                var drawer = new AMap.Transfer(transOptions);
            } else {
                return;
            }
            // 根据起终点名称规划驾车导航路线
            drawer.search([
                {keyword: s_address, city: city_name},
                {keyword: $('#map-search-input').val(), city: city_name}
            ]);
            markerCenter();
        }

        AMapUI.loadUI(['control/BasicControl'], function (BasicControl) {

            var zoomCtrl1 = new BasicControl.Zoom({
                theme: 'dark'
            })

            mapObj.addControl(zoomCtrl1);
        });

    </script>
    <script>
        $(function () {
            // 页面加载时预览显示前三张
            imageWrapper = $(".imagesPreviewer .i-images > ul > li > .img")
            navWrapper = $(".imagesPreviewer .i-nav .i-nav-thumb > ul > li > .img")
            for (var i = 0; i < 4; i++) {
                $(navWrapper[i]).attr("src", $(navWrapper[i]).attr("data-src"))
                $(imageWrapper[i]).attr("src", $(imageWrapper[i]).attr("data-src"))
            }
            $(navWrapper[0]).css('border', '2px solid red')
            $(navWrapper[0]).attr('data-active', '1')
        })

        // 缩略图切换图片
        function changeImage(e) {
            // 缩略图
            var navWrapper = $(".imagesPreviewer .i-nav .i-nav-thumb > ul > li > .img")
            var navUl = $(".imagesPreviewer .i-nav .i-nav-thumb > ul")
            var navParentTop = $(e.target).parent().parent().offset().top
            var navTargetTop = $(e.target).parent().offset().top
            var navHeight = navTargetTop - navParentTop
            var navLength = navUl.find("li").length
            var navIndex = $(e.target).attr("data-index")
            var navTransHeight = (navIndex - 1) * 130

            // 设置缩略图当前图片样式
            function navSetActive() {
                for (var i = 0; i < navWrapper.length; i++) {
                    $(navWrapper[i]).css('border', 'none')
                    $(navWrapper[i]).attr('data-active', '0')
                }
                $(e.target).css('border', '2px solid red')
                $(e.target).attr('data-active', '1')
            }

            navSetActive()

            // 缩略图动画
            if (navIndex > 0 && navIndex < navLength - 1) {
                if (navIndex < navLength - 2) {
                    var navLoadIndex = navIndex * 1 + 2
                    if ($(navWrapper[navLoadIndex]).attr("src").indexOf("img_loading_160_120.png")) {
                        $(navWrapper[navLoadIndex]).attr("src", $(navWrapper[navLoadIndex]).attr("data-src"))
                    }
                }
                navUl.css({
                    'transition': 'transform 0.5s',
                    '-moz-transition': 'transform 0.5s', /* Firefox 4 */
                    '-webkit-transition': 'transform 0.5s', /* Safari 和 Chrome */
                    '-o-transition': 'transform 0.5s', /* Opera */

                    'transform': 'translateY(-' + navTransHeight + 'px)',
                    '-ms-transform': 'translateY(-' + navTransHeight + 'px)', /* IE 9 */
                    '-moz-transform': 'translateY(-' + navTransHeight + 'px)', /* Firefox */
                    '-webkit-transform': 'translateY(-' + navTransHeight + 'px)', /* Safari 和 Chrome */
                    '-o-transform': 'translateY(-' + navTransHeight + 'px)', /* Opera */
                })
            }

            // 大图
            var imageWrapper = $(".imagesPreviewer .i-images > ul > li > .img")
            var imageUl = $(".imagesPreviewer .i-images > ul")
            var imageIndex = navIndex
            var imageTransHeight = imageIndex * 450
            if (navIndex < navLength - 2) {
                var imageLoadIndex = imageIndex * 1 + 2
                if ($(imageWrapper[imageLoadIndex]).attr("src").indexOf("img_loading_600_450.png")) {
                    $(imageWrapper[imageLoadIndex]).attr("src", $(imageWrapper[imageLoadIndex]).attr("data-src"))
                }
            }
            imageUl.css({
                'transition': 'transform 0.5s',
                '-moz-transition': 'transform 0.5s', /* Firefox 4 */
                '-webkit-transition': 'transform 0.5s', /* Safari 和 Chrome */
                '-o-transition': 'transform 0.5s', /* Opera */

                'transform': 'translateY(-' + imageTransHeight + 'px)',
                '-ms-transform': 'translateY(-' + imageTransHeight + 'px)', /* IE 9 */
                '-moz-transform': 'translateY(-' + imageTransHeight + 'px)', /* Firefox */
                '-webkit-transform': 'translateY(-' + imageTransHeight + 'px)', /* Safari 和 Chrome */
                '-o-transform': 'translateY(-' + imageTransHeight + 'px)', /* Opera */
            })
        }

        // 按钮切换图片
        function changeImageBtn(j) {
            var activeIndex = 0, showIndex = 0;
            var navWrapper = $(".imagesPreviewer .i-nav .i-nav-thumb > ul > li > .img");
            for (var i = 0; i < navWrapper.length; i++) {
                if ($(navWrapper[i]).attr('data-active') && $(navWrapper[i]).attr('data-active') == '1') {
                    activeIndex = i
                    break
                }
            }
            if (j == 1) {
                // 显示上一张图片
                showIndex = (activeIndex - 1).toString()
                if (showIndex > -1) {
                    navWrapper[showIndex].click()
                }
            } else if (j == 2) {
                // 显示下一张图片
                showIndex = activeIndex + 1
                if (showIndex < navWrapper.length) {
                    navWrapper[showIndex].click()
                }
            }
        }

        // 点击查看大图
        function showBigImgPreviewer(e) {
            var imgs = $(".imagesPreviewer .i-nav .i-nav-thumb > ul > li > .img")
            var countTextTag = $('.imagesPreviewer .i-mask .content .imagebox .count .count-inner text')
            var index = $(e.target).attr('data-index')
            var src = $(e.target).attr('data-src')
            $('.imagesPreviewer .i-mask .content .imagebox .image img').attr('data-index', index)
            $('.imagesPreviewer .i-mask .content .imagebox .image img').attr('src', src)
            var countText = (index * 1 + 1).toString() + '/' + (imgs.length).toString()
            countTextTag.text(countText)
            $('body').css('overflow', 'hidden')
            $('.imagesPreviewer .i-mask').fadeIn('slow')
        }

        // 切换大图
        function changeBigImgPreviewer(j) {
            var imgs = $(".imagesPreviewer .i-nav .i-nav-thumb > ul > li > .img")
            var img = $('.imagesPreviewer .i-mask .content .imagebox .image img')
            var countTextTag = $('.imagesPreviewer .i-mask .content .imagebox .count .count-inner text')
            var index = img.attr('data-index')
            if (j == 1) {
                var prevIndex = index * 1 - 1
                if (prevIndex > -1) {
                    img.attr('data-index', prevIndex)
                    img.attr('src', $(imgs[prevIndex]).attr('data-src'))
                    var countText = (prevIndex * 1 + 1).toString() + '/' + (imgs.length).toString()
                    countTextTag.text(countText)
                }
            } else if (j == 2) {
                var nextIndex = index * 1 + 1
                if (nextIndex < imgs.length) {
                    img.attr('data-index', nextIndex)
                    img.attr('src', $(imgs[nextIndex]).attr('data-src'))
                    var countText = (nextIndex * 1 + 1).toString() + '/' + (imgs.length).toString()
                    countTextTag.text(countText)
                }
            }
        }

        // 点击关闭大图显示
        function hideBigImgPreviewer() {
            $('body').css('overflow', '')
            $('.imagesPreviewer .i-mask').fadeOut('slow')
        }

        // 用户仅在首次打开详情页的情况下，引导其微信扫码打电话
        (function () {
            var houseShowCover_QR = localStorage.houseShowCover_QR;
            if (!houseShowCover_QR) {
                // 显示引导遮罩层
                localStorage.houseShowCover_QR = '1';
                $('body').css('overflow-y', 'hidden');
                var coverQR = $('.QR-phoneCall .cover-QR')[0];
                var coverQRText = $('.QR-phoneCall .cover-QR-text')[0];
                var coverQRMa = $('.QR-phoneCall .cover-QR-ma')[0];
                $(coverQR).css('display', 'block');
                $(coverQRText).css('display', 'block');
                $(coverQRMa).css('display', 'block');
                // 点击隐藏遮罩
                var clickModel = [coverQR, coverQRText, coverQRMa];
                for (var i = 0; i < clickModel.length; i++) {
                    clickModel[i].onclick = function () {
                        $(coverQR).css('display', 'none');
                        $(coverQRText).css('display', 'none');
                        $(coverQRMa).css('display', 'none');
                        $('body').css('overflow-y', '');
                    }
                }
            }
        })()

    </script>

    <script src="<%=basePath%>statics/js/jquery.caroufredsel-6.0.4-packed.js" type="text/javascript"></script>
    <script type="text/javascript" src="<%=basePath%>statics/js/detail_index.js"></script>
    <script type="text/javascript" src="<%=basePath%>statics/js/common.js"></script>

    <link rel="stylesheet" href="<%=basePath%>statics/css/aliim.css">
    <script type="text/javascript" src="<%=basePath%>statics/js/common.js"></script>
    <script type="text/javascript" src="<%=basePath%>statics/js/popup.js"></script>
    <script type="text/javascript" src="<%=basePath%>statics/js/search.js"></script>
    <script src="<%=basePath%>statics/js/jquery.lazyload.js"></script>
    <script src="<%=basePath%>statics/js/aliim.js" type="text/javascript"></script>
    <script src="<%=basePath%>statics/js/wlog.js" charset="utf-8"></script>
    <jsp:include page="common/foot.jsp"/>
    <div class="slogan" id='slogan'>
    <div class="out">
    <ul class="clearfix">
    <%--<li>--%>
    <%--<p><i class="s-icon s-icon-mian"></i></p>--%>
    <%--<h4>0元佣金</h4>--%>
    <%--</li>--%>
    <%--<li>--%>
    <%--<p><i class="s-icon s-icon-yue"></i></p>--%>
    <%--<h4>房租月付</h4>--%>
    <%--</li>--%>
    <%--<li>--%>
    <%--<p><i class="s-icon s-icon-yu"></i></p>--%>
    <%--<h4>在线预约</h4>--%>
    <%--</li>--%>
    <%--<li>--%>
    <%--<p><i class="s-icon s-icon-zu"></i></p>--%>
    <%--<h4>在线服务</h4>--%>
    <%--</li>--%>

    </ul>
    </div>
    </div>
    <%--<div class="foot">--%>
    <%--<div class="out clearfix">--%>
    <div class="foot-l about-link">
    <%--<dl>--%>
    <%--<dt>--%>
        <%--<a href="/about/">关于我们</a></dt>--%>
    <%--<dd>--%>
    <%--<a href="http://partner.baletu.com" target="_blank">伙伴登录</a>--%>
    <%--<a href="/sitemap/">网站地图</a>--%>
    <%--<a href="/shequ/" target="_blank">兔社区</a>--%>
    <%--<a href="/tags/">tags</a>--%>
    <%--</dd>--%>
    <%--</dl>--%>
    </div>
    <div class="foot-l about-link">
    <%--<dl>--%>
    <%--<dt>合作公寓</dt>--%>
    <%--<dd>--%>
    <%--<span>青年汇</span>--%>
    <%--<span>银桥公寓</span>--%>
    <%--<span>爱家精品公寓 ...</span>--%>
    <%--</dd>--%>
    <%--</dl>--%>
    </div>
    <%--<div class="foot-l about-link">--%>
    <%--<dl>--%>
    <%--<dt>意见反馈</dt>--%>
    <%--<dd><a href="mailto:service@baletu.com">Mail：service@baletu.com</a></dd>--%>
    <%--</dl>--%>
    <%--<dl>--%>
    <%--<dt><a href="/contact/" target="_blank">联系客服</a></dt>--%>
    <%--<dd>--%>
    <%--<p>400-183-0033</p>--%>
    <%--<p>周一～周日 8:00～23:00</p>--%>
    <%--</dd>--%>
    <%--</dl>--%>
    <%--</div>--%>
    <%--<div class="foot-r clearfix">--%>
    <%--<div class="code-pic">--%>
    <%--<p>扫码下载巴乐兔APP</p>--%>
    <%--<img id="foot_download_app" mark="底部" src="<%=basePath%>statics/picture/dapp-new-footer25.png"--%>
    <%--data-rjs="//js.baletoo.cn/static/pc/images/mac/index/dapp-new-footer25@3x.png"/>--%>
    <%--</div>--%>
    <%--<div class="code-pic">--%>
    <%--<p>扫码关注微信号</p>--%>
    <%--<img src="<%=basePath%>statics/picture/codepic02.jpg"--%>
    <%--data-rjs="//js.baletoo.cn/static/pc/images/mac/index/codePic02@3x.png"/>--%>
    <%--</div>--%>
    <%--</div>--%>
    <%--<div class="clear"></div>--%>
    <%--<div class="foot-pc">--%>
    <%--©2015 上海万间信息技术有限公司 &nbsp; &nbsp;--%>
    <%--沪ICP备15004537号 &nbsp; &nbsp;--%>
    <%--<a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=31011502006937" target="_blank"--%>
    <%--class="gongan">--%>
    <%--沪公网安备31011502006937号 &nbsp; &nbsp;--%>
    <%--</a>--%>
    <%--张江高科晨晖路88号1号楼4层--%>
    <%--</div>--%>
    <%--</div>--%>
    <%--</div>--%>
    <%--<div class="im-container">--%>
    <%--<a href="javascript:;" id="im_lightin" data-status="1">--%>
    <%--<img src="<%=basePath%>statics/picture/im_normal_new_1122.png"--%>
    <%--data-rjs="//js.baletoo.cn/static/pc/images/im/im_normal_new_1122_mac.png" alt="" class="im-img">--%>
    <%--<!--im提示-->--%>
    <%--<div class="im_prompt">--%>
    <%--<img src="<%=basePath%>statics/picture/kefu.png"--%>
    <%--data-rjs="//js.baletoo.cn/static/pc/images/im/kefu_mac.png" alt="" class="im-kefu">--%>
    <%--</div>--%>
    <%--</a>--%>
    <%--<div class="im-wrapper">--%>
    <%--<div class="title">--%>
    <%--<img src="<%=basePath%>statics/picture/im_staff01.png"--%>
    <%--data-rjs="//js.baletoo.cn/static/pc/images/im/im_staff01_mac.png" alt="">--%>
    <%--<img src="<%=basePath%>statics/picture/im_close01.png"--%>
    <%--data-rjs="//js.baletoo.cn/static/pc/images/im/im_close01_mac.png" alt="" id="im_closeform"--%>
    <%--data-status="0">--%>
    <%--<div class="title_word">巴乐兔客服</div>--%>
    <%--<div class="clear"></div>--%>
    <%--</div>--%>
    <%--<div class="address"></div>--%>
    <%--<div class="im-message" id="im_message"></div>--%>
    <%--</div>--%>
    <%--<a href="javascript:;" id="toTOP">--%>
    <%--<img src="<%=basePath%>statics/picture/totop_1122.png"--%>
    <%--data-rjs="//js.baletoo.cn/static/pc/images/im/toTop_1122_mac.png" alt="" class="Totop">--%>
    <%--<!--TOP提示-->--%>
    <%--<div class="Totop_div">--%>
    <%--<img src="<%=basePath%>statics/picture/top_info.png"--%>
    <%--data-rjs="//js.baletoo.cn/static/pc/images/im/top_info_mac.png" alt="" class="Totop_info">--%>
    <%--</div>--%>
    <%--</a>--%>
    <%--<a href="javascript:;" id="Suggestions">--%>
    <%--<img src="<%=basePath%>statics/picture/suggestion.png"--%>
    <%--data-rjs="//js.baletoo.cn/static/pc/images/im/suggestion_mac.png" alt="" class="suggestion">--%>
    <%--<!--TOP提示-->--%>
    <%--<div class="Suggestions_div">--%>
    <%--<img src="<%=basePath%>statics/picture/fankui.png"--%>
    <%--data-rjs="//js.baletoo.cn/static/pc/images/im/fankui_mac.png" alt="" class="sugestion_info">--%>
    <%--</div>--%>
    <%--</a>--%>
    <%--</div>--%>
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
                 src="<%=basePath%>statics/picture/08d0e552449d497c85059982906061b4.gif"/>
        </div>
    </noscript>
</body>
</html>