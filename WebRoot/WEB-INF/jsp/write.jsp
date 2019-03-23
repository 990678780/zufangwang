<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>租万家 发布信息帖</title>
<style type="text/css">
.publishtab tr td div.img2>p,.publishtab tr td div.img>p {
	padding-top: 20px !important;
}
</style>
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>statics/css/0a1111a1529c4f409ba4f79cf7820ee2.css" />

<script src="<%=basePath%>statics/js/common.js" type="text/javascript"></script>

<link type="text/css" href="<%=basePath%>statics/css/tejia.min.css"
	rel="stylesheet" media="all" />
<link href="<%=basePath%>statics/css/chuzu_input.css" rel="stylesheet" />

<script type="text/javascript">
        function isIE() { //ie? 
            if (window.navigator.userAgent.toLowerCase().indexOf("msie") >= 1)
                return true;
            else
                return false;
        }
        if (!isIE()) { //firefox innerText define 
            HTMLElement.prototype.__defineGetter__("innerText",
                function () {
                    var anyString = "";
                    var childS = this.childNodes;
                    for (var i = 0; i < childS.length; i++) {
                        if (childS[i].nodeType == 1)
                            anyString += childS[i].tagName == "BR" ? '\n' : childS[i].textContent;
                        else if (childS[i].nodeType == 3)
                            anyString += childS[i].nodeValue;
                    }
                    return anyString;
                }
            );
            HTMLElement.prototype.__defineSetter__("innerText",
                function (sText) {
                    this.textContent = sText;
                }
            );
        } 
    </script>
</head>
<body>
	<div class="clear"></div>
	<!--头部导航-->

	<script type="text/javascript">
    // 标红
    var url = window.location.href;
    if (typeof (PublicNav) != "undefined") {
        if (url.indexOf("office") > -1) {
            PublicNav.select('office');
        } else if (url.indexOf("shop") > -1) {
            PublicNav.select('shop');
        } else {
            PublicNav.select('zu');
        }
    }

</script>
	<script type="text/javascript" charset="utf-8"
		src="<%=basePath%>statics/js/ie8.js"></script>

	<script type="text/javascript"
		src="<%=basePath%>statics/js/jquery-1.7.2.min.js"></script>
	<!-- 用户自动登录 -->
	<script src="<%=basePath%>statics/js/autologin.js"
		type="text/javascript"></script>

	<!--<script src="<%=basePath%>statics/js/autologin.js"></script>-->


<!--统计相关-->
<script type="text/javascript">
    /*
    * 统计uv
    */
    var _dctc = _dctc || {};
    _dctc._account = _dctc._account || ['UA-24140496-1', 'UA-24830445-1', 'UA-24830823-1'];
    _dctc.bid = 13;
    try {
        if (_pageid) {
            _dctc.pageid = _pageid;
        }
    }
    catch (e) {
    }
    _dctc.isNorth = _dctc.isNorth || 'Y';
    //@*如果列表过来有channel这里不记录，如是外网过来过没有channel看listingtype有值记录*@
    var channel = getQuery('channel');
    if (channel == "" || channel == "undefined") {
        if (typeof(houseInfo) != "undefined" && houseInfo && houseInfo.listingtype && houseInfo.listingsubproducttype)
        {
            _dctc.channel = houseInfo.listingtype + "," + houseInfo.listingsubproducttype;
        }
    }
	<script src="<%=basePath%>statics/js/jquery.zoom.min.js">
		type="text/javascript"></script>
	<!--广告位新版本 宽度1200-->
	<div style="width: 1200px; margin: 10px auto;"></div>
	<div class="wrapnew">
		<div class="publishtitle wid1000">
			<h2>免费发布出租房源</h2>
		</div>
		<script>
            (function(){
                var agentlink = document.getElementById("agentlink");
                if (agentlink) {
                    agentlink.href = agentlink.href.replace("{0}","zufabu");
                }
            }())
        </script>
        <!--验证表单  -->
        <script type="text/javascript">  
            function myCheck()  
            {  
               for(var i=0;i<document.form1.elements.length-1;i++)  
               {  
                  if(document.form1.elements[i].value=="")  
                  {  
                     alert("当前表单不能有空项");  
                     document.form1.elements[i].focus();  
                     return false;  
                  } 
               }  
               return true;   	
            }  
        </script>  
        <form method="post" action="<%=basePath%>findsuble/save"  name="form1" onsubmit="return myCheck()">
			<script type="text/javascript" src="<%=basePath%>statics/js/exif.js"></script>
			<script src="<%=basePath%>statics/js/jquery.uploadify.js"></script>
			<script src="<%=basePath%>statics/js/uploadify_image.js"></script>
			<!--<script src="<%=basePath%>statics/js/uploadify_image.js"></script>-->
			<!-- 页面主体-->
			<div class="publishcon">
				<div class="publishconer" style="z-index: 99999;">
					<table cellpadding="0" cellspacing="0" border="0"
						class="publishtab" style="width: 100%;">
<script src="<%=basePath%>statics/js/uploadify_image.js"></script>
<script src="<%=basePath%>statics/js/write.js"></script>
   <!-- 页面主体-->
            <div class="publishcon">
                <div class="publishconer" style="z-index: 99999;">
                    <table cellpadding="0" cellspacing="0" border="0" class="publishtab" style="width: 100%;">       
                        <!-- 小区名称-->
                        <tbody id="tbyproj">
                            <tr>
                                <td style="width: 200px;" align="right">
                                    <strong><span class="red">*</span><span id="spInputPname">房屋住址</span></strong>
                                </td>                              
                                <td width="730">
                                    <div style="position: relative; z-index: 101;">
                                        <input name="address" type="text" id="input_PROJNAME" autocomplete="off" size="30" maxlength="30" class="txt" style="width: 305px;" placeholder="请输入房屋地址" />
                                        <div style="position: absolute; top: 36px; left: 0;">
                                            <table id="Suggestion" bgcolor="#FFFFFF" cellpadding="4" cellspacing="0" border="0"
                                                style="width: 323px; border: 1px solid rgb(204, 204, 204); position: absolute; top: -1px; display: none;">
                                                <tbody>          
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                          <!--出租方式-->
                        <tbody id="tbRentType">
                            <tr>
                                <td style="width: 200px;" align="right">
                                    <strong><span class="red">*</span>出租方式</strong>
                                </td>
                                <td style="width: 200px;" align="left">
                                <input type="radio"  name="type" value="2"/>合租&nbsp;&nbsp;
                                <input type="radio"  name="type" value="3"/>转租&nbsp;&nbsp;
                                <input type="radio"  name="type" value="4"/>求租&nbsp;&nbsp;
                                </td>
                                </td>
                            </tr>
                        </tbody>		
                            <!--租金-->
                            <tr>
                                <td align="right" style="width: 200px;">
                                    <strong><span class="red">*</span>租金</strong>
                                </td>
                                <td>
                                    <input name="price" type="text" id="input_PRICE" size="10" style="width: 70px" maxlength="6" num="价格只能是数字" class="txt floatl" onkeypress="Common.IsNum(event)" />
                                    <font color="red"></font>
                                    <p class="floatl">
                                        <span class="mlr10 font14 gray6" style="line-height: 37px">元/月</span>
                                    </p>
                                   </td>
                                   </tr>
                        <!--房源标题描述等公共基本信息-->
                        <tbody id="tbcommon">
                            <!--房源标题-->
                            <tr>
                                <td style="width: 200px;" align="right">
                                    <strong><span class="red">*</span>房源标题</strong>
                                </td>
                                <td>
                                    <input name="title" type="text" id="input_TITLE" class="txt" style="width: 487px;" onblur="if(this.value==&#39;&#39;) this.value=&#39;吸引人的标题可以更快的促进交易哦！&#39;;" onfocus="if(this.value==&#39;吸引人的标题可以更快的促进交易哦！&#39;) this.value=&#39;&#39;;" />
                                    <font color="red"></font>
                                    <span id="sp_title" style="color: Red"></span>
                                </td>
                            </tr>
                            <!--房源描述-->
                            <tr id="DESCRIPTION_rent">
                                <td align="right" valign="top" style="width: 200px;">
                                    <strong><span class="red">*</span>房源描述</strong>
                                </td>
                                <td style="width: 600px;">
                                    <div class="a_sec">
                                         <span class="case_text_tit rel">查看描述案例
                                        <dl class="case_text">
                                            <dt>案例文本：</dt>
                                            <dd>高档、环境优美的小区房，绿化好，24小时保安值班，电梯房。</dd>
                                            <dd>房间：家具家电齐全，装修配置齐全，即可拎包入住。</dd>
                                            <dd>周边：有物美、家乐福，肯德基、国美商厦，生活，购物方便。</dd>
                                            <dd>交通：步行3分钟到一号线地铁口，10分钟到公主坟、马莲道公交。</dd>
                                        </dl>
                                        </span>
                                        <script type="text/javascript">
                                            //描述案例
                                            jQuery(document).ready(function () {
                                                jQuery(".case_text_tit").click(function () {
                                                    jQuery(".case_text").toggle();
                                                });
                                                jQuery("#createdes").click(function () {

                                                    var procodeid = jQuery("#input_PROJCODE").val();
                                                    if (procodeid!="" && procodeid!="-2") {
                                                        var adressstr = jQuery("#sp_districtcomarea").html();
                                                        var sel_roomstr = jQuery("#sel_room").val();
                                                        var sel_hallstr = jQuery("#sel_hall").val();
                                                        var sel_wcstr = jQuery("#sel_wc").val();
                                                        var peitaostr = "";
                                                        if (jQuery("#sbzz").find("input[type=checkbox]:checked")) {
                                                            peitaostr = jQuery.map(jQuery("#sbzz input[type=checkbox]:checked"), function (obj) {
                                                                return obj.value;
                                                            }).join(",");
                                                        }
                                                        //gongjiao
                                                        var input_TRAFFICINFO = jQuery("#input_TRAFFICINFO").val();
                                                        //zhoubian
                                                        var input_AROUNDCONDITION = jQuery("#input_AROUNDCONDITION").val();
                                                        var insertstr = "";
                                                        insertstr += "房子在" + projname + "小区,环境优美,绿化充足,<p>";
                                                        insertstr += "位于" + adressstr + ",入住即与精英为邻;<p>"
                                                        if (sel_roomstr && sel_hallstr && sel_wcstr) {
                                                            insertstr += "该房" + sel_roomstr + "室," + sel_hallstr + "厅," + sel_wcstr + "卫户型,<p>";
                                                        }
                                                        if (peitaostr != "") {
                                                            insertstr += "房间配套有" + peitaostr + ",<p>";
                                                        }
                                                        insertstr += "交通便利,附近的" + input_TRAFFICINFO + ",<p>";
                                                        insertstr += "小区周边配套设施齐全," + input_AROUNDCONDITION + ";";
                                                        editor.html(insertstr);
                                                    }
                                                    else {
                                                        alert("请使用楼盘字典中的楼盘，否则不能自动生成描述");
                                                    }
                                                })
                                            });
                                        </script>
										</div> <textarea name="discripe" id="input_DESCRIPTION" class="txt"
											style="width: 487px; height: 50px;"
											placeholder="可输入房间描述、小区环境、周边配套、对合租者的要求等信息"></textarea> <span
										id="sp_desc" style="color: Red"></span> <br /> <span
										id="Limword">如果输入内容出现新广告法中的违禁词，违禁词将以*代替。</span></td>
								</tr>

								<tr>
									<td align="right" style="width: 200px;"></td>
									<td align="left" width="600"><input type="submit"
										id="lbtnInput1" class="public_confirm mr20" value="确定发布"></input>
									</td>
								</tr>
							</tbody>
					</table>
					</form>
				</div>
			</div>
			
	<!--弹出层部分-->
	<popup element="divpup_pic" fade="false" modal="true"></popup>
	<div id="divup_box" style="display: none; border: 1px #BFE0F9 solid;">
		<table border="0" cellpadding="0" cellspacing="10" bgcolor="#dddddd">
			<tr>
				<td style="width: 361px">
					<table width="360" border="0" align="center" cellpadding="0"
						cellspacing="0" class="dbox">
						<tr>
							<th width="313" style="text-align: left;">您好：</th>
							<th width="45" align="right" valign="top"><a
								href="javascript:void(0);"
								onclick="window.document.popups['divup_box'].close();"> <img
									src="<%=basePath%>statics/picture/icon_close.gif" />
							</a></th>
						</tr>
						<tr>
							<td colspan="2" class="orange"><span id="sp_Msg">很抱歉，您输入了敏感的词汇，请修改后再提交。谢谢！</span>
							</td>
						</tr>
						<tr>
							<td colspan="2"><input name="按钮2" type="button"
								class="btn_close"
								onclick="window.document.popups['divup_box'].close();"
								value="关闭本窗口" /></td>
						</tr>
						<tr>
							<td height="20" colspan="2"></td>
						</tr>
					</table></td>
			</tr>
		</table>
	</div>
	<popup element="divup_box" fade="false" modal="true"></popup>
                        </span>
                    </p>
                    <div class="clear">
                    </div>
                </div>
            </div> 
        <div class="clear">
        </div>
        <div id="divpup_pic" style="display: none; border: 1px #BFE0F9 solid; width: 600px;">
            <div class="headerjb2">
                <div style="display: inline; width: 600px; text-align: left; float: left; font-size: 14px;"
                    id="selectimghead">
                </div>
            </div>
            <iframe id="frmpup_pic" src="" frameborder="0" scrolling="no" width="600px" height="320px"></iframe>
        </div>
    </div>
    <!--弹出层部分-->
    <popup element="divpup_pic" fade="false" modal="true"></popup>
    <div id="divup_box" style="display: none; border: 1px #BFE0F9 solid;">
        <table border="0" cellpadding="0" cellspacing="10" bgcolor="#dddddd">
            <tr>
                <td style="width: 361px">
                    <table width="360" border="0" align="center" cellpadding="0" cellspacing="0" class="dbox">
                        <tr>
                            <th width="313" style="text-align: left;">您好：
                            </th>
                            <th width="45" align="right" valign="top">
                                <a href="javascript:void(0);" onclick="window.document.popups['divup_box'].close();">
                                    <img src="<%=basePath%>statics/picture/icon_close.gif" /></a>
                            </th>
                        </tr>
                        <tr>
                            <td colspan="2" class="orange">
                                <span id="sp_Msg">很抱歉，您输入了敏感的词汇，请修改后再提交。谢谢！</span>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <input name="按钮2" type="button" class="btn_close" onclick="window.document.popups['divup_box'].close();"
                                    value="关闭本窗口" />
                            </td>
                        </tr>
                        <tr>
                            <td height="20" colspan="2"></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    <popup element="divup_box" fade="false" modal="true"></popup>
	<!--bottom begin-->
	<link href="<%=basePath%>statics/css/footer.min.css" rel="stylesheet"
		type="text/css" />
	<script src="<%=basePath%>statics/js/footer.js" type="text/javascript"></script>
	<script src="<%=basePath%>statics/js/support.fqa.js"
		type="text/javascript"></script>
	<!--bottom end-->
	<script id="__vb" src="<%=basePath%>statics/js/_vb.js"
		type="text/javascript"></script>
	<script type="text/javascript" src="<%=basePath%>statics/js/_ub.js"></script>
	<script src="<%=basePath%>statics/js/smslogin.js"></script>
	<script src="<%=basePath%>statics/js/mobile_validate.js"></script>
	<script type="text/javascript"
		src="<%=basePath%>statics/js/kindeditor.js"></script>
	<script type="text/javascript"
		src="<%=basePath%>statics/js/kindeditorextens.js"></script>
	<script type="text/javascript" src="<%=basePath%>statics/js/zh_cn.js"
		charset="utf-8"></script>
	<script type="text/javascript"
		src="<%=basePath%>statics/js/root.popup_new.js"></script>
	<script src="<%=basePath%>statics/js/rent_suggest.js"></script>
	<script src="<%=basePath%>statics/js/rent_input.js"
		type="text/javascript"></script>
	<script src="<%=basePath%>statics/js/wximgupload.js"></script>
	<div id="sel_housetype"></div>
	<div style="display: none;" id="popOut1" class="popOut1">
		<p class="mask3_1"></p>
	</div>
	<script src="<%=basePath%>statics/js/app.js" charset="uft-8"></script>
	<script src="<%=basePath%>statics/js/baidubce-sdk.bundle.min.js"
		type="text/javascript"></script>
	<script src="<%=basePath%>statics/js/baiduvideoupload.js"
		type="text/javascript"></script>
</body>
</html>
