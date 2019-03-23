// 手机相关操作 
(function (window, $, undefined) {
    var path = "/RentInput/PostService/DelegateAjax.aspx?",
        time = 90,
        timer = {};
    var config = {
        phone: $("#input_MOBILECODE"), // 手机
        ptips: $("#spPhoneCheck"), // 手机提示信息
        code: $("#phoneCode"), // 验证码
        ctips: $("#uname_hq"), // 验证码提示信息
        checkbutton: $('#averifycode'), // 免费获取 按钮
        validateItem: $("#trcode") // 手机验证码这一行（控制显示或隐藏）
    };
    var mobile = {
        rightcodeAndPhone: "", //记录验证通过的手机号和验证码
        istruephone: false, //手机号是否正确        
        errmsg: "",
        // 获取验证码
        getCode: function () {
            if (time !== 90) {
                config.ctips.show().html("请稍后获取");
            } else {
                if (mobile.istruephone) {   //输入正确手机号才能获取验证码，中介等号码都不能获取验证码linsong
                    config.code.val("");
                    var phone = config.phone.val();
                    if (phone != "") {
                        if (getfirstCookie("sfut") == "" || !parseInt($("#HidHouseCount").val(), 10)) {
                            smsLogin.send(phone, $.trim($("#btnGetPicValid").val()), function (data) {
                                if (data.Message == "Success") {
                                    timer = setInterval('mobile.autoCount()', 1000);
                                } else if (data.Message == "Error" && data.IsShowMathCode == "true") {
                                    $("#imgcode").attr("src", "https://Captcha.fang.com/Display?R=" + Math.round(Math.random() * 10000));
                                    $("#NomalSubmit").css("display", "");
                                } else {
                                    alert(data.Tip);
                                }
                            });
                        } else {
                            // 给没有绑定手机号的用户绑定新手机号
                            smsLogin.sendBind(phone, $.trim($("#btnGetPicValid").val()), function (data) {
                                if (data.Message == "Success") {
                                    timer = setInterval('mobile.autoCount()', 1000);
                                   
                                } else if (data.Message == "Error" && data.IsShowMathCode == "true") {
                                    $("#imgcode").attr("src", "https://Captcha.fang.com/Display?R=" + Math.round(Math.random() * 10000));
                                    $("#NomalSubmit").css("display", "");
                                } else {
                                    alert(data.Tip);
                                }
                            });
                        }
                    }
                }
            }
        },
        //注册是否成功
        isRegSucceed: function (values) {
            if (values.error_reason == "") {
                timer = setInterval('mobile.autoCount()', 1000);
            } else {
                if (values.error_reason.indexOf('中介') >= 0) {
                    document.getElementById("div_VerifyCode").innerHTML = "<a  href='javascript:mobile.getCode();'  style='color:blue' >免费获取</a> &nbsp;&nbsp;<label >" + values.errormsg + "</label>【<a style=\"color:#00429B;\" href='javascript:mobile.insertcomplaint()'>非中介用户申诉</a>】";
                } else {
                    config.checkbutton.text("免费获取");
                    config.ctips.html(values.error_reason);
                    config.ctips.attr('color', 'red');
                }
            }
        },
        // 校验验证码
        checkCode: function (where, callback) {
            var resultObj = { ischeck: false, msg: "" };
            var code = config.code.val().replace(/^\s+|\s+$/g, "");
            var phone = config.phone.val();
            if (code != "") {
                if (getfirstCookie("sfut") != "") {
                    smsLogin.verifyBind(phone, code, function (data) {
                        if (data.Message == 'Success') {
                            resultObj.ischeck = true;
                            if (callback) {
                                callback(where);
                            }
                            message.succeed(config.ctips[0]);
                            clearInterval(timer);
                            config.checkbutton.hide();
                            mobile.rightcodeAndPhone = phone + code; //记录验证通过的手机号和验证码 
                            $("#uname_hq").hide();
                        } else {
                            if (time > -1) {
                                //clearInterval(timer);
                                //time = 90;
                            }
                            config.ctips.html(data.Tip);
                            mobile.errmsg = data.Tip;
                            $("#uname_hq").html(data.Tip);
                        }
                    })
                } else {
                    smsLogin.verify(phone, code, function (data) {
                        if (data.Message == 'Success') {
                            resultObj.ischeck = true;
                            if (callback) {
                                callback(where);
                            }
                            message.succeed(config.ctips[0]);
                            clearInterval(timer);
                            config.checkbutton.hide();
                            mobile.rightcodeAndPhone = phone + code; //记录验证通过的手机号和验证码   
                            $("#uname_hq").hide();
                        } else {
                            var inputcodeAndPhone = phone + code;
                            if (mobile.rightcodeAndPhone == inputcodeAndPhone) {
                                resultObj.ischeck = true;
                                clearInterval(timer);
                                config.checkbutton.hide();
                            } else {
                                if (time > -1) {
                                    //clearInterval(timer);
                                    //time = 90;
                                }
                                config.checkbutton.show();
                                resultObj.ischeck = false;
                            }
                            config.ctips.html(data.Tip);
                            $("#uname_hq").html(data.Tip);
                        }
                    })
                    return;
                }
            }
            else {
                $("#uname_hq").html("请填写验证码");
            }
        },
        // 校验手机
        checkMobile: function () {
            document.getElementById('mdphone').style.display = '';
            var phone = config.phone.val();

            if (phone != "") {
                var reg = /^(13[0-9]|14[0-9]|15[0-9]|16[0-9]|17[0-9]|18[0-9]|19[0-9]|95013)\d{8}$/;
                if (location.host.toLowerCase().indexOf('.hk.') > -1)
                {
                    reg = /^0085[2|3]\d{8}$/;
                }

                if (!reg.test(phone)) {
                    message.warn(config.ptips[0], '请填写正确的手机号码');
                    mobile.istruephone = false;
                } else { //需判断是否中介
                    $.ajax({
                        url: path + 'type=zhongjie&phone=' + phone,
                        dataType: 'json',
                        success: function (data) {
                            if (data.code == "100") {
                                if (!mobile.isOldUser()) {
                                    config.ptips.html("<span class=\"font12\" style=\"color:green\">请获取验证码，您的手机号将注册为房天下用户</span>");
                                    config.checkbutton.text("获取验证码");
                                    config.ctips.html("");
                                } else {
                                    config.ptips.html("<span class=\"font12\" style=\"color:green\"><img src=\"http://img.fang.com/secondhouse/image/esfnew/images/delegateandjx/tureicon.gif\"></span>");
                                    config.checkbutton.text("获取验证码");
                                    config.ctips.html("");
                                }
                                mobile.istruephone = true;
                            } else {
                                mobile.errmsg = '此电话为中介用户，不能发布个人房源';
                                mobile.istruephone = false;
                                config.ptips.html(mobile.errmsg + '<a style=\"color:#00429B;\" href=\"javascript:mobile.insertcomplaint()\">我要申诉</a>');
                            }
                        }
                    });
                }
            } else {
                mobile.errmsg = '请填写正确的手机号码';
                message.warn(config.ptips[0], mobile.errmsg);
                mobile.istruephone = false;
            }
            return mobile.istruephone;
        },
        // 是否新用户
        isOldUser: function () {
            var result;
            $.ajax({
                type: 'get',
                url: path + 'type=usercheck&phone=' + config.phone.val(),
                dataType: 'json',
                cache: false,
                async: false
            }).done(function (data) {
                result = data.result;
            })
            return result == "0";
        },
        bind400: function () {
            var result;
            $.ajax({
                type: 'get',
                url: path + 'type=bind400&phone=' + config.phone.val(),
                dataType: 'json',
                cache: false,
                async: false
            }).done(function (data) {
                result = data.result;
            })
            return result == "0";
        },
        // 是否中介
        isZhongJie: function () {
            if (usreyht == "False" && lzphone != "" && ishavePhoneConfirm == "True") {
                mobile.istruephone = true;
                config.phone.val(lzphone);
                $.ajax({
                    url: path + 'type=zhongjie&phone=' + lzphone,
                    dataType: "json",
                    success: function (data) {
                        config.phone.attr("readonly", "readonly");
                        if (parseInt($("#HidHouseCount").val(), 10)) {
                            config.validateItem.hide();
                        }
                        if (data.code == "100") {
                            config.ptips.html("<span style=\"display:inline-block;background-position:2px 0px; padding:2px 0\" id=\"uname_ok\" class=\"ok\">如需更换手机号，请用该手机号重新登录。</span>");
                            mobile.istruephone = true;
                            mobile.bind400();
                        } else {
                            config.ptips.html("&nbsp;&nbsp;此电话为中介用户，不能发布个人房源<br/><a style=\"color:#00429B;\"   href='javascript:mobile.insertcomplaint()' >我要申诉</a><img width='14' height='14' style='margin-bottom:4px;' class='veralM mr8'  src='http://img.fang.com/secondhouse/image/esfnew/images/delegateandjx/iconfree.gif'/>");
                            mobile.istruephone = false;
                            mobile.errmsg = '此电话为中介用户，不能发布个人房源';
                        }
                    }
                });
            }
        },
        mdrentinputphone: function () {
            config.validateItem.show();
            config.phone.removeAttr("readonly");
            config.phone.focus();
            config.code.val("");
            lzphone = "";
        },
        autoCount: function () {
            time--;
            if (time > -1) {
                config.checkbutton.text(time + "秒后再次获取");
            } else {
                clearInterval(timer);
                time = 90;
                config.checkbutton.text("获取验证码");
                config.ctips.hide();
            }
        },
        // 申诉
        insertcomplaint: function () {
            var phone = config.phone.val();
            if (!Input.isNumber(phone)) {
                alert("手机号码必须为数字！");
                return false;
            }
            $.ajax({
                type: 'get',
                url: path + "type=rebuke&phone=" + phone,
                dataType: 'json',
                async: false
            }).done(function (data) {
                if (data.code === "100") {
                    alert("申诉成功");
                }
                if (data.code === "110") {
                    alert("已申诉，请勿重复申诉");
                }
            }).fail(function (errObj) {
                alert("申诉失败请重试");
            });
        }
    };
    window.mobile = mobile;
}(window, $))

