(function ($) {
    /*
    * 微信传图
    * 2015-07-17 崔宁
    * （未添加的：图片异步上传、）   
    */

    // array1、array2的差集
    function array_diff(array1, array2) {
        var o = {};
        for (var i = 0, len = array2.length; i < len; i++) {
            o[array2[i]] = true;
        }
        var result = [];
        for (i = 0, len = array1.length; i < len; i++) {
            var v = array1[i];
            if (o[v]) continue;
            result.push(v);
        }
        return result;
    }
    var qrupload = (function () {
        var qrUpload = function (options) {
            return new qrUpload.fnStart.init(options);
        }
        qrUpload.fnStart = qrUpload.prototype = {
            // 初始化
            init: function (options) {
                // 页面渲染
                $("p.jianju").after('<div class="upload_way clearfix"><dl><dt class="pc-ewm"><span><img src="http://esf.js.soufunimg.com/esf/zu/img/computer.gif" alt="电脑相册传图" /></span><p>电脑相册传图</p></dt></dl><div class="or-txt">或</div><dl><dt><span><img src="#" alt="微信快速传图" id="img-qrcode" width="80" height="80" /></span><p>微信快速传图</p><div id="img-mask" class="wx_shadow_wrap" style="display:none"><a href="#">二维码已过期<br/>点击刷新</a></div></dt><dd id="img-tip" style="display:none"><p class="red">图片在手机相册里？</p><p>微信扫描左侧二维码</p><p>关注后直接上传手机中图片</p></dd></dl></div>');
                this.imgcount = $("#button_EXTENDINFO_shint_list"); // 当前可上传图片数量
                this.qrcode = $("#" + options.qrcode);
                this.qrtip = $("#" + options.qrtip);
                this.qrmask = $("#" + options.qrmask);
                this.qrurl = "https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=";// 二维码路径 
                this.ajaxpath = "/rentinput/postservice/wechat/";
                this.codeid = "";//二维码编号，随页面刷新变动。30分钟后自动过期
                this.needAddImgs = [];// 需要添加的img
                this.lastImgs = []; // 上次的img
                this.currentImgs = [];// 当前的img              
                this.trigger();// 提示层相关事件
                this.showQrcode();// 显示二维码
                var _this = this;
                setInterval(function () { _this.queryImage(); }, 3000);// 轮询
                setTimeout(function () { _this.refreshQrcode() }, 1000 * 60 * 30);// 30分钟后过期
            },
            trigger: function () {
                var _this = this;
                if (_this.qrtip.length > 0) {
                    _this.qrcode.hover(function () {
                        _this.qrtip.fadeIn();
                    }, function () {
                        _this.qrtip.fadeOut();
                    })
                }               
            },
            /*
            * 生成二维码
            */
            showQrcode: function () {
                var _this = this;
                $.ajax({
                    type: "get",
                    url: _this.ajaxpath + "showqrcode.aspx",
                    dataType: "json"
                }).done(function (data) {
                    if (data) {
                        _this.qrcode.attr("src", _this.qrurl + data.Ticket);
                        _this.codeid = data.Codeid;
                    }
                })
            },
            /*
            * 刷新二维码
            */
            refreshQrcode: function () {
                var _this = this;
                // 显示遮罩
                _this.qrmask.show();
                // 绑定click事件
                _this.qrmask.on("click", function () {
                    _this.qrmask.hide();
                    _this.showQrcode();
                })
            },
            /*
            * 获取微信上传的图片
            */
            queryImage: function () {
                var _this = this;
                $.ajax({
                    type: "get",
                    url: _this.ajaxpath + "queryimage.aspx?codeid=" + _this.codeid,
                    dataType: "json"
                }).done(function (data) {
                    if (data.entitylist && data.entitylist.length > 0) {
                        _this.currentImgs = [];
                        var i = 0, l = data.entitylist.length;                       
                        for (; i < l; i++) {
                            _this.currentImgs.push(data.entitylist[i].PhotoUrl);
                        }
                        _this.needAddImgs = array_diff(_this.currentImgs, _this.lastImgs);
                        _this.addImgs();
                        _this.lastImgs = _this.currentImgs;
                    }
                })
            },           
            /*
            * 添加图片到页面
            */
            addImgs: function () {
                var i = 0, l = this.needAddImgs.length, canAdd = this.imgcount.attr("maxpic");
                if (canAdd < l) {
                    alert("您最多能上传10张图片");
                } else {
                    for (; i < l; i++) {
                        PhotoInitial.AddImg("房源图片", this.needAddImgs[i], "button_EXTENDINFO_shint");
                    }
                }
            }
        }
        qrUpload.fnStart.init.prototype = qrUpload.prototype;
        return qrUpload;
    }())
    // 调用
    qrupload({
        qrcode: "img-qrcode", // 二维码
        qrtip: "img-tip", // 提示
        qrmask:"img-mask" // 遮罩层
    })
}(jQuery))