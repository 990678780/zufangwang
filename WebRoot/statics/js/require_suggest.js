/*
* 发布页小区联想框
*
* [可配置参数]
* s: 下拉table  ---- 可以是数组或字符串，依赖于jQuery
* k: 小区输入框 ---- 同上
* projcode: 存放小区id的隐藏域 ---- 同上
* address: 存放地址的隐藏域 ---- 同上
* timer: 下拉框计时器
* st: 下拉框默认提示的文本
* kt: 输入框默认提示的文本
* info: 输入框提示信息
*/
(function (window, jQuery, undefined) {
    // IE6-IE8扩展
    if (typeof Array.prototype.every != "function") {
        Array.prototype.every = function (fn, context) {
            var passed = true;
            if (typeof fn === "function") {
                for (var k = 0, length = this.length; k < length; k++) {
                    if (passed === false) break;
                    passed = !!fn.call(context, this[k], k, this);
                }
            }
            return passed;
        };
    }
    /*
    * 参数
    */
    var defaultOptions = {
        s: ["#Suggestion", "#Suggestion1", "#SuggestionThree"],
        k: ["#projname1", "#projname2", "#projname3"],
        projcode: ["#input_PROJCODE", "#input_PROJCODE1", "#input_PROJCODEThree"],
        address: ["#input_ADDRESS", "#input_ADDRESS1", "#input_ADDRESSThree"],
        selectIndex: [0, 0, 0],
        timer: [null, null, null],
        st: "输中文/上下键选择",
        kt: "请输入小区名称",
        info: "span_proj"
    },
    /*
    * 获取联想数据
    */
    getSuggest = function (pro, suggest, selectIndex) {
        var projname = pro.value;
        if (projname !== "" && projname.value !== defaultOptions.kt) {
            jQuery.ajax({
                type: 'get',
                url: '/rentinput/PostService/GetNewDictList.aspx?key=' + escape(projname),
                processData: false,
                success: function (data) {
                    var browserName = navigator.appName;
                    suggest.rows[0].cells[0].innerHTML = defaultOptions.st;
                    for (var i = suggest.rows.length - 1; i > 0; i--) {
                        suggest.tBodies[0].removeChild(suggest.rows[i]);
                    }

                    if (data !== "") {
                        data = eval(data);
                        for (var i = 0; i < data.length; i++) {
                            addRow(suggest, data[i].projname, data[i].newcode, data[i].address, data[i].district, data[i].comarea, data.purpose, selectIndex);
                        }
                    }


                    if (suggest.rows.length > 1) {
                        suggest.style.display = '';
                        selectIndex = 1;
                        suggest.rows[1].childNodes[0].className = 'itemFocus';
                    }
                }
            });
        }
        else {
            for (var i = suggest.rows.length - 1; i > 0; i--) {
                suggest.tBodies[0].removeChild(suggest.rows[i]);
            }
        }
    },
    /*
    * 返回带参数的一个方法  用于settimeout传参
    */
    _getSuggest = function (pro, suggest, selectIndex) {
        return function () {
            getSuggest(pro, suggest, selectIndex);
        }
    },
    __IsSelect = function (ev) {
        if (ev.shiftKey || (ev.ctrlKey && ev.shiftKey)) {
            return (ev.keyCode >= 35 && ev.keyCode <= 40);
        }
        else if (ev.ctrlKey && !ev.shiftKey) {
            return ev.keyCode == 65;
        }
        else {
            return false;
        }
    },
    __IsMove = function (ev) {
        return (ev.keyCode >= 35 && ev.keyCode <= 40);
    },
    __IsInput = function (ev) {
        return __IsSelect(ev) || __IsMove(ev) || ev.keyCode == 9 || ev.keyCode == 13;

    },
    /*
    * 验证小区下拉框
    */
    checkPro = function () {
        var flag = false;
        var tip = document.getElementById(defaultOptions.info);
        // 获取小区输入框的value集合
        var valueArr = jQuery.map(jQuery(defaultOptions.k.toString()), function (n, i) { return n.value });
        // 判断每一个输入框的value是否都为”请输入小区名称“
        if (valueArr.every(function (v) { return v === defaultOptions.kt })) {
            message.warn(tip, defaultOptions.kt);
            return flag;
        }
        jQuery(defaultOptions.k.toString()).each(function (i) {
            if (this.value !== defaultOptions.kt && jQuery(defaultOptions.projcode[i]).val() === '') {
                message.warn(tip, "请从下拉框中选择小区");
                return false;
            } else {
                message.succeed(tip);
                flag = true;
            }
        })
        return flag;

    },
    addRow = function (suggest, text, arg1, arg2, arg3, arg4, arg5, selectIndex) {
        var tr = document.createElement('TR');
        tr.setAttribute('index', suggest.rows.length);
        tr.setAttribute('newcode', arg1);
        tr.setAttribute('address', arg2);
        tr.setAttribute('district', arg3);
        tr.setAttribute('comerce', arg4);
        tr.setAttribute('projtype', arg5);
        tr.className = 'item';
        var td = document.createElement('TD');
        if (Common.GetStringLength(text) > 26) {
            text = Common.GetSubString(text, 26);
        }
        td.innerHTML = text;
        td.style.paddingLeft = '3px';
        td.style.textAlign = "left";
        td.style.color = '#333333';
        tr.appendChild(td);
        tr.onmouseover = function () {
            var i = parseInt(this.getAttribute('index'));
            if (selectIndex != -1) suggest.rows[selectIndex].childNodes[0].className = 'item';
            for (var j = 0; j < suggest.rows.length; j++) {
                suggest.rows[j].childNodes[0].className = 'item';
            }
            this.childNodes[0].className = 'itemFocus';
            selectIndex = i;
        }
        suggest.tBodies[0].appendChild(tr);
    };
    /*
    * 输入框相关事件
    */
    jQuery(defaultOptions.k.toString()).each(function (index) {
        jQuery(this).on({
            "contextmenu": function () { return false; },
            "focus": function () {
                var suggest = jQuery(defaultOptions.s[index])[0];
                suggest.rows[0].cells[0].innerHTML = defaultOptions.st;
                suggest.style.top = '-1px';
                suggest.style.width = '133px';
                suggest.style.display = '';
                if (this.value === defaultOptions.kt) {
                    this.value = "";
                }
            },
            "blur": function () {
                if (this.value === '') {
                    this.value = defaultOptions.kt;
                }
                checkPro();
            },
            "keypress": function (ev) {
                ev = ev || window.event;
                if (jQuery(defaultOptions.s[index]).is(":visible") && ev.keyCode == 13) {
                    return false;
                }
            },
            "keyup": function (ev) {
                ev = ev || window.event;
                var suggest = jQuery(defaultOptions.s[index])[0];
                if (__IsInput(ev)) {
                    if (suggest.style.display === '') {
                        if (ev.keyCode == 13) {
                            //enter
                            if (defaultOptions.selectIndex[index] > 0) {
                                if (suggest.rows.length <= 1) {
                                    defaultOptions.selectIndex[index] = 0;
                                }
                                else {
                                    this.value = suggest.rows[defaultOptions.selectIndex[index]].cells[0].innerHTML;
                                    jQuery(defaultOptions.projcode[index]).val(suggest.rows[defaultOptions.selectIndex[index]].getAttribute("newcode"));
                                    jQuery(defaultOptions.address[index]).val(suggest.rows[defaultOptions.selectIndex[index]].getAttribute("address"));
                                }
                                suggest.style.display = 'none';
                            }
                            return false;
                        }
                        else if (ev.keyCode == 40) {
                            //down
                            if (suggest.rows.length > 1) {
                                suggest.rows[defaultOptions.selectIndex[index]].childNodes[0].className = '';
                                defaultOptions.selectIndex[index]++;
                                if (defaultOptions.selectIndex[index] == suggest.rows.length) defaultOptions.selectIndex[index] = 1;
                                suggest.rows[defaultOptions.selectIndex[index]].childNodes[0].className = 'itemFocus';
                            }
                        }
                        else if (ev.keyCode == 38) {
                            //up
                            if (suggest.rows.length > 1) {
                                suggest.rows[defaultOptions.selectIndex[index]].childNodes[0].className = '';
                                defaultOptions.selectIndex[index]--;
                                if (defaultOptions.selectIndex[index] < 1) defaultOptions.selectIndex[index] = suggest.rows.length - 1;
                                suggest.rows[defaultOptions.selectIndex[index]].childNodes[0].className = 'itemFocus';
                            }
                        }
                        else if (ev.keyCode == 27) {
                            //esc
                            suggest.style.display = 'none';
                        }
                    }
                    else {
                        if (ev.keyCode == 40) {
                            //down
                            suggest.style.display = '';
                        }
                    }
                }
                else {
                    if (this.value !== defaultOptions.st) {
                        jQuery(defaultOptions.projcode[index]).val("");
                        jQuery(defaultOptions.address[index]).val("");
                        text = this.value;
                        if (text !== '') {
                            suggest.rows[0].cells[0].innerHTML = "Load......";
                            if (typeof (defaultOptions.timer[index]) === "number") {
                                clearTimeout(defaultOptions.timer[index]);
                            }
                            defaultOptions.timer[index] = setTimeout(_getSuggest(this, suggest, defaultOptions.selectIndex[index]), 500);
                        }
                        else {
                            for (var i = suggest.rows.length - 1; i > 0; i--) {
                                suggest.tBodies[0].removeChild(suggest.rows[i]);
                            }
                        }
                    }
                }
            }
        })
    })
    /*
    * 下拉框相关事件
    */
    jQuery(defaultOptions.s.toString()).each(function (index) {
        jQuery(this).on('click', function (ev) {
            ev = ev || window.event;
            var target = ev.target || ev.srcElement;
            defaultOptions.selectIndex[index] = parseInt(target.parentNode.getAttribute('index'));
            if (defaultOptions.selectIndex[index] > 0) {
                jQuery(defaultOptions.k[index]).val(target.parentNode.cells[0].innerHTML);
                jQuery(defaultOptions.projcode[index]).val(this.rows[defaultOptions.selectIndex[index]].getAttribute("newcode"));
                jQuery(defaultOptions.address[index]).val(this.rows[defaultOptions.selectIndex[index]].getAttribute("address"));
            }
            this.style.display = 'none';
            checkPro();
        })
    })

    var bodies = [document, document.body, document.documentElement];
    for (var i = 0; i < bodies.length; i++) {
        if (bodies[i].onclick == null) {
            bodies[i].onclick = function (ev) {
                ev = ev || window.event;
                var target = ev.target || ev.srcElement;
                jQuery(defaultOptions.k.toString()).each(function (i) {
                    if (target !== this) {
                        jQuery(defaultOptions.s[i]).hide();
                    }
                })
            }
            break;
        }
    }
    window.checkPro = checkPro;
}(window, jQuery))