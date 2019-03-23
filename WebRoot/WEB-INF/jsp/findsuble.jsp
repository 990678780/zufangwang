<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

    <script src="<%=basePath%>statics/js/header.js"></script>
    <link rel="stylesheet" href="<%=basePath%>statics/css/zhaoshiyou.css">
    <link rel="stylesheet"
        href="<%=basePath%>statics/css/new_zhaoshiyou.css">
    <!-- ===========================遍历信息条件选择================================= -->
    <div class="find_mate_bg">
        <div class="mapOut">
            <div class="out">
                <div class="map">
                    <a href="#" class="link-page"><span>租房社区</span> </a> <span
                        class="">&nbsp;>&nbsp;</span> <span>不限专区</span>
                </div>
            </div>
        </div>
        <div class="main out main_new">
            <div class=" shequ-mainNEW">
                <div class="shequ-zhuanqu out-city">
                    <div class="tiezi-type">
                        <ul>
                            <li>出租</li>
                            <li>求租</li>
                        </ul>
                    </div>
                    <div class="zhizu out-out zhuanqu_new">不限专区</div>
                    <div class="city-switch city-switch1" id="cityselect" title="上海"
                        style="z-index: 9999;float:right">上海</div>
                    <div id="fixedcityselector" style="line-height: 0px;"></div>

                </div>
                <div class="clear"></div>
            </div>
            <div class="shequ-main search_form clearfix_new">
                <!--                onsubmit="return fafangConfirm(this)"-->
                <form class="clearfix_new" name="myform" id="myform"
                    action="http://localhost:8080/zwj/findsuble/findinvitation"
                    method="post">
                    <div class="search_commom search_dizhi">
                        <ul>
                            <li>地址</li>
                            <li>
                                <div id="container"></div> <input placeholder="请输入地址"
                                name="address" id="search_info" value="" /></li>
                        </ul>
                    </div>
                    <div class="search_commom search_jujin">
                        <ul>
                            <li>租金</li>
                            <li><input name="start_price" id="start_price" value="${start_price}"
                                onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^0-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"
                                onafterpaste="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"
                                placeholder="0">-<input name="end_price" id="end_price"
                                value="${start_price}"
                                onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"
                                onafterpaste="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"
                                placeholder="3000">&nbsp;元/月</li>
                        </ul>
                    </div>
                    <div class="search_commom search_leixing">
                        <div class="select_result_new" style="display:none">
                            <p>专区类型</p>
                            <input value="不限">
                            <div class="triangle">
                                <img src="<%=basePath%>statics/picture/jiant_down.png"
                                    data-rjs="//js.baletoo.cn/static/pc/images/mac/createhouse/jiant_down_mac.png"
                                    alt="">
                            </div>
                        </div>
                        <div class="select_result">
                            <p>专区类型</p>
                            <input id="type_choose" name="searchtype" autocomplete="off"
                                readonly="readonly" placeholder="请选择专区类型" value="不限">
                            <div class="triangle">
                                <img id="city" src="<%=basePath%>statics/picture/jiant_down.png"
                                    data-rjs="//js.baletoo.cn/static/pc/images/mac/createhouse/jiant_down_mac.png"
                                    alt="">
                            </div>
                        </div>

                        <ul class="select-t type1">
                            <li class="unit-inp-border" value="找室友">找室友</li>
                            <li class="unit-inp-border" value="转租">转租</li>
                        </ul>
                        <div type="button" class="search_btn" id="search_btn" value="搜索"
                            onclick="document.getElementById('myform').submit()">搜索</div>
                    </div>
                </form>
            </div>
            <div class="clear"></div>
            <div class="unit-new clearfix bg-unit-left">

                <!-- =================================遍历房屋信息区域=================================== -->
                <div class="list-center">
                    <ul>
                        <c:forEach items="${invitations}" var="invitation"
                            varStatus="invitation_index">
                            <li class="listUnit-date clearfix">
                                <div class="pro-pic">
                                    <a target="_blank"
                                        href="<%=basePath%>findsuble/findsuble_content?id=${invitation.id}"> <img
                                        src="<%=basePath%>statics/picture/oss_5ad34375ed3eb.png@!topic-thumbnail"
                                        alt=""> </a>
                                </div>
                                <div class="pro-text">
                                    <div class="list-pic-title">
                                        <h3>
                                            <a target="_blank"
                                                href="<%=basePath%>findsuble/findsuble_content?id=${invitation.id}">
                                                ${invitation.discripe} </a> <span class="price"> <em>￥</em>
                                                ${invitation.price} </span>
                                        </h3>
                                    </div>
                                    <p class="list-pic-ps">
                                        <span class="danjian">单间</span> <span class="buxian">不限</span>
                                        <span class="ruzhu"><fmt:formatDate
                                                value="${invitation.createTime}" pattern="yyyy-MM-dd" /> </span>
                                    </p>

                                    <div class="list-pic-ad">
                                        <span class="bg-dingwei"></span> ${invitation.address}
                                    </div>

                                    <div class="pro-lab-new">
                                        <span>转租</span>
                                        <div class="create_time"></div>
                                    </div>
                                </div>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
                <!-- =================================遍历房屋信息区域结束=================================== -->

                <!-- =================================右侧信息区域=================================== -->
            </div>
            <div class="bg-unit-right">
                <div class="out">
                    <div class="sidebar-new">
                        <div class="sidebar-top">
                            <div class="sidebar-title">关于租万家找室友</div>
                            <div class="sidebar-QRcode">
                                <div class="img">
                                    <img src="<%=basePath%>statics/picture/bg130.png"
                                        data-src="//js.baletoo.cn/static/pc/images/shiyou/zhaoshiyou_QRcode.jpg"
                                        alt="">
                                </div>
                                <p>扫码关注公众号 快速找到好室友</p>
                            </div>
                            <div class="sidebar-desc">
                                <h5>发现感兴趣的房子或者有趣的人可以留言</h5>
                                <h5>私聊，电话隐号拨打下载App发布帖子</h5>
                                <h5>每日置顶，还可以免费推广</h5>
                                <div class="sidebar-descbtn">发布信息</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- =================================右侧信息区域结束=================================== -->
            <div class="clear"></div>

            <script type="text/javascript"
                src="<%=basePath%>statics/js/kkpager.js"></script>
            <!--====================================page numble=======================================-->
            <div id="zhaofangpager" class="page-numble"></div>
            <input type="hidden" id="totalCount" name="totalCount" value="${ps.totalCount}" /> 
            <input type="hidden" id="currentPageNo" name="currentPageNo" value="${ps.currentPageNo}" /> 
            <input type="hidden" id="totalPageCount" name="totalPageCount" value="${ps.totalPageCount}" />
        </div>
        <script type="text/javascript"
            src="<%=basePath%>statics/kkpager.min.js"></script>
        <link rel="stylesheet" type="text/css"
            href="<%=basePath%>statics/kkpager_blue.css" />
        <script type="text/javascript">
            //init
            $(function() {
                var pageNo = $("#currentPageNo").val();
                var totalPage=$("#totalPageCount").val();
                var totalRecords=$("#totalCount").val();
                var address = $("input[name='address']").val();
                var start_price = $("input[name='start_price']").val();
                var end_price = $("input[name='end_price']").val();
                var searchtype = $("input[name='searchtype']").val();
                //alert("pageNo="+pageNo+"totalPage"+totalPage+"totalRecords"+totalRecords)
                if (!pageNo) {
                    pageNo = 1;
                }
                if(!address) {
                    address = null;
                }
                //生成分页
                //有些参数是可选的，比如lang，若不传有默认值
                kkpager.generPageHtml({
                    pno : pageNo,
                    //总页码
                    total : totalPage,
                    //总数据条数
                    totalRecords : totalRecords,
                    //链接前部
                    hrefFormer : 'findinvitation',
                    //链接尾部
                    hrefLatter : '?address='+address+'&start_price='+start_price+'&end_price='+end_price+'&searchtype='+searchtype,
                    getLink : function(n) {
                        return this.hrefFormer + this.hrefLatter + "&pno=" + n;
                    }
                /*
                ,lang               : {
                    firstPageText           : '首页',
                    firstPageTipText        : '首页',
                    lastPageText            : '尾页',
                    lastPageTipText         : '尾页',
                    prePageText             : '上一页',
                    prePageTipText          : '上一页',
                    nextPageText            : '下一页',
                    nextPageTipText         : '下一页',
                    totalPageBeforeText     : '共',
                    totalPageAfterText      : '页',
                    currPageBeforeText      : '当前第',
                    currPageAfterText       : '页',
                    totalInfoSplitStr       : '/',
                    totalRecordsBeforeText  : '共',
                    totalRecordsAfterText   : '条数据',
                    gopageBeforeText        : ' 转到',
                    gopageButtonOkText      : '确定',
                    gopageAfterText         : '页',
                    buttonTipBeforeText     : '第',
                    buttonTipAfterText      : '页'
                }*/

                //,
                //mode : 'click',//默认值是link，可选link或者click
                //click : function(n){
                //  this.selectPage(n);
                //  return false;
                //}
                });
            });
        </script>
        <!--====================================page numble=======================================-->
    </div>
    <div class="clear"></div>
    <script type="text/javascript"
        src="<%=basePath%>statics/js/16f78aaf63374ff18cfa5e121c7d48fc.js"></script>
    <script src="<%=basePath%>statics/js/cityselector.js" charset="utf-8"></script>
    <script src="<%=basePath%>statics/js/blt_extends.js"></script>
    <script type="text/javascript">
        var golink = '';
        if (window.location.pathname.indexOf('ask') > 0) {
            $('.select_result').hide();
            $('.select_result_new').show();
            golink = "http://www.baletu.com/roommate/ask_";
            $($('.tiezi-type').find('li').get(1)).css({
                "border-bottom" : "4px solid #ee3843",
                "font-weight" : "bold"
            }).siblings().css({
                "border-bottom" : "none",
                "font-weight" : "normal"
            });
        } else if (window.location.pathname.indexOf('findsublet') > 0) {
            golink = "http://www.baletu.com/roommate/findsublet_";

            $($('.tiezi-type').find('li').get(0)).css({
                "border-bottom" : "4px solid #ee3843",
                "font-weight" : "bold"
            }).siblings().css({
                "border-bottom" : "none",
                "font-weight" : "normal"
            });
        } else if (window.location.pathname.indexOf('find') > 0) {
            golink = "http://www.baletu.com/roommate/find_";
            $($('.tiezi-type').find('li').get(0)).css({
                "border-bottom" : "4px solid #ee3843",
                "font-weight" : "bold"
            }).siblings().css({
                "border-bottom" : "none",
                "font-weight" : "normal"
            });
        } else if (window.location.pathname.indexOf('sublet') > 0) {
            golink = "http://www.baletu.com/roommate/sublet_";
            $($('.tiezi-type').find('li').get(0)).css({
                "border-bottom" : "4px solid #ee3843",
                "font-weight" : "bold"
            }).siblings().css({
                "border-bottom" : "none",
                "font-weight" : "normal"
            });
        }
        $('.sidebar-descbtn').click(function() {
            /* 发布信息链接 */
            window.location.href = 'http://localhost:8080/zwj/write';
        })
        window.onscroll = function() {
            var documentHeight = $(document).height();
            var scrollTop = document.documentElement.scrollTop
                    || window.pageYOffset || document.body.scrollTop;
            topHeight = $(".sidebar-new").height();//获取内容高
            if (scrollTop >= 261 && documentHeight - scrollTop >= 1240) {
                $('.sidebar-new').css({
                    "position" : "fixed",
                    "top" : "0px",
                });
            } else {
                $('.sidebar-new').css({
                    "position" : "static",
                });
            }
        }

        $(function() {
            $("#publish_topic").click(function() {
                ispoplogin();
            });
        });

        function addNicknameComplete() {
            window.location.href = 'http://www.baletu.com'
                    + "/roommate/publish/";
        }

        var map = new AMap.Map('container');
        AMap.plugin('AMap.Autocomplete', function() {
            var autoOptions = {
                city : "", //城市，默认全国
                input : "search_info"
            };
            var autocomplete = new AMap.Autocomplete(autoOptions);
            AMap.event.addListener(autocomplete, "select", function(data) {
                $("#lon").val(data.poi.location.lng);
                $("#lat").val(data.poi.location.lat);
            });
        })

        var img_down = "//js.baletoo.cn/static/pc/images/jiant_down.png";
        var img_up = "//js.baletoo.cn/static/pc/images/jiant_right.png";

        function select() {
            $(document).click(function() {
                $('.select-t').slideUp();
                $('#city').attr("src", img_down);
            })
            $('.select_result').click(
                    function(e) {
                        e.stopPropagation();
                        var ul = $(this).next();
                        ul.stop().slideToggle();
                        $(this).find("img").attr("src", img_up);
                        ul.children().click(
                                function(e) {
                                    e.stopPropagation();
                                    $(this).parent().prev().children("input")
                                            .val($(this).text());
                                    ul.stop().slideUp();
                                    $('#city').attr("src", img_down);
                                })
                    })
        }

        $(function() {
            select();
        })

        $('.tiezi-type')
                .find('li')
                .click(
                        function() {
                            var str = window.location.pathname;
                            var patt = str.indexOf('_');
                            cityname = str.slice(patt + 1, -1);
                            if ($(this).context.innerText == '出租') {
                                window.location.href = "http://www.baletu.com/roommate/findsublet_"
                                        + cityname;
                                golink = "http://www.baletu.com/roommate/findsublet_";
                            } else {
                                window.location.href = "http://www.baletu.com/roommate/ask_"
                                        + cityname;
                                golink = "http://www.baletu.com/roommate/ask_";
                            }
                        })

        var cityselect = new Vcity.CitySelector({
            citywrap : 'cityselect',
            go_link : golink,
            fix_pos : 'fixedcityselector'
        });
        $(function() {
            var QRcode = $('.sidebar-QRcode .img img');
            QRcode.attr('src', QRcode.attr('data-src'));

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


    <noscript>
        <div style="display:none;">
            <img height="1" width="1" style="border-style:none;" alt=""
                src="<%=basePath%>statics/picture/c998c5e8798f4042932569e53bfd9e4c.gif" />
        </div>
    </noscript>
</body>
</html>