<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<div class="slogan" id='slogan'>
	<div class="out">
		<ul class="clearfix">
			<li>
				<p>
					<i class="s-icon s-icon-mian"></i>
				</p>
				<h4>0元佣金</h4>
			</li>
			<li>
				<p>
					<i class="s-icon s-icon-yue"></i>
				</p>
				<h4>房租月付</h4>
			</li>
			<li>
				<p>
					<i class="s-icon s-icon-yu"></i>
				</p>
				<h4>在线预约</h4>
			</li>
			<li>
				<p>
					<i class="s-icon s-icon-zu"></i>
				</p>
				<h4>在线服务</h4>
			</li>

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
						href="/sitemap/">网站地图</a> <a href="/shequ/" target="_blank">兔社区</a>
					<a href="/tags/">tags</a>
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
		<div class="f-link">
			<dl>
				<dt>友情链接</dt>
				<dd>
					<a href="http://yanbian.lianhefangchan.com/">延边房产网</a> <a
						href="http://baike.leju.com/">乐居房产百科</a> <a
						href="http://sh.xyj321.com/">上海装修公司</a> <a
						href="http://cq.daojiale.com/">重庆房产网</a> <a
						href="http://cs.dyrs.com.cn">长沙别墅装修</a> <a
						href="http://oldhouse.wh.fdc.com.cn">武汉二手房</a> <a
						href="http://sh.qizuang.com/">上海装修网</a> <a
						href="http://www.zjjrc.com">张家界人才网</a> <a
						href="http://www.suzfang.com">苏州房产网</a> <a
						href="http://www.ouzhougoufang.com/">欧洲购房网</a> <a
						href="http://www.qihaoip.com/">专利转让</a> <a
						href="http://www.gzn001.com">硅藻泥</a> <a href="http://fz.917.com">福州房产网</a>
					<a href="/friendly/friendlyLink">友情链接申请 > </a>
				</dd>
			</dl>
		</div>
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
				alt=""> <img src="<%=basePath%>statics/picture/im_close01.png"
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
				data-rjs="//js.baletoo.cn/static/pc/images/im/fankui_mac.png" alt=""
				class="sugestion_info">
		</div> </a>
</div>