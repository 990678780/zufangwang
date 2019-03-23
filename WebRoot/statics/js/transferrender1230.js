/**
 * Created with WebStorm.
 * Author: qiang.niu(http://www.siptea.cn)
 * Date: 2015/6/30 11:35
 */
if (typeof(Lib) == "undefined") {
	Lib = {};
}
Lib.AMap = Lib.AMap || {};
Lib.AMap.TransferRender = function() {
	var me = this;
	//me.author="qiang.niu(http://www.siptea.cn)";
	me._currentPlanTitle = null; //当前打开的换乘方案标题div
	me._currentPlanOptenitem = null; //当前打开的换乘方案内容div
	me.autoRender = function(options) { //options.map otpions.panel options.data
		me.clear();
		if (!options || !options.data || (!options.panel && !options.map)) {
			return;
		}
		options.data.start = options.data.start || {
			location: options.data.origin,
			name: "起点"
		};
		options.data.end = options.data.end || {
			location: options.data.destination,
			name: "终点"
		};
		options.data.start.type = "start";
		options.data.end.type = "end";
		this.options = options; //保存用户输入的参数
		this.hideMarkers = options['hideMarkers'] || false;
		if (options.map) {
			this._infoWindow = new AMap.InfoWindow({ //点的信息窗体
				size: new AMap.Size(0, 0),
				isCustom: true,
				offset: new AMap.Pixel(0, -30)
			});
			this._overlays = []; //线路
			this._planRoute = []; //鼠标划过换乘方案时绘制的半透明线
			this._highlightOverlay = null; //高亮线路
			if (!options.panel) { //如果传入了panel,在生成panel时会默认绘制第一个换乘方案，所以在这里就不绘制了
				this.drawPlanOverlays(0); //默认绘制第一个换乘方案
			}
		}
		if (options.panel) {
			if (Object.prototype.toString.call(options.panel) == '[object String]') {
				options.panel = document.getElementById(options.panel);
			}
			options.panel.innerHTML = this.view.createPanel(options.data);
			this.enableListeners();
		}

	}
	me.clear = function() {
		this.clearPanel();
		this.clearOverlays();
	};
	me.drawPlanRoute = function(index) { //绘制某个换乘方案的线路图（只画起始点到结束点之间的半透明线），index:换乘方案索引
		var data = this.options.data,
			plan = data.plans[index];
		var distance = plan.distance,
			segments = plan.segments;
		var walkPaths = [],
			busPaths = [],
			railwayPaths = [];
		for (var i = 0, segment; i < segments.length; i++) {
			segment = segments[i];
			if (segment.transit_mode == "WALK") {
				walkPaths.push(segment.transit.path);
			} else if (segment.transit_mode == "BUS" || segment.transit_mode == "SUBWAY") {
				busPaths.push(segment.transit.path);
				//busPaths=busPaths.concat(segment.transit.path);
			} else if (segment.transit_mode == "RAILWAY") {
				railwayPaths.push([segment.transit.departure_stop.location, segment.transit.arrival_stop.location]);
			} else if (segment.transit_mode == "TAXI") {
				railwayPaths.push([segment.transit.origin, segment.transit.destination]);
			}
		}
		/*        if(busPaths.length>0){
		 busPaths=[busPaths];
		 }*/
		this.clearPlanRoute();
		this._planRoute = this.addOverlays([], walkPaths, busPaths, railwayPaths, {
			strokeOpacity: 0.4
		});
	}
	me.clearPlanRoute = function() {
		if (this._planRoute) {
			for (var i = 0; i < this._planRoute.length; i++) {
				this._planRoute[i].setMap(null);
			}
			this._planRoute = [];
		}
	}
	me.drawPlanOverlays = function(index) { //绘制某个换乘方案的线路图，index:换乘方案索引
		var data = this.options.data,
			plan = data.plans[index];
		var distance = plan.distance,
			segments = plan.segments;
		var walkPaths = [],
			busPaths = [],
			points = [],
			railwayPaths = [];
		points.push(data.start);
		for (var i = 0, segment; i < segments.length; i++) {
			segment = segments[i];
			if (segment.transit_mode == "METRO_RAIL") {
				segment.transit_mode = "SUBWAY";
			}
			if (segment.transit_mode == "WALK") {
				walkPaths.push(segment.transit.path);
			} else if (segment.transit_mode == "BUS" || segment.transit_mode == "SUBWAY") {
				busPaths.push(segment.transit.path);
				//busPaths=busPaths.concat(segment.transit.path);
				segment.transit.on_station.segment = segment;
				segment.transit.off_station.segment = segment;
				points.push(segment.transit.on_station);
				points.push(segment.transit.off_station);
			} else if (segment.transit_mode == "RAILWAY") {
				railwayPaths.push([segment.transit.departure_stop.location, segment.transit.arrival_stop.location]);
				segment.transit.departure_stop.segment = segment;
				segment.transit.arrival_stop.segment = segment;
				points.push(segment.transit.departure_stop);
				points.push(segment.transit.arrival_stop);
			} else if (segment.transit_mode == "TAXI") {
				railwayPaths.push([segment.transit.origin, segment.transit.destination]);
			}
		}
		points.push(data.end);
		this.clearOverlays();
		/* if(busPaths.length>0){
		 busPaths=[busPaths];
		 }*/
		this._overlays = this.addOverlays(points, walkPaths, busPaths, railwayPaths);
		me.options.map.setFitView(this._overlays);
	}
	me.addOverlays = function(points, walkPaths, busPaths, railwayPaths, styleOptions) {
		var map = this.options.map;
		styleOptions = styleOptions || {
			strokeOpacity: 1
		}
		var _overlays = [];
		if (!this.hideMarkers) {
			if (points[0]) {
				//绘制起点
				var start = new AMap.Marker({
					map: map,
					position: points[0].location, //基点位置
					content: '<div class="amap-lib-marker-from"></div>'
				});
				start.isOfficial = true;
				start._data = points[0];
				AMap.event.addListener(start, "click", this.listener.markerClick);
				_overlays.push(start);
			}
			if (points.length > 1) {
				//绘制终点
				var end = new AMap.Marker({
					map: map,
					position: points[points.length - 1].location, //基点位置
					content: '<div class="amap-lib-marker-to"></div>'
				});
				end.isOfficial = true;
				end._data = points[points.length - 1];
				AMap.event.addListener(end, "click", this.listener.markerClick);
				_overlays.push(end);
			}

			for (var i = 1, point; i < points.length - 1; i++) { //绘制途经点
				var transit_mode = points[i].segment.transit_mode.toLowerCase();
				point = new AMap.Marker({
					map: map,
					position: points[i].location, //基点位置
					content: '<div class="amap-lib-marker-stop amap-lib-marker-bus-' + transit_mode + 'Stop"></div>',
					offset: {
						x: -12,
						y: -12
					} //相对于基点的位置
				});
				point.isOfficial = true;
				point._data = points[i];
				AMap.event.addListener(point, "click", this.listener.markerClick);
				_overlays.push(point);
			}
		}

		//绘制乘车的路线
		for (var i = 0, busPath; i < busPaths.length; i++) {
			busPath = new AMap.Polyline({
				map: map,
				path: busPaths[i],
				lineJoin: 'round',
				strokeColor: "#0091ff", //线颜色
				strokeOpacity: styleOptions.strokeOpacity, //线透明度
				strokeWeight: 6 //线宽
			});
			busPath.isOfficial = true;
			_overlays.push(busPath);
		}
		//绘制火车发站与到站之间的线
		for (var i = 0, railwayPath; i < railwayPaths.length; i++) {
			railwayPath = new AMap.Polyline({
				map: map,
				path: railwayPaths[i],
				strokeColor: "gray", //线颜色
				strokeStyle: "dashed",
				strokeOpacity: styleOptions.strokeOpacity, //线透明度
				strokeWeight: 4 //线宽
			});
			railwayPath.isOfficial = true;
			_overlays.push(railwayPath);
		}
		//绘制步行的路线
		for (var i = 0, walkPath; i < walkPaths.length; i++) {
			walkPath = new AMap.Polyline({
				map: map,
				path: walkPaths[i],
				strokeColor: "gray", //线颜色
				strokeStyle: "dashed",
				strokeOpacity: styleOptions.strokeOpacity, //线透明度
				strokeDasharray: [10, 10],
				strokeWeight: 6 //线宽

			});
			walkPath.isOfficial = true;
			_overlays.push(walkPath);
		}
		return _overlays;
	}
	me.clearPanel = function() {
		if (this.options && this.options.panel) {
			this.options.panel.innerHTML = '';
		}
	}
	me.clearOverlays = function() {
		if (this._overlays) {
			for (var i = 0, overlay; i < this._overlays.length; i++) {
				overlay = this._overlays[i];
				overlay.setMap(null);
			}
			this._overlays = [];
		}
		if (this._infoWindow) {
			this._infoWindow.close();
		}
		if (this._highlightOverlay) {
			this._highlightOverlay.setMap(null);
			this._highlightOverlay = null;
		}
		this.clearPlanRoute();
	}
	me.getTitle = function(segments) { //解析出标题
		var lineNameArr = new Array();
		var lineName;
		for (var j = 0; j < segments.length; j++) {
			var segment = segments[j],
				mode = segment.transit_mode;
			if (mode == "WALK") {} else if (mode == "BUS" || mode == "SUBWAY") {
				lineName = segment.transit.lines[0].name;
				lineName = lineName.replace(/\(.+\)/g, "");
				var lineNum = "";
				if (mode == "SUBWAY") {
					lineNum = me.getLineNum(lineName);
				}
				lineNameArr.push("<span class=\"line " + mode.toLowerCase() + "line " + lineNum + "\"><span class='beforespan'></span><span class='afterspan'></span>" + lineName + "</span>");
			} else if (mode == "RAILWAY") {
				lineName = segment.transit.name;
				lineNameArr.push("<span class=\"line " + mode.toLowerCase() + "line \"><span class='beforespan'></span><span class='afterspan'></span>" + lineName + "</span>");
			}
		}
		return lineNameArr.join("");
	}
	me.getLineNum = function(lineName) {
		var numArray = lineName.match(/[\d]+/);
		if (numArray && numArray.length != 0) {
			return "subwayline" + numArray[0];
		};
		var subwayNameObj = {
			"bt": "八通线",
			"fs": "房山线",
			"yz": "亦庄线",
			"cp": "昌平线",
			"jc": "机场线",
			"xj": "西郊线"
		};
		for (var i in subwayNameObj) {
			if (lineName.indexOf(subwayNameObj[i]) != -1) {
				return "subwayline" + i;
			}
		}
		return "";
	}
	me.util = {};
	me.util.getDistance = function(len) { //距离，米换算为千米
		if (len <= 1000) {
			var s = len;
			return s + "米";
		} else {
			var s = Math.round(len / 10);
			return "" + s / 100 + "公里";
		}
	}
	me.util.getTime = function(second) { //距离，米换算为千米
		var minute = (second / 60).toFixed(0);
		if (minute < 60) {
			return "" + minute + "分钟";
		} else {
			return "" + Math.floor(minute / 60) + "小时" + (minute % 60) + "分钟";
		}
	}
	me.util.formatTime = function(time) { //格式化时间
		time = "" + time;
		return time.replace(/(.{2})$/, ":$1");
	}
	me.util.domstr2dom = function(arg) {
			var objE = document.createElement("div");
			objE.innerHTML = arg;
			return objE;
		}
		/**
		 * 根据类名获得元素
		 * 参数说明:
		 *      1、className 类名
		 *      2、tag 元素名 默认所有元素
		 *      3、parent 父元素 默认doucment
		 */
	me.util.getElementsByClassName = function(className, tag, parent) {
		var testClass = new RegExp("(^|\\s)" + className + "(\\s|$)");
		//var testClass = new RegExp("(\w|\s)*" + className + "(\w|\s)*");
		var tag = tag || "*";
		var parent = parent || document;
		var elements = parent.getElementsByTagName(tag);
		var returnElements = [];
		for (var i = 0, current; i < elements.length; i++) {
			current = elements[i];
			if (testClass.test(current.className)) {
				returnElements.push(current);
			}
		}
		return returnElements;
	}
	me.enableListeners = function() { //注册乘车方案点击事件、乘车方案mouseover事件、乘车路段点击事件
		var unfocusTitles = this.util.getElementsByClassName("planTitle", "div", me.options.panel);
		for (var i = 0, unfocusTitle; i < unfocusTitles.length; i++) {
			unfocusTitle = unfocusTitles[i];
			AMap.event.addDomListener(unfocusTitle, "click", this.listener.unfocusTitleClick); //乘车方案点击事件
			AMap.event.addDomListener(unfocusTitle, "mouseenter", this.listener.unfocusTitleMouseenter); //乘车方案点击事件
			AMap.event.addDomListener(unfocusTitle, "mouseleave", this.listener.unfocusTitleMouseleave); //乘车方案点击事件
		}

		var c_divs = this.util.getElementsByClassName("*", "dt", me.options.panel);
		for (var i = 0, c_div; i < c_divs.length; i++) {
			c_div = c_divs[i];
			AMap.event.addDomListener(c_div, "click", this.listener.busRouteStep); //乘车路段点击事件
		}
		if (unfocusTitles.length > 0) {
			me.listener.unfocusTitleClick.call(unfocusTitles[0]); //默认打开第一个乘车方案
		}
		var viaDivs = this.util.getElementsByClassName("icon-arrow", "a", me.options.panel);
		for (var i = 0, viaDiv; i < viaDivs.length; i++) {
			viaDiv = viaDivs[i];
			AMap.event.addDomListener(viaDiv, "click", this.listener.viaDivClick); //途经站链接的点击事件
		}
	}
	me.listener = {};
	me.listener.viaDivClick = function() { //展开或关闭途经点
		var parentNode = this.parentNode;
		var ul = me.util.getElementsByClassName("*", "ul", parentNode)[0];
		if (ul.style.display == "none" || ul.style.display == "") {
			ul.style.display = "block";
			this.className = "icon-arrow expand";
		} else {
			ul.style.display = "none";
			this.className = "icon-arrow";
		}
	}
	me.listener.markerClick = function() {
		var data = this._data;
		/*    var content=[];
		 if(data.segment){//data.segment.transit_mode=='SUBWAY'||data.segment.transit_mode=='BUS'
		 var onStation=data.segment.transit.on_station.name,
		 offStation=data.segment.transit.off_station.name;
		 if(data.name==onStation){
		 content.push(data.name+" -- 上车<br>");
		 }
		 if(data.name==offStation){
		 content.push(data.name+" -- 下车<br>");
		 }
		 content.push(data.segment.transit.lines[0].name+"<br>");
		 content.push("出发点："+onStation+"<br>");
		 content.push("到达点："+offStation+"<br>");
		 }else{
		 content.push(data.name+"<br>");
		 }*/
		if (data.type == 'start' || data.type == 'end') {
			me._infoWindow.setOffset(new AMap.Pixel(0, -30));
		} else {
			me._infoWindow.setOffset(new AMap.Pixel(0, -11));
		}
		if (data.name == '起点' || data.name == '终点') {

		} else {
			if (data.type == 'start' || data.type == 'end') {
				me._infoWindow.setOffset(new AMap.Pixel(0, -30));
			} else {
				me._infoWindow.setOffset(new AMap.Pixel(0, -11));
			}
			me._infoWindow.setContent(me.view.createInfowindowContent(data));
			me._infoWindow.open(me.options.map, this.getPosition());
		}

		me.options.map.setCenter(this.getPosition());
	}
	me.listener.busRouteStep = function() { //点击换乘路段时，负责高亮显示此路段并且自动调整地图视野
		if (me._highlightOverlay) {
			me._highlightOverlay.setMap(null);
		}
		//得到换乘段索引号
		var segmentIndex = this.getAttribute("index"); //换乘段索引号
		if (segmentIndex == "start") { //如果点击的是起始点
			me.listener.markerClick.call({
				_data: me.options.data.start,
				getPosition: function() {
					return me.options.data.start.location
				}
			})
			return;
		}
		if (segmentIndex == "end") { //如果点击的是结束点
			me.listener.markerClick.call({
				_data: me.options.data.end,
				getPosition: function() {
					return me.options.data.end.location
				}
			})
			return;
		}
		me._infoWindow.close();
		var segment = me.options.data.plans[me._currentPlanIndex].segments[segmentIndex];
		var highlight;
		if (segment.transit_mode == "SUBWAY" || segment.transit_mode == "BUS") {
			highlight = new AMap.Polyline({
				map: me.options.map,
				path: segment.transit.path,
				strokeColor: "red", //线颜色
				strokeOpacity: 0.8, //线透明度
				strokeWeight: 6 //线宽
			});
		} else if (segment.transit_mode == "RAILWAY") {
			highlight = new AMap.Polyline({
				map: me.options.map,
				path: [segment.transit.departure_stop.location, segment.transit.arrival_stop.location],
				strokeColor: "red", //线颜色
				strokeStyle: "dashed",
				strokeOpacity: 0.6, //线透明度
				strokeWeight: 4 //线宽

			});
		} else if (segment.transit_mode == "TAXI") {
			highlight = new AMap.Polyline({
				map: me.options.map,
				path: [segment.transit.origin, segment.transit.destination],
				strokeColor: "red", //线颜色
				strokeStyle: "dashed",
				strokeOpacity: 0.6, //线透明度
				strokeWeight: 4 //线宽

			});
		} else if (segment.transit_mode == "WALK") {
			highlight = new AMap.Polyline({
				map: me.options.map,
				path: segment.transit.path,
				strokeColor: "red", //线颜色
				strokeStyle: "dashed",
				strokeOpacity: 0.6, //线透明度
				strokeDasharray: [10, 10],
				strokeWeight: 6 //线宽

			});
		}
		if (highlight) {
			highlight.isOfficial = true;
		}
		me._highlightOverlay = highlight;
		me.options.map.setBounds(highlight.getBounds());
	}
	me.listener.busTitleClick = function() { //点击展开的div标题时，收起此div
		me._currentPlanTitle.style.display = "block";
		me._currentPlanOptenitem.style.display = "none";
		me.clearOverlays();
	}
	me.listener.unfocusTitleClick = function() { //点击各乘车方案时，负责div的展开与关闭,并调用地图绘制方法
		var target = arguments[0] && (arguments[0].target || arguments[0].srcElement);
		if (target && target.tagName == "A") {
			return;
		}
		if (me._currentPlanTitleStatus == "open" && me._currentPlanTitle == this) { //如果已经打开并且点击的是打开的，则关闭
			me.view.closeCurrentPlanDiv();
			me.clearOverlays();
		} else if (me._currentPlanTitleStatus == "open") { //如果已经打开并且点击的是其它换乘方案，则关闭原来的打开新的
			me.view.closeCurrentPlanDiv();
			me.view.openPlanDiv(this);
		} else { //否则打开
			me.view.openPlanDiv(this);
		}
	}
	me.listener.unfocusTitleMouseenter = function(e) {
		var index = this.getAttribute("index");
		me.drawPlanRoute(index);

		me.listener.unfocusTitleMouseenter.last = this;
	}
	me.listener.unfocusTitleMouseleave = function(e) {
		me.clearPlanRoute();
	}
	me.view = {}; //创建dom结构类的方法
	me.view.openPlanDiv = function(planDiv) { //打开一个新的换乘方案panel
		me._currentPlanTitle = planDiv;
		me._currentPlanOptenitem = planDiv.nextSibling;
		me.util.getElementsByClassName('icon-arrow-up', 'div', me._currentPlanTitle)[0].className = "icon-arrow-up expand";
		if (me.util.getElementsByClassName('clearfix', 'ul', me._currentPlanTitle)[0]) {
			me.util.getElementsByClassName('clearfix', 'ul', me._currentPlanTitle)[0].style.display = "inline-block";
		}
		me._currentPlanOptenitem.style.display = "block";
		me._currentPlanTitleStatus = "open";

		var index = me._currentPlanTitle.getAttribute("index");
		me._currentPlanIndex = index; //记录当前换乘方案索引号
		if (me.options.map) {
			me.drawPlanOverlays(me._currentPlanIndex);
		}
	}
	me.view.closeCurrentPlanDiv = function() { //关闭当前打开的换乘方案panel
		var title = me.util.getElementsByClassName('icon-arrow-up expand', 'div', me._currentRouteTitle)[0];
		var fix = me.util.getElementsByClassName('clearfix', 'ul', me._currentRouteTitle)[0];
		if (title) {
			title.className = "icon-arrow-up";
		}
		if (fix) {
			fix.style.display = "none";
		}
		me._currentPlanOptenitem.style.display = "none";
		me._currentPlanTitleStatus = "close";
	}
	me.view.createInfowindowContent = function(data) { //创建起始点、终止点、途经点infowindow的内容

		var content = document.createElement('div');
		var div = document.createElement('div');
		div.className = 'amap-content-body';

		var c = [];
		if (data.segment && (data.segment.transit_mode == 'SUBWAY' || data.segment.transit_mode == 'BUS')) {
			var onStation = data.segment.transit.on_station.name,
				offStation = data.segment.transit.off_station.name,
				stationNum = data.segment.transit.via_num,
				type = data.segment.transit_mode.toLowerCase();
			var name;
			if (data.name == onStation) {
				name = data.name + " -- 上车<br>";
			}
			if (data.name == offStation) {
				name = data.name + " -- 下车<br>";
			}
			c.push('<div class="amap-lib-iw-content amap-lib-iw-bus">');
			c.push('    <div class="amap-lib-curr-place">' + name + '</div>');
			c.push('    <div class="amap-lib-drive-route-description-box">');
			c.push('        <div class="amap-lib-bus-route-item">');
			c.push('            <div style="cursor:default" class="amap-lib-marker-stop amap-lib-marker-bus-' + type + 'Stop"></div>');
			c.push('            <div class="amap-lib-transport-step">');
			c.push('                <div class="amap-lib-name_direc">');
			c.push('                    <div title="' + data.segment.transit.lines[0].name + '">' + data.segment.transit.lines[0].name + '</div>');
			c.push('                </div>');
			c.push('                <div class="amap-lib-step-detail">');
			c.push('                    <div class="amap-lib-step-from">出发点：<span>' + onStation + '</span></div>');
			c.push('                    <div class="amap-lib-step-to">到达点：<span>' + offStation + '</span>(' + (stationNum + 1) + '站)</div>');
			c.push('                </div>');
			c.push('            </div>');
			c.push('        </div>');
			c.push('    </div>');
			c.push('</div>');
		} else if (data.segment && (data.segment.transit_mode == 'RAILWAY')) {
			var onStation = data.segment.transit.departure_stop.name,
				offStation = data.segment.transit.arrival_stop.name,
				desc = me.util.getDistance(data.segment.transit_distance) + "," + me.util.getTime(data.segment.time),
				type = data.segment.transit_mode.toLowerCase();
			var name;
			if (data.name == onStation) {
				name = data.name + " -- 上车<br>";
			}
			if (data.name == offStation) {
				name = data.name + " -- 下车<br>";
			}
			c.push('<div class="amap-lib-iw-content amap-lib-iw-bus">');
			c.push('    <div class="amap-lib-curr-place">' + name + '</div>');
			c.push('    <div class="amap-lib-drive-route-description-box">');
			c.push('        <div class="amap-lib-bus-route-item">');
			c.push('            <div style="cursor:default" class="amap-lib-marker-stop amap-lib-marker-bus-' + type + 'Stop"></div>');
			c.push('            <div class="amap-lib-transport-step">');
			c.push('                <div class="amap-lib-name_direc">');
			c.push('                    <div title="' + data.segment.transit.name + '">' + data.segment.transit.name + '</div>');
			c.push('                </div>');
			c.push('                <div class="amap-lib-step-detail">');
			c.push('                    <div class="amap-lib-step-from">出发点：<span>' + onStation + '</span></div>');
			c.push('                    <div class="amap-lib-step-to">到达点：<span>' + offStation + '</span>(' + desc + ')</div>');
			c.push('                </div>');
			c.push('            </div>');
			c.push('        </div>');
			c.push('    </div>');
			c.push('</div>');
		} else {

			var c = [];
			c.push('<div class="amap-lib-infowindow">');
			c.push('    <div class="amap-lib-infowindow-title">' + data.name + '&nbsp;<a href=\"http://detail.amap.com/detail/' + data.id + '?spm=0.0.0.0.sWhSmy&citycode=' + data.citycode + '\" target=\"_blank\">详情»</a></div>');
			c.push('    <div class="amap-lib-infowindow-content">');
			c.push('        <div class="amap-lib-infowindow-content-wrap">');
			c.push('             <div>地址：' + data.address + '</div>');
			if (data.tel) {
				c.push('             <div>电话：' + data.tel + '</div>');
			}
			c.push('        </div>');
			c.push('    </div>');
			c.push('</div>');

		}
		div.innerHTML = c.join('');

		var sharp = document.createElement('div');
		sharp.className = 'amap-combo-sharp';
		div.appendChild(sharp);

		var close = document.createElement('div');
		close.className = 'amap-combo-close';
		div.appendChild(close);
		close.href = 'javascript: void(0)';
		AMap.event.addDomListener(close, 'touchend', function(e) {
			me._infoWindow['close']();
		}, this);
		AMap.event.addDomListener(close, 'click', function(e) {
			me._infoWindow['close']();
		}, this);
		content.appendChild(div);
		content.appendChild(close);
		content.appendChild(sharp);
		return content;
	}
	me.view.createPanel = function(data) { //根据服务插件AMap.Transfer的返回结果，生成panel
		if (!data.plans) {
			return "<div class='amap-lib-transfer'>抱歉，没有合适的路线。</div>";
		}
		var result = [];
		result.push("<div class='amap-lib-transfer'>");
		for (var i = 0, plan; i < data.plans.length; i++) {
			plan = data.plans[i];
			var distance = plan.distance,
				segments = plan.segments,
				//isDisplay=i==0?true:false,//默认打开第一个乘车方案
				isDisplay = false,
				title = me.getTitle(segments);

			result = result.concat(me.view.createTitleDiv(i, title, plan, !isDisplay));
			result = result.concat(me.view.createOpenitemDiv(i, title, data, isDisplay));
		}
		result.push("</div>");
		return result.join("");
	}
	me.view.createTitleDiv = function(index, title, plan, isDisplay) { //创建标题div
		if (isDisplay) {
			isDisplay = "block";
		} else {
			isDisplay = "none";
		}
		var r = [];
		r.push("<div class=\"planTitle\" index=\"" + index + "\">");
		r.push("    <h3>");
		r.push("       " + title);
		r.push("    </h3>");
		r.push("    <p>" + me.util.getTime(plan.time) + "(" + me.util.getDistance(plan.transit_distance) + ") | 步行" + me.util.getDistance(plan.walking_distance) + " | <span class=\"red\">" + plan.cost + "元</span></p>");
		//http://www.amap.com/?r=sy,sx,sname,dy,dx,dname,m,t,mcount,my,mx,mname
		var d = me.options.data;
		if (d.start.name !== '起点' && d.end.name !== '终点') {
			var p = [];
			p.push(d.start.location.lat);
			p.push(d.start.location.lng);
			p.push(d.start.name);
			p.push(d.end.location.lat);
			p.push(d.end.location.lng);
			p.push(d.end.name);
			p.push("5"); //m
			p.push("1") //t:驾车是'0'.公交是'1'.步行是'2'
			p.push("0");
			r.push("	<ul class=\"clearfix\">");
			r.push("<li><a target='_blank' class=\"blue\" href=\"http://www.amap.com/?r=" + p.join(",") + "\"><span class='aftera'></span>在高德地图中查看</a></li>");
			r.push("	</ul>");
		}
		r.push("    <div class=\"sidebar\">");
		r.push("        <div class=\"icon-arrow-up\" href=\"javascript:void(0)\"><span class='aftera'></span></div>");
		r.push("    </div>");
		r.push("</div>");
		return r;
	}
	me.view.createOpenitemDiv = function(index, title, data, isDisplay) { //创建打开的div
			if (isDisplay) {
				isDisplay = "block";
			} else {
				isDisplay = "none";
			}
			var plan = data.plans[index],
				segments = plan.segments;
			var r = [];
			r.push("<dl class=\"plan\">");
			r.push("    <dt class=\"busstop start\" index=\"start\"><div class='beforedt'></div><div class='afterdt'></div>" + data.start.name + "</dt>");
			for (var i = 0, segment; i < segments.length; i++) {
				segment = segments[i];
				if (segment.transit_mode == "METRO_RAIL") {
					segment.transit_mode = "SUBWAY";
				}
				if (segment.transit_mode == "WALK") {
					var instruction = segment.instruction;
					r.push("                 <dt class=\"bus-route walk\" index=\"" + i + "\"><div class='beforedt'></div><div class='afterdt'></div>" + instruction + "</dt>");
				} else if (segment.transit_mode == "BUS" || segment.transit_mode == "SUBWAY") {
					var lineNum = "",
						lineName = segment.transit.lines[0].name;
					if (segment.transit_mode == "SUBWAY") {
						lineNum = me.getLineNum(lineName);
					}
					r.push("                    <dt class=\"bus-route " + segment.transit_mode.toLowerCase() + " " + lineNum + "\" index=\"" + i + "\"><div class='beforedt'></div><div class='afterdt'></div>");
					if (segment.transit_mode == "SUBWAY") {
						r.push("                            <span class=\"line\"><div class='beforespan'></div>" + lineName + "</span>");
					} else {
						r.push("                            " + lineName);
					}
					//r.push("                        <span class=\"grey\"><%=direction%></span>");
					r.push("                    </dt>                                ");
					r.push("                    <dd class=\"" + segment.transit_mode.toLowerCase() + " " + lineNum + "\"><div class='afterdd'></div>");
					r.push("                        <h4>");
					r.push("                            <a href=\"javascript:void(0)\" class=\"busstop\" id=\"\">");
					r.push("                                " + segment.transit.on_station.name);
					r.push("                            </a>");
					r.push("                            <span>上车</span>");
					r.push("                        </h4>");
					r.push("                        <ul>");
					var stops = segment.transit.via_stops;
					for (var j = 0; j < stops.length; j++) {
						r.push("                                <li>" + stops[j].name + "</li>");
					}
					r.push("                        </ul>");
					r.push("                        <h4>");
					r.push("                            <a href=\"javascript:void(0)\" class=\"busstop\" id=\"\">");
					r.push("                                " + segment.transit.off_station.name);
					r.push("                            </a>");
					r.push("                            <span>下车</span></h4>");
					r.push("                        <p>首: " + me.util.formatTime(segment.transit.lines[0].stime) + "    末: " + me.util.formatTime(segment.transit.lines[0].etime) + "</p>                            ");
					if (stops.length !== 0) {
						r.push("                            <a href=\"javascript:void(0)\" style='cursor: pointer' class=\"icon-arrow\"><span class='aftera'></span>" + (stops.length + 1) + "站</a>");
					}
					r.push("                    </dd>");
				} else if (segment.transit_mode == "RAILWAY") {
					var desc = me.util.getDistance(segment.distance) + "," + me.util.getTime(segment.time);
					var lineNum = "",
						lineName = segment.transit.name;
					r.push("                    <dt class=\"bus-route " + segment.transit_mode.toLowerCase() + "\" index=\"" + i + "\"><div class='beforedt'></div><div class='afterdt'></div>");
					r.push("                            " + lineName);
					//r.push("                        <span class=\"grey\"><%=direction%></span>");
					r.push("                    </dt>                                ");
					r.push("                    <dd class=\"" + segment.transit_mode.toLowerCase() + " " + lineNum + "\"><div class='afterdd'></div>");
					r.push("                        <h4>");
					r.push("                            <a href=\"javascript:void(0)\" class=\"busstop\" id=\"\">");
					r.push("                                " + segment.transit.departure_stop.name + "[" + me.util.formatTime(segment.transit.departure_stop.time) + "]");
					r.push("                            </a>");
					r.push("                            <span>上车</span>");
					r.push("                        </h4>");
					r.push("                        <ul>");
					r.push("                        </ul>");
					r.push("                        <h4>");
					r.push("                            <a href=\"javascript:void(0)\" class=\"busstop\" id=\"\">");
					r.push("                                " + segment.transit.arrival_stop.name + "[" + me.util.formatTime(segment.transit.arrival_stop.time) + "]");
					r.push("                            </a>");
					r.push("                            <span>下车</span></h4>");
					r.push("                        <p>" + desc + "</p>                            ");
					r.push("                    </dd>");
				} else if (segment.transit_mode == "TAXI") {
					var desc = me.util.getDistance(segment.distance) + "," + me.util.getTime(segment.time);
					var lineNum = "";
					r.push("                 <dt class=\"bus-route walk\" index=\"" + i + "\"><div class='beforedt'></div><div class='afterdt'></div>");
					r.push("                            " + segment.instruction);
					r.push("                    </dt>                                ");
					r.push("                    <dd class=\"" + segment.transit_mode.toLowerCase() + " " + lineNum + "\"><div class='afterdd'></div>");
					r.push("                        <h4>");
					r.push("                        </h4>");
					r.push("                        <ul>");
					r.push("                        </ul>");
					r.push("                        <h4>");
					r.push("                        </h4>");
					r.push("                        <p>" + desc + "</p>                            ");
					r.push("                    </dd>");
				}
			}
			r.push("    <dt class=\"busstop end\" index=\"end\"><div class='beforedt'></div><div class='afterdt'></div>" + data.end.name + "</dt>");
			r.push("</dl>");
			return r;
		}
		/*  //生成infowindow基本结构（上中下）
		 me.view.createInfowindowDom=function(content, type) {
		 var self = this;
		 //定义infowindow容器
		 var infowindow_wrap = document.createElement("div");
		 infowindow_wrap.className = "infowindow-wrap J_infoWin";
		 $(infowindow_wrap).on('mousemove', function(e) {
		 e.stopPropagation();
		 });
		 //定义infowindow上部内容
		 var infowindow_header = document.createElement("div");
		 infowindow_header.className = "infowindow-header";
		 infowindow_wrap.appendChild(infowindow_header);
		 //定义infowindow内容区
		 var infowindow_body = document.createElement("div");
		 infowindow_body.className = "infowindow-body";
		 infowindow_body.innerHTML = content;
		 infowindow_wrap.appendChild(infowindow_body);
		 //定义infowindow下部arrow
		 var infowindow_foot = document.createElement("div");
		 infowindow_foot.className = "infowindow-foot";
		 var infowindow_arrow = document.createElement("div");
		 var className;
		 */
		/*    if (type == "marker-poi" || type == "marker-sub" || type == "marker-poi-geo" || type == "marker-station" || type == "marker-busStop" || type == "marker-single" || type == "marker-fav-single" || type == "marker-fav" || type == "marker-tmp" || type == "marker-tmp-sign" || type == "marker-hotspot" || type == "marker-placeSearch") {
		 className = "infowindow-arrow marker-iw";
		 } else if (type === "poly-drive" || type === "poly-walk" || type == "marker-drive-from" || type == "marker-drive-to" || type == "marker-plan-poi" || type == "marker-walk-from" || type == "marker-walk-to" || type == "marker-bus-from" || type == "marker-bus-to" || type == "marker-bus-busStop" || type == "marker-bus-subwayStop" || type == "marker-favdrive-from" || type == "marker-favdrive-to") {
		 className = "infowindow-arrow poly-iw";
		 }*/
		/*
		 className = "infowindow-arrow poly-iw";
		 infowindow_arrow.className = className;
		 infowindow_foot.appendChild(infowindow_arrow);
		 infowindow_wrap.appendChild(infowindow_foot);
		 return infowindow_wrap;
		 }*/
}