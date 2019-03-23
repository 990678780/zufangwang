/*****************************************************************/
/*************************发布页面操作js**************************/
/*****************************************************************/
(function (window, $, d) {

    /*
    * 发布页表单对象
    */
    var idMap = {
        houseType: d.getElementById('MyHouseType'),
        title: d.getElementById('input_TITLE'),
        projname: d.getElementById('input_PROJNAME'),
        address: d.getElementById('input_ADDRESS'),
        district: d.getElementById('input_DISTRICT'),
        districtText: d.getElementById('District_Text'),
        comarea: d.getElementById('input_COMAREA'),
        comareaText: d.getElementById('Comarea_Text'),
        area: d.getElementById('input_Area'),
        price: d.getElementById('input_PRICE'),
        contact: d.getElementById('input_CONTACTPERSON'),
        mobile: d.getElementById('input_MOBILECODE'),
        floor: d.getElementById('input_FLOOR'),
        totalFloor: d.getElementById('input_TOTLEFLOOR'),
        room: d.getElementById('sel_room'),
        hall: d.getElementById('sel_hall'),
        toliet: d.getElementById('sel_wc'),
        phonecode: d.getElementById('phoneCode'),
        description: d.getElementById('input_DESCRIPTION'),
        forward: d.getElementById('spFoward')
    };
    /*
    * 发布页提示文本对象
    */
    var tipMap = {
        title: d.getElementById('sp_title'),
        address: d.getElementById('sp_address'),
        area: d.getElementById('spArea'),
        price: d.getElementById('sp_price'),
        description: d.getElementById('sp_desc'),
        officeFloor: d.getElementById('spOfficeFloor'),
        contact: d.getElementById('sp_ContactMan'),
        floor: d.getElementById('sp_floor'),
        room: d.getElementById('sp_roomtype'),
        forward: d.getElementById('spFowardTip')
    };
    var Input = {
        districtinfos: "", //拼凑区县字符串例如<tr><td class='item'  onclick='Districts_c(this)' index=0>朝阳</td></tr>
        comareainfos: "",
        isHouseunit: false,
        isPrjaddress: false,
        isPrjname: false,
        area: [],
        //页面初始化
        onload: function () {
            if (idMap.houseType.value == "写字楼") {
                Input.InitialOfficeEvent();
            } else if (idMap.houseType.value == "商铺") {
                Input.InitialShopEvent();
            } else {
                if (isEdit == "False") {
                    Input.AddHouseTypeOnclick('#dvhousetype a', 'currentA');
                }
                Input.InitialHouseEvent();
            };
            Input.InitialDistricts(); //初始化区县信息
            Input.addressAction(); //地址信息处理验证
            Input.initializeInput(); //初始化全选按钮事件
            idMap.title.onblur = function () {
                validate.title();
            };
            /*area*/
            idMap.area.onfocus = function () {
                message.tips(tipMap.area, '请输入1-5000之内的数值');
            };
            idMap.area.onblur = function () {
                validate.area();
                Input.AddTitleContext();
            };
            /*price*/
            idMap.price.onfocus = function () {
                message.tips(tipMap.price, '请输入100-300000之内的整数');
            };
            idMap.price.onblur = function () {
                validate.price();
            };
            /*contactman*/

            idMap.contact.onblur = function () {
                validate.contact();
            };
            /*MobilePhone*/

            idMap.mobile.onblur = function () {
                if (isEdit == "False") {
                    mobile.checkMobile();
                }
            };
            /*floor*/

            idMap.floor.onblur = function () {
                validate.floor();
            };
            idMap.totalFloor.onblur = function () {
                validate.floor();
            };
            /*houseunit*/
            idMap.room.onblur = function () {
                validate.houseunit();
                Input.AddTitleContext();
            };
            idMap.hall.onblur = function () {
                validate.houseunit();
                Input.AddTitleContext();
            };
            idMap.toliet.onblur = function () {
                validate.houseunit();
                Input.AddTitleContext();
            };

            idMap.phonecode.onblur = function () {
                mobile.checkCode();
            };
            if (lzphone === "") {
                $.ajax({
                    url: '/RentInput/PostService/DelegateAjax.aspx?type=getphone',
                    success: function (data) {
                        if (data !== "" && data !== "0") {
                            lzphone = data;
                            mobile.isZhongJie();
                        }
                    }
                });
            } else {
                mobile.isZhongJie();
            }

            var H_youxiaoqi_sp = $("#youxiaoqi_sp_H").val();

            if (H_youxiaoqi_sp) {
                $("#spShopLimit").html(H_youxiaoqi_sp);
            }

            else {
                $("#spShopLimit").html("请选择");
            }

            $("#dvShopLimitItem dl").on("click", function () {
                $("#youxiaoqi_sp_H").val($(this).html().trim());
            });
            $("#dvHZRoomCountItem dl").on("click", function () {
                Input.AddTitleContext();
            });
            var H_youxiaoqi_xz = $("#youxiaoqi_xz_H").val();
            if (H_youxiaoqi_xz) {
                $("#spOfficeLimit").html(H_youxiaoqi_xz);
            }
            else {
                $("#spOfficeLimit").html("请选择");
            }

            $("#dvOfficeLimitItem dl").on('click', function () {
                var datatime = $(this).html().trim();
                if (datatime) {
                    $("#youxiaoqi_xz_H").val(datatime);
                }
            })
            $("input[name='rblstFitment']").on('click', function () {
                $("#HidFitment").val(this.value);
            });
            $("input[name='radio_fenge_xz_id']").on('click', function () {
                $("#radio_fenge_xz_H").val(this.value);
            })
            $("input[name='radio_fenge_sp_id']").on('click', function () {
                $("#radio_fenge_sp_H").val(this.value);
            })
            $("input[name='radiozhuangxiu_sp_id']").on('click', function () {
                $("#radiozhuangxiu_sp_H").val(this.value);
            })
            $("input[name='radiozhuangxiu_zx_id']").on('click', function () {
                $("#radiozhuangxiu_xz_H").val(this.value);
            })
            $("input[name='rblstShopState']").on('click', function () {
                $("#dangqianstate_sp_H").val(this.value);
            })
            $("input[name='rblstOfficePriceType']").on('click', function () {
                $("#zhifufangshi_xz_H").val(this.value);
            })
            $("input[name='rblstShopPriceType']").on('click', function () {
                $("#zhifufangshi_sp_H").val(this.value);
            })
            $("input[name='rblstShopRentType']").on('click', function () {
                $("#radio_leibie_sp_H").val(this.value);
            })
            $("input[name='radiowuye_xz']").on('click', function () {
                $("#radiowuye_xz_H").val(this.value == "1" ? "是" : "否");
            })

            if (isEdit == 'True') {
                editPage();
                idMap.title.onkeyup = function () { Common.charCounter(this, 60); }
                idMap.projname.onkeydown = function () { Common.charCounter(this, 30); }
                idMap.address.onkeyup = function () { Common.charCounter(this, 60); }
                idMap.address.onchange = function () { Common.charCounter(this, 60); }
            }

            _ub.city = city; //所在城市（中文）
            _ub.biz = 'z'; //二手房“e”，租房“z”
            _ub.location = 0; //方位 ，网通为0，电信为1，如果无法获取方位，记录0
            _ub.collect(0, { 'z22': '3' });


        },
        //页面初始化默认值
        InitialProjInput: function () {
            if (isEdit == "False") {
                idMap.projname.value = '请输入小区名称';
                d.getElementById("input_PROJCODE").value = '';
                idMap.address.value = '';
                idMap.district.value = '';
                idMap.comarea.value = '';
                d.getElementById('trdistrict').style.display = '';
                d.getElementById('trProjAddress').style.display = 'none';
                d.getElementById('sp_districtcomarea').innerHTML = '';
                tipMap.address.innerHTML = '';
                d.getElementById('sp_projname').innerHTML = '';
                idMap.districtText.innerHTML = '请选择区域';
                idMap.comareaText.innerHTML = '请选择商圈';
                idMap.title.value = '';
                var suggesttb = d.getElementById('Suggestion');
                var rowNum = suggesttb.rows.length;
                for (var i = 1; i < rowNum; i++) {
                    suggesttb.deleteRow(i);
                    rowNum = rowNum - 1;
                    i = i - 1;
                }
            }
        },
        //发布房源的事件初始化（住宅和别墅）
        InitialHouseEvent: function () {
            Input.InitialProjInput();
            d.getElementById("tbhousevilla").style.display = '';
            d.getElementById("tboffice").style.display = 'none';
            d.getElementById("tbshop").style.display = 'none';
            d.getElementById('tbRentType').style.display = "";
            var button_equitmentall = $("#button_equitmentall"),
                spanbs = $("#spanbs"),
                sbzz = $("#sbzz");
            button_equitmentall.val("全选");
            if (idMap.houseType.value == "别墅") {

                d.getElementById("apvilla").className = "currentA";
                spanbs.show();
                sbzz.hide();
                if (isEdit !== 'True') {
                    spanbs.find("input[type='checkbox']").attr("checked", false);
                } else {
                    if (spanbs.find("input[type='checkbox']:checked").length === spanbs.find("input[type='checkbox']").length) {
                        button_equitmentall.val("全不选");
                    }
                }
            } else {
                d.getElementById("aphouse").className = "currentA";
                spanbs.hide();
                sbzz.show();
                if (isEdit !== 'True') {
                    sbzz.find("input[type='checkbox']").attr("checked", false);
                } else {
                    if (sbzz.find("input[type='checkbox']:checked").length === sbzz.find("input[type='checkbox']").length) {
                        button_equitmentall.val("全不选");
                    }
                }
            }
            if (d.getElementById('HidMright').value == '整租') {
                d.getElementById('td_zz').style.display = '';
                d.getElementById('td_hz').style.display = 'none';
                d.getElementById('rd_zhengzu').className = "currentA";
                $(".a_sec").show();
            } else {
                d.getElementById('td_zz').style.display = 'none';
                d.getElementById('td_hz').style.display = '';
                d.getElementById('rd_hezu').className = "currentA";
                $(".a_sec").hide();
            }
            if (d.getElementById('HidFoward').value != "") {
                d.getElementById('spFoward').innerHTML = d.getElementById('HidFoward').value;
            }
            d.getElementById('rd_duanzu').onclick = function () {
                var passowrd = "";
                if (mobile.istruephone) {
                    if (idMap.phonecode.value != "") {
                        var htmlobj = $.ajax({ url: '/RentDetails/PostService/DescEncrypt.aspx?pwd=' + idMap.phonecode.value, async: false });
                        passowrd = htmlobj.responseText;
                    }
                }
                var roomType = "住宅";
                if ($("#sel_housetype_New").val() != "") {
                    roomType = $("#sel_housetype_New").val();
                }
                var strurl = "https://passport.youtx.com/profile/soufun.aspx?response_type=zufangxiaoqu&contact=" + escape($("#input_CONTACTPERSON").val()) + "&tel=" + $("#input_MOBILECODE").val() + "&psw=" + passowrd + "&roomType=" + escape(roomType) + "&xiaoqu=" + escape($("#input_PROJNAME").val()) + "&xianqu=" + escape(idMap.district.value) + "&shangquan=" + escape(idMap.comarea.value) + "&addr=" + escape($("#input_ADDRESS").val()) + "&city=" + escape(city);
                window.open(strurl);
            },
        d.getElementById('dvHZRoom').onclick = function () {
            d.getElementById('dvHZRoomSel').style.display = 'block';
        },
        Input.AddChildClickEvent('#dvHZRoomItem dl', 'spHZRoom', 'spHZTip', 'HidHzRoom', 'dvHZRoomSel');

            d.getElementById('dvHZRoomCount').onclick = function () {
                d.getElementById('dvHZRoomCountSel').style.display = 'block';
            },
        Input.AddChildClickEvent('#dvHZRoomCountItem dl', 'spHZRoomCount', 'spHZTip', 'HidHzRoomCount', 'dvHZRoomCountSel');

            d.getElementById('dvHZLimit').onclick = function () {
                d.getElementById('dvHZLimitSel').style.display = 'block';
            },
        Input.AddChildClickEvent('#dvHZLimitItem dl', 'spHZLimit', 'spHZTip', 'HidHzLimit', 'dvHZLimitSel');

            d.getElementById('dvFoward').onclick = function () {
                d.getElementById('dvforwardsel').style.display = 'block';
            },
        Input.AddChildClickEvent("#dvForwardItem dl", 'spFoward', 'spFowardTip', 'HidFoward', 'dvforwardsel');

            d.getElementById('dvPayInfo').onclick = function () {
                d.getElementById('dvPayInfoSel').style.display = 'block';
            },
        Input.AddChildClickEvent("#dvPayInfoItem dl", 'spPayInfo', 'sp_price', 'HidPayInfo', 'dvPayInfoSel');
        },
        //发布房源的事件初始化（写字楼）
        InitialOfficeEvent: function () {
            Input.InitialProjInput();
            d.getElementById("tbhousevilla").style.display = 'none';
            d.getElementById("tbshop").style.display = 'none';
            d.getElementById('tbRentType').style.display = "none";
            d.getElementById("tboffice").style.display = '';
            d.getElementById("apoffice").className = "currentA";
            $(".a_sec").hide();
            if (d.getElementById("HidOfficeType").value != "") {
                d.getElementById("spOfficeType").innerHTML = d.getElementById("HidOfficeType").value;
            }
            if (d.getElementById("hidOfficeGrade").value != "") {
                d.getElementById("spOfficeGrade").innerHTML = d.getElementById("hidOfficeGrade").value;
            }
            if (d.getElementById("HidPayInfo").value != "") {
                d.getElementById("spOfficePayInfo").innerHTML = d.getElementById("HidPayInfo").value;
            }
            $('#dvOfficeType').click(function () {
                d.getElementById('dvOfficeTypeSel').style.display = 'block';
            });

            $('#dvOfficeTypeItem').on('click', function () {
                d.getElementById('dvOfficeGradeSel').style.display = 'block';
            });

            Input.AddChildClickTipEvent("#dvOfficeTypeItem dl", 'spOfficeType', 'spOfficeTypeGradeTip', 'HidOfficeType', 'dvOfficeTypeSel', '请选择类型', '请选择级别')

            $('#dvOfficeGrade').click(function () {
                d.getElementById('dvOfficeGradeSel').style.display = 'block';
            });
            Input.AddChildClickTipEvent("#dvOfficeGradeItem dl", 'spOfficeGrade', 'spOfficeTypeGradeTip', 'hidOfficeGrade', 'dvOfficeGradeSel', '请选择级别', '')


            d.getElementById('dvOfficePayInfo').onclick = function () {
                d.getElementById('dvOfficePayInfoSel').style.display = 'block';
            };
            Input.AddChildClickEvent("#dvOfficePayInfoItem dl", 'spOfficePayInfo', 'spOfficePayInfoTip', 'HidPayInfo', 'dvOfficePayInfoSel');

            d.getElementById('dvOfficeLimit').onclick = function () {
                d.getElementById('dvOfficeLimitSel').style.display = 'block';
            };
            Input.AddChildClickEvent("#dvOfficeLimitItem dl", 'spOfficeLimit', 'spOfficeLimitTip', 'HidLimit', 'dvOfficeLimitSel');

            Input.AddFocusBlurEvent("input_Area_Office", "spAreaOffice", "请输入面积");
            Input.AddFocusBlurEvent("input_FLOOR_office", "spOfficeFloor", "请输入所在楼层");
            Input.CheckOfficeFloor();
            Input.AddFocusBlurEvent("input_PRICE_Office", "spOfficePrice", "请输入租金");
            Input.AddFocusBlurEvent("inputWuYeFee", "spWuYeFee", "请输入租金");
        },
        CheckOfficeFloor: function () {

            d.getElementById('input_TOTLEFLOOR_office').onfocus = function () {
                message.tips(tipMap.officeFloor, "请输入总楼层");
            };
            d.getElementById('input_TOTLEFLOOR_office').onblur = function () {
                var inputvalue = d.getElementById('input_TOTLEFLOOR_office').value;
                if (inputvalue != "") {
                    if (isNaN(inputvalue)) {
                        message.warn(tipMap.officeFloor, "请输入数字");
                    } else {
                        var currfloor = d.getElementById('input_FLOOR_office').value;
                        var totalfloor = d.getElementById('input_TOTLEFLOOR_office').value;
                        if (currfloor != "" && totalfloor != "" && parseInt(currfloor) > parseInt(totalfloor)) {
                            message.warn(tipMap.officeFloor, "总楼层应大于等于所在楼层");
                        } else {
                            message.succeed(tipMap.officeFloor);
                        }
                    }
                } else {
                    message.warn(tipMap.officeFloor, "请输入总楼层");
                }
            };
        },
        //发布房源的事件初始化（商铺）
        InitialShopEvent: function () {
            Input.InitialProjInput();
            d.getElementById("tbhousevilla").style.display = 'none';
            d.getElementById("tboffice").style.display = 'none';
            d.getElementById("tbshop").style.display = '';
            d.getElementById('tbRentType').style.display = "none";
            d.getElementById("apshop").className = "currentA";
            $(".a_sec").hide();
            if (d.getElementById("HidShopType").value != "") {
                d.getElementById("spShopType").innerHTML = d.getElementById("HidShopType").value;
            }
            if (d.getElementById("HidPayInfo").value != "") {
                d.getElementById("spShopPayInfo").innerHTML = d.getElementById("HidPayInfo").value;
            }
            $('#dvShopType').click(function () {
                d.getElementById('dvShopTypeSel').style.display = 'block';
            });
            Input.AddChildClickTitleEvent("#dvshoptypeitem dl", 'spShopType', 'ShopTypeTip', 'HidShopType', 'dvShopTypeSel');

            d.getElementById('dvShopPayInfo').onclick = function () {
                d.getElementById('dvShopPayInfoSel').style.display = 'block';
            };
            Input.AddChildClickEvent("#dvShopPayInfoItem dl", 'spShopPayInfo', 'spShopPayInfoTip', 'HidPayInfo', 'dvShopPayInfoSel');

            d.getElementById('dvShopLimit').onclick = function () {
                d.getElementById('dvShopLimitSel').style.display = 'block';
            };
            Input.AddChildClickEvent("#dvShopLimitItem dl", 'spShopLimit', 'spShopLimitTip', 'HidShopLimit', 'dvShopLimitSel');

            $("input[name='radio_zujinlb_sp']").each(function () {
                $(this).click(function () {
                    d.getElementById('HidPriceType').value = this.value;
                });
            });
            Input.AddFocusBlurEvent("inputShopArea", "AreaContent_sp", "请输入出租面积");
            Input.AddFocusBlurEvent("Price_sp", "PriceContent_sp", "请输入租金");
            $("#input_FLOOR_shop,#input_TOTLEFLOOR_shop").on("blur", function () {
                validate.floor("input_FLOOR_shop", "input_TOTLEFLOOR_shop");
            })

        },
        //设置商铺的房源标题
        AddChildClickTitleEvent: function (parentnode, valueshowid, tipid, hidid, dvshowid) {
            $(parentnode).each(function () {
                $(this).click(function () {
                    d.getElementById(valueshowid).innerText = this.innerText.trim();
                    d.getElementById(dvshowid).style.display = 'none';
                    Input.CheckInfo(valueshowid, tipid, hidid);
                    Input.AddShopTitle();
                });
            });
            d.getElementById(dvshowid).onmouseleave = function () {
                d.getElementById(dvshowid).style.display = 'none';
                Input.CheckInfo(valueshowid, tipid, hidid);
            };
        },
        //写字楼商铺的光标获取和光标失去事件
        AddFocusBlurEvent: function (item, spitem, sptip) {
            d.getElementById(item).onfocus = function () {
                message.tips(d.getElementById(spitem), sptip);
            };
            d.getElementById(item).onblur = function () {
                var inputvalue = this.value.replace(/\s+/g, "");
                tips = d.getElementById(spitem);
                if (inputvalue != "") {
                    if (isNaN(inputvalue)) {
                        message.warn(tips, "请输入数字");
                    } else {
                        var rex1 = /^(?!(0[0-9]{0,}$))[0-9]{1,}([.]{1}[0-9]{1,2})?$/;
                        var rex2 = /^((?!(0.0{1,2})$).*)/;
                        if (!rex1.test(inputvalue) || !rex2.test(inputvalue)) {
                            message.warn(tips, "请输入数字，最高保留两位小数");
                            this.value = "";
                        } else {
                            message.succeed(tips);
                        }
                        if (item == "inputShopArea") {
                            Input.AddShopTitle();
                        } else if (item == "input_Area_Office") {
                            Input.AddOfficeTitle();
                        }
                    }
                } else {
                    message.warn(tips, sptip);
                }
            };
        },
        //设置（住宅，别墅，商铺）所有的select事件（click，mouseleave）
        AddChildClickEvent: function (parentnode, valueshowid, tipid, hidid, dvshowid) {
            $(parentnode).each(function () {
                $(this).click(function () {
                    d.getElementById(valueshowid).innerText = this.innerText.trim();
                    d.getElementById(dvshowid).style.display = 'none';
                    Input.CheckInfo(valueshowid, tipid, hidid);
                });
            });
            d.getElementById(dvshowid).onmouseleave = function () {
                d.getElementById(dvshowid).style.display = 'none';
                Input.CheckInfo(valueshowid, tipid, hidid);
            };
        },
        //设置（写字楼）所有的select事件（click，mouseleave）
        AddChildClickTipEvent: function (parentnode, valueshowid, tipid, hidid, dvshowid, tipvalue, newtipvalue) {
            $(parentnode).each(function () {
                $(this).click(function () {
                    d.getElementById(valueshowid).innerText = this.innerText.trim();
                    d.getElementById(dvshowid).style.display = 'none';
                    Input.CheckSelInfo(valueshowid, tipid, hidid, tipvalue, newtipvalue);
                    Input.AddOfficeTitle();
                });
            });
            d.getElementById(dvshowid).onmouseleave = function () {
                d.getElementById(dvshowid).style.display = 'none';
                Input.CheckSelInfo(valueshowid, tipid, hidid, tipvalue, newtipvalue);
            };
        },
        CheckInfo: function (selid, spid, hiddenid) {
            Input.CheckSelInfo(selid, spid, hiddenid, "请选择", "");
        },
        //设置所有的select事件（click，mouseleave），并且为相对应的隐藏域赋值
        CheckSelInfo: function (selid, spid, hiddenid, tipvalue, newtipvalue) {
            if (d.getElementById(selid) != null) {
                var forvalue = d.getElementById(selid).innerText.trim();
                if (forvalue != tipvalue) {
                    $('#' + hiddenid).val(forvalue);
                    if (newtipvalue != "") {
                        message.warn(d.getElementById(spid), newtipvalue);
                    } else {
                        message.succeed(d.getElementById(spid));
                    }
                } else {
                    message.warn(d.getElementById(spid), tipvalue);
                }
            }
        },
        //初始化房源类型的click事件，
        AddHouseTypeOnclick: function (parentID, newcss) {
            $(parentID).each(function () {
                $(this).click(function () {
                    Input.changeclass(this, parentID, newcss);
                    var housetypeid = this.id;
                    var housetypesel = "住宅";
                    var housetypename = '小区名称';
                    var spInputPname = d.getElementById('spInputPname');
                    if (housetypeid == "apoffice") {
                        housetypesel = "写字楼";
                        housetypename = '写字楼名称';
                        spInputPname.innerHTML = housetypename;
                        idMap.houseType.value = housetypesel;
                        Input.InitialOfficeEvent();
                    } else if (housetypeid == "apshop") {
                        housetypesel = "商铺";
                        housetypename = '商铺名称';
                        spInputPname.innerHTML = housetypename;
                        idMap.houseType.value = housetypesel;
                        Input.InitialShopEvent();
                    } else {
                        if (housetypeid == "apvilla") {
                            housetypesel = "别墅";
                            $("#spanbs").show();
                            $("#sbzz").hide();
                        } else {
                            $("#spanbs").hide();
                            $("#sbzz").show();
                        }
                        spInputPname.innerHTML = housetypename;
                        idMap.houseType.value = housetypesel;
                        d.getElementById("tbhousevilla").style.display = '';
                        Input.InitialHouseEvent();
                    }


                });
            });
        },


        //修改房源类型选中样式
        changeclass: function (item, parentID, newcss) {
            $(parentID).removeClass();
            item.className = newcss;
        },
        //设置商铺标题内容
        AddShopTitle: function () {
            var inputAreaZz = "";
            if ($("#inputShopArea").val() != "") {
                inputAreaZz = $("#inputShopArea").val() + "平米";
            }
            var inputProjnameZz = "";

            if (idMap.projname.value !== '请输入小区名称') {
                inputProjnameZz = idMap.projname.value;
            }
            if (inputProjnameZz.length > 10) {
                inputProjnameZz = inputProjnameZz.substring(0, 10);
            }
            var shoptype = d.getElementById("dvShopType").innerText.trim();
            if (shoptype == "请选择商铺类型") {
                shoptype = "";
            }
            idMap.title.value = idMap.district.value + idMap.comarea.value + inputProjnameZz + " " + shoptype + inputAreaZz;
        },
        //设置写字楼标题内容
        AddOfficeTitle: function () {
            var inputAreaZz = "";
            if ($("#input_Area_Office").val() != "") {
                inputAreaZz = $("#input_Area_Office").val() + "平米";
            }
            var inputProjnameZz = "";

            if (idMap.projname.value != '请输入小区名称') {
                inputProjnameZz = idMap.projname.value;
            }
            if (inputProjnameZz.length > 10) {
                inputProjnameZz = inputProjnameZz.substring(0, 10);
            }
            var officetype = d.getElementById("dvOfficeType").innerText.trim();
            var officegrade = d.getElementById("dvOfficeGrade").innerText.trim();
            if (officetype == "请选择类型") {
                officetype = "";
            }
            if (officegrade == "请选择级别") {
                officegrade = "";
            }
            idMap.title.value = idMap.district.value + idMap.comarea.value + inputProjnameZz + " " + officetype + officegrade + inputAreaZz;

        },
        //整租合租的切换改变样式和相应内容
        changeRentType: function (item) {
            Input.changeclass(item, '#dvrenttype a', 'currentA');
            var rid = item.id;
            if (rid == "rd_zhengzu") {
                d.getElementById('td_zz').style.display = '';
                d.getElementById('td_hz').style.display = 'none';
                d.getElementById('HidMright').value = '整租';
                $(".a_sec").show();
            } else {
                d.getElementById('td_zz').style.display = 'none';
                d.getElementById('td_hz').style.display = '';
                d.getElementById('HidMright').value = '合租';
                $(".a_sec").hide();
            }
        },
        //拼凑区县tr td部分
        InitialDistricts: function () {
            var districtsStr = Districts; //区县数组
            if (idMap.houseType.value == '' || idMap.houseType.value == '住宅') {
                districtsStr = Districts;
            } else if (idMap.houseType.value == '别墅') {
                districtsStr = Districts_b;
            } else if (idMap.houseType.value == '写字楼') {
                districtsStr = Districts_xz;
            } else if (idMap.houseType.value == '商铺') {
                districtsStr = Districts_sp;
            }
            districtinfos = "";
            var indexC = 1;
            for (var i = 0; i < districtsStr.length; i++) {
                if (indexC == 1) {
                    districtinfos += "<tr> <td class='item'  onclick='Input.Districts_c(this)' index=" + districtsStr[i].index + ">" + districtsStr[i].name + "</td>";
                    indexC++;
                    continue;
                }
                if (indexC == 2) {
                    districtinfos += " <td class='item'  onclick='Input.Districts_c(this)' index=" + districtsStr[i].index + ">" + districtsStr[i].name + "</td>";
                    indexC++;
                    continue;
                }
                if (indexC == 3) {
                    districtinfos += " <td class='item'  onclick='Input.Districts_c(this)' index=" + districtsStr[i].index + ">" + districtsStr[i].name + "</td></tr>";
                    indexC = 1;
                    continue;
                }
            }
        },
        //拼凑区县table 并且设置鼠标滑过事件
        createDistricts: function () {
            Input.InitialDistricts();
            var str2 = "<table border='0' cellpadding='5' cellspacing='0' >" + districtinfos + " </table>";
            var that = tipMap.address;
            var selDistrict_t = $("#selDistrict_t");
            selDistrict_t.show();
            selDistrict_t.html(str2);
            selDistrict_t.mouseleave(function () {
                if (selDistrict_t.html() !== "") {
                    if (idMap.district.value === "") {
                        message.warn(that, "请选择区域");
                    } else {
                        selDistrict_t.hide();
                        if (idMap.comareaText.innerHTML === "" || idMap.comareaText.innerHTML === "请选择商圈") {
                            message.warn(that, "请选择商圈");
                        } else {
                            message.succeed(that);
                        }
                        idMap.districtText.innerHTML = idMap.district.value;
                    }
                }
            });
        },
        //点击区县显示商圈信息
        Districts_c: function (item) {
            var index = item.getAttribute("index");
            var areaNew = Area;
            if (idMap.houseType.value == '' || idMap.houseType.value == '住宅') {
                areaNew = Area;
            } else if (idMap.houseType.value == '别墅') {
                areaNew = Area_b;
            } else if (idMap.houseType.value == '写字楼') {
                areaNew = Area_xz_new;
            } else if (idMap.houseType.value == '商铺') {
                areaNew = Area_sp_new;
            }
            this.area = areaNew[index];
            idMap.district.value = item.innerHTML;
            idMap.districtText.innerHTML = item.innerHTML;
            idMap.comarea.value = '';
            Input.createComarea();
            $("#selDistrict_t").hide();
        },
        InitialComrea: function () {
            var area_a = this.area;
            var indexC = 1;
            Input.comareainfos = "";

            for (var i = 0; i < area_a.length; i++) {
                if (typeof (area_a[i]) != "undefined") {
                    if (indexC == 1) {
                        Input.comareainfos += "<tr> <td class='item'  onclick='Input.createComarea_bs_c(this)' index=" + area_a[i].substring(area_a[i].indexOf(",") + 1, area_a[i].length) + ">" + area_a[i].substring(area_a[i].indexOf(",") + 1, area_a[i].length) + "</td><td class='item' size=2 style='width:34px'></td><td     class='item' size=3 style='width:34px'></td></tr>";
                        indexC++;
                        continue;
                    }
                    if (indexC == 2) {
                        var str2;
                        str2 = " <td class='item'  onclick='Input.createComarea_bs_c(this)' index=" + area_a[i].substring(area_a[i].indexOf(",") + 1, area_a[i].length) + ">" + area_a[i].substring(area_a[i].indexOf(",") + 1, area_a[i].length) + "</td>"
                        Input.comareainfos = Input.comareainfos.replace("<td class='item' size=2 style='width:34px'></td>", str2);
                        indexC++;
                        continue;
                    }
                    if (indexC == 3) {
                        var str3;
                        str3 = " <td class='item'  onclick='Input.createComarea_bs_c(this)' index=" + area_a[i].substring(area_a[i].indexOf(",") + 1, area_a[i].length) + ">" + area_a[i].substring(area_a[i].indexOf(",") + 1, area_a[i].length) + "</td>"
                        Input.comareainfos = Input.comareainfos.replace("<td     class='item' size=3 style='width:34px'></td>", str3)
                        indexC = 1;
                        continue;

                    }
                }
            }

        },
        //加载商圈信息
        createComarea: function () {
            Input.InitialComrea();
            if (idMap.district.value == "" || idMap.district.value == "请选择区域") {
                alert("请选择区域");
                return;
            }
            var str2 = "<table border='0' cellpadding='5' cellspacing='0' > " + Input.comareainfos + " </table></div>";
            var selComarea_t = $("#selComarea_t");
            selComarea_t.show();
            selComarea_t.html(str2);
            message.tips(tipMap.address, "请选择商圈");
            selComarea_t.mouseleave(function () {
                if (idMap.comarea.value == "") {
                    message.warn(tipMap.address, "请选择商圈");
                } else {
                    selComarea_t.hide();
                    if (idMap.address.value == "") {
                        message.warn(tipMap.address, "请填写小区地址");
                    } else {
                        message.succeed(tipMap.address)
                        idMap.comareaText.innerHTML = idMap.comarea.value;
                    }
                }
            });
        },
        //点击商圈操作
        createComarea_bs_c: function (item) {
            var index = item.getAttribute("index");
            idMap.comarea.value = item.innerHTML;
            idMap.comareaText.innerHTML = item.innerHTML;
            if (idMap.comareaText.innerHTML != "请选择商圈" && idMap.comareaText.innerHTML != "") {
                message.succeed(tipMap.address);
                Input.AddTitleContext();
            } else {
                message.warn(tipMap.address, "请选择商圈");
            }
            $("#selComarea_t").hide();
        },
        //自动添加标题
        AddTitleContext: function () {
            var selRoomAndHall = "";
            if (Input.isHouseunit) {
                selRoomAndHall = idMap.room.value + "室" + idMap.hall.value + "厅" + idMap.toliet.value + "卫";
            }
            if (idMap.houseType.value == "写字楼") {
                Input.AddOfficeTitle();
            } else if (idMap.houseType.value == "商铺") {
                Input.AddShopTitle();
            } else {
                var inputAreaZz = "";
                if (idMap.area.value != "") {
                    inputAreaZz = idMap.area.value + "平米";
                }
                var inputProjnameZz = "";

                if (idMap.projname.value != '请输入小区名称') {
                    inputProjnameZz = idMap.projname.value;
                }
                if (inputProjnameZz.length > 10) {
                    inputProjnameZz = inputProjnameZz.substring(0, 10);
                }
                if (d.getElementById("rd_zhengzu").className == "currentA") {
                    idMap.title.value = idMap.district.value + idMap.comarea.value + inputProjnameZz + " " + inputAreaZz + selRoomAndHall;
                } else {
                    var selHouseDecorationBsZz = "";
                    selHouseDecorationBsZz = $("#HidHzRoomCount").val();
                    if (selHouseDecorationBsZz != "") {
                        selHouseDecorationBsZz = selHouseDecorationBsZz + "户合租";
                    }
                    idMap.title.value = idMap.district.value + idMap.comarea.value + inputProjnameZz + " " + selHouseDecorationBsZz + inputAreaZz;
                }
            }

        },
        //地址事件操作和合法验证
        addressAction: function () {
            /*projaddress*/
            idMap.address.onfocus = function () {
                message.tips(tipMap.address, '(请输入小区地址，例如：西直门桥东北侧）');
            };
            idMap.address.onblur = function () {
                validate.address();
            };
        },
        //初始化发布页全选按钮
        initializeInput: function () {
            var inputs = document.getElementsByTagName('INPUT');
            for (var i = 0; i < inputs.length; i++) {
                var inputname = inputs[i].name, type = inputs[i].type;
                //文本框onchange时判断数据类型；onblur时判断是否必填
                var iname = inputname.split("_");
                if (iname.length >= 4) {
                    //设定图片数量
                    if (iname[3] == "EXTENDINFO") {
                        var colObj = getCol(iname[3] + "_" + iname[4]);
                        if (colObj && colObj.max) {
                            d.getElementById("button_" + iname[3] + "_" + iname[4]).setAttribute("maxpic", colObj.max);
                        }
                    }
                }
            }

            $("#button_equitmentall").on('click', function () {
                var arr = [];
                if (idMap.houseType.value === "住宅") {
                    arr = $("#sbzz").find("input[type='checkbox']");
                } else {
                    arr = $("#spanbs").find("input[type='checkbox']");
                }
                if (this.value === '全不选') {
                    this.value = '全选';
                    arr.attr("checked", false);

                } else {
                    this.value = '全不选';
                    arr.attr("checked", true);


                }
            });
        },

        // 总体验证
        checkAll: function () {
            if (!InputSuggesTion.checkprojname()) {
                alert("小区格式错误请重新填写");
                idMap.projname.focus();
                return false;
            }

            if (!validate.address()) {
                alert("地址格式错误请重新填写");
                idMap.address.focus();
                return false;
            }

            if (!validate.contact()) {
                alert("你输入的联系人错误，请重新输入");
                idMap.contact.focus();
                return false;
            }
            if (!editor.afterBlur()) {
                alert("你输入的房源描述错误，请重新输入");
                $("#td_DESCRIPTION").focus();
                return false;
            }

            if (!validate.title()) {
                alert("你输入的房源标题错误，请重新输入");
                idMap.title.focus();
                return false;
            }
            if (mobile.istruephone == false) {
                mobile.errmsg !== '' ? alert(mobile.errmsg) : alert('联系人验证失败');
                idMap.mobile.focus();
                return false;
            }
            if (idMap.houseType.value == "写字楼") {
                if (!checkInputValue("spOfficeType")) {
                    alert("请选择写字楼类别");
                    return false;
                }
                if (!checkInputValue("spOfficeGrade")) {
                    alert("请选择写字楼级别");
                    return false;
                }
                if (!checkInputValue("input_Area_Office")) {
                    alert("请填写写字楼面积");
                    return false;
                }
                if (!checkInputValue("input_FLOOR_office")) {
                    alert("请填写写字楼在第几层");
                    return false;
                }
                if (!checkInputValue("input_TOTLEFLOOR_office")) {
                    alert("请填写总楼层");
                    return false;
                }
                if (parseFloat($("#input_TOTLEFLOOR_office").val()) < parseFloat($("#input_FLOOR_office").val())) {
                    alert("所在楼层不能大于总楼层");
                    return false;
                }

                if (!checkInputValue("input_PRICE_Office")) {
                    alert("请填写写字楼租金");
                    return false;
                }
                if (!checkInputValue("spOfficePayInfo")) {
                    alert("请输入支付方式");
                    return false;
                }
                if (!checkInputValue("inputWuYeFee")) {
                    alert("请填写物业费");
                    return false;
                }
            } else if (idMap.houseType.value == "商铺") {
                if (!checkInputValue("spShopType")) {
                    alert("请选择商铺类型");
                    return false;
                }
                if (!checkInputValue("inputShopArea")) {
                    alert("请输入商铺面积");
                    return false;
                }
                if (!checkInputValue("Price_sp")) {
                    alert("请输入商铺租金");
                    return false;
                }
                if (!checkInputValue("spShopPayInfo")) {
                    alert("请选择支付方式");
                    return false;
                }
                if (!checkInputValue("input_FLOOR_shop")) {
                    alert("请填写写字楼在第几层");
                    return false;
                }
                if (!checkInputValue("input_TOTLEFLOOR_shop")) {
                    alert("请填写总楼层");
                    return false;
                }
                if (parseFloat($("#input_TOTLEFLOOR_shop").val()) < parseFloat($("#input_FLOOR_shop").val())) {
                    alert("所在楼层不能大于总楼层");
                    return false;
                }
                // 经营类别
                var cblstShopCount = $("#cblstShopFor input:checked").length;
                if (cblstShopCount === 0) {
                    alert("请选择经营类别");
                    return false;
                }
                var checkeds = "";
                $("#cblstShopFor input:checked").each(function (e, v) {
                    checkeds += $(v).val() + ",";
                })

                $("#cblstShopForHid").val(checkeds);
            }
            else {
                if (!validate.area()) {
                    alert("房屋面积格式错误请重新填写");
                    idMap.area.focus();
                    return false;
                }
                if (!validate.price()) {
                    alert("房屋价格格式错误请重新填写");
                    idMap.price.focus();
                    return false;
                }
                if (!validate.district()) {
                    alert("房屋位置格式错误请重新填写");
                    $("#selDistrict").focus();
                    return false;
                }
                if (!validate.floor()) {
                    alert("房屋楼层格式错误请重新填写");
                    idMap.floor.focus();
                    return false;
                }
                if (!validate.houseunit()) {
                    alert("房屋户型错误请重新填写");
                    idMap.hall.focus();
                    return false;
                }
                if (!validate.forward()) {
                    alert("请选择朝向");
                    idMap.forward.focus();
                    return false;
                }
                d.getElementById('hid_floor').value = idMap.floor.value;
                d.getElementById('hid_totalfloor').value = idMap.totalFloor.value;
                if ($("#txt_build_xq").val() != "") {
                    if (isNaN($("#txt_build_xq").val())) {
                        alert("幢/号/层只能是数字");
                        return false;
                    }
                }
                if ($("#txt_build_xq1").val() != "") {
                    if (isNaN($("#txt_build_xq1").val())) {
                        alert("单元只能是数字");
                        return false;
                    }
                }
                if ($("#RoomNumber_xq").val() != "") {
                    if (isNaN($("#RoomNumber_xq").val())) {
                        alert("室只能是数字");
                        return false;
                    }
                }
                if ($("#HidPayInfo").val() == "") {
                    message.warn(tipMap.price, "请选择写支付方式");
                    alert("请选择支付方式");
                    return false;
                }
            }

            //处理图片
            var imgnodes = document.getElementsByName("uploadimgs");
            if (imgnodes) {
                if (imgnodes.length > 0) {
                    d.getElementById("input_ISIMAGE").value = "1";
                }
                else {
                    d.getElementById("input_ISIMAGE").value = "0";
                }
                d.getElementById("input_EXTENDINFO_xiaoqwj").value = '';

                d.getElementById("name_input_EXTENDINFO_xiaoqwj").value = '';
                d.getElementById("name_input_EXTENDINFO_huxt").value = '';
                d.getElementById("name_input_EXTENDINFO_shint").value = '';
                for (var i = 0; i < imgnodes.length; i++) {
                    var imgtypname = imgnodes[i].getAttribute("type");
                    var imghidden = d.getElementById(imgtypname.replace("button", "input"));
                    var namehidden = d.getElementById("name_" + imgtypname.replace("button", "input"));
                    var imagurl = imgnodes[i].src.replace("viewimage/", "").replace("/80x60", "");
                    imghidden.value += imagurl + ",";
                    if (d.getElementById("name_" + imgnodes[i].id).value == '') {
                        d.getElementById("name_" + imgnodes[i].id).className = "inputerror";
                        d.getElementById('sp_Msg').innerHTML = '图片名称不能为空。';
                        window.document.popups['divup_box'].open();
                        return false;
                    }
                    namehidden.value += d.getElementById("name_" + imgnodes[i].id).value + ",";
                }
            }
            if (usreyht == 'True') { mobile.istruephone = true; } //当不采用手机认证或有一号通时默认验证通过


        },
        isNumber: function (oNum) {
            if (!oNum) return false;
            var strP = /^\d+(\.\d+)?$/;
            if (!strP.test(oNum)) return false;
            try {
                if (parseFloat(oNum) != oNum) return false;
            }
            catch (ex) {
                return false;
            }
            return true;
        },

        JumpHouse: function (rec, next) {
            var recent = d.getElementById(rec);
            if (Input.isNumber(recent.value)) {
                d.getElementById(next).focus();
            } else {
                recent.focus();
                return false;
            }
        },


        SendButtonCheck: function (where) {
            var binput = Input.checkAll();
            if (binput != false) {

                var newbtn = d.getElementById("aSend");
                var curHouseid = $("#HidhouseId").val();
                if (where != null) {
                    where.style.display = "none";
                    newbtn.style.display = "";
                    if (where.innerHTML === "重新发布")
                    { curHouseid = ''; }
                }
                //异步提交保存
                $.ajax({
                    type: "POST",
                    url: "/rentinput/PostService/ActionInput.aspx",
                    contentType: "application/x-www-form-urlencoded; charset=utf-8",
                    data: {
                        input_DISTRICT: $("#input_DISTRICT").val(),
                        input_COMAREA: $("#input_COMAREA").val(),
                        input_TITLE: $("#input_TITLE").val(),
                        //周边配套
                        input_AROUNDCONDITION: $("#input_AROUNDCONDITION").val(),
                        //描述
                        input_DESCRIPTION_New: $("#input_DESCRIPTION_New").val(),
                        //联系人
                        input_CONTACTPERSON: $("#input_CONTACTPERSON").val(),
                        //电话
                        input_MOBILECODE: $("#input_MOBILECODE").val(),
                        userid: $("#HidUserId").val(),
                        username: $("#username").val(),
                        //check状态
                        checkedstatu: $("#checkedstatu").val(),
                        //楼盘Id
                        input_PROJCODE: $("#input_PROJCODE").val(),
                        //楼盘name
                        input_PROJNAME: $("#input_PROJNAME").val(),
                        //地址
                        input_ADDRESS: $("#input_ADDRESS").val(),
                        //支付方式
                        HidPayInfo: $("#HidPayInfo").val(),
                        //幢/号/层
                        txt_build_xq: $("#txt_build_xq").val(),
                        //单元
                        txt_build_xq1: $("#txt_build_xq1").val(),
                        //室
                        RoomNumber_xq: $("#RoomNumber_xq").val(),
                        //朝向
                        HidFoward: $("#HidFoward").val(),
                        //装修
                        HidFitment: $("#HidFitment").val(),
                        //租制方式
                        HidMright: $("#HidMright").val(),
                        //room居室
                        sel_room: $("#sel_room").val(),
                        //厅
                        sel_hall: $("#sel_hall").val(),
                        //卫
                        sel_wc: $("#sel_wc").val(),
                        //合租户型
                        HidHzRoom: $("#HidHzRoom").val(),
                        //限制男女条件
                        HidHzLimit: $("#HidHzLimit").val(),
                        //是否短租
                        HidHzRoomCount: $("#HidHzRoomCount").val(),
                        //煤气/天然气
                        ck_room_gas: $("#ck_room_gas:checked").val(),
                        //宽带
                        ck_room_online: $("#ck_room_online:checked").val(),
                        //电视
                        ck_room_onlinetv: $("#ck_room_onlinetv:checked").val(),
                        //暖气
                        ck_room_heating: $("#ck_room_heating:checked").val(),
                        //电梯
                        ck_room_elevator: $("#ck_room_elevator:checked").val(),
                        //车位
                        ck_room_packing: $("#ck_room_packing:checked").val(),
                        //储藏室/地下室
                        ck_room_basement: $("#ck_room_basement:checked").val(),
                        //露台/花园
                        ck_room_garden: $("#ck_room_garden:checked").val(),
                        //电话
                        ck_room_phone: $("#ck_room_phone:checked").val(),
                        //空调
                        ck_room_air: $("#ck_room_air:checked").val(),
                        //冰箱
                        ck_room_ice: $("#ck_room_ice:checked").val(),
                        //洗衣机
                        ck_room_wash: $("#ck_room_wash:checked").val(),
                        //热水器
                        ck_room_water: $("#ck_room_water:checked").val(),
                        //微波炉
                        ck_room_ovens: $("#ck_room_ovens:checked").val(),
                        //厨具
                        ck_room_kitchenware: $("#ck_room_kitchenware:checked").val(),
                        //床
                        ck_room_bed: $("#ck_room_bed:checked").val(),
                        //家具
                        ck_room_others: $("#ck_room_others:checked").val(),
                        //车库
                        ckCheKu: $("#ckCheKu:checked").val(),
                        //露台
                        ckLuTai: $("#ckLuTai:checked").val(),
                        //游泳池
                        ckYouYongChi: $("#ckYouYongChi:checked").val(),
                        //阁楼
                        ckGeLou: $("#ckGeLou:checked").val(),
                        //阳光房
                        ckFang: $("#ckFang:checked").val(),
                        //面积
                        input_Area: $("#input_Area").val(),
                        //价格
                        input_PRICE: $("#input_PRICE").val(),
                        //所在楼层
                        input_FLOOR: $("#input_FLOOR").val(),
                        //总楼层
                        input_TOTLEFLOOR: $("#input_TOTLEFLOOR").val(),
                        //写字楼面积
                        input_Area_Office: $("#input_Area_Office").val(),
                        //写字楼类型
                        HidOfficeType: $("#HidOfficeType").val(),
                        //写字楼级别
                        hidOfficeGrade: $("#hidOfficeGrade").val(),
                        //是否包含物业费
                        radiowuye_xz_H: $("#radiowuye_xz_H").val(),
                        //写字楼是否可分割
                        radio_fenge_xz_id: $("#radio_fenge_xz_H").val(),
                        //写字楼装修程度
                        radiozhuangxiu_zx_id: $("#radiozhuangxiu_xz_H").val(),
                        //物业费
                        inputWuYeFee: $("#inputWuYeFee").val(),
                        //物业公司
                        InputOfficeCompany: $("#InputOfficeCompany").val(),
                        //写字楼租金
                        input_PRICE_Office: $("#input_PRICE_Office").val(),
                        //写字楼租金方式
                        rblstOfficePriceType: $("#zhifufangshi_xz_H").val(),
                        //有效期
                        youxiaoqi_xz_H: $("#youxiaoqi_xz_H").val(),
                        //写字楼所在楼层
                        input_FLOOR_office: $("#input_FLOOR_office").val(),
                        //写字楼所在总楼层
                        input_TOTLEFLOOR_office: $("#input_TOTLEFLOOR_office").val(),
                        //商铺面积
                        inputShopArea: $("#inputShopArea").val(),
                        //商铺是否可分割
                        radio_fenge_sp_id: $("#radio_fenge_sp_H").val(),
                        //商铺类别
                        radio_leibie_sp_H: $("#radio_leibie_sp_H").val(),
                        //商铺类型
                        HidShopType: $("#HidShopType").val(),
                        //商铺是否转让
                        rblstShopRentType: $("#rblstShopRentType").val(),
                        //商铺所在楼层
                        input_FLOOR_shop: $("#input_FLOOR_shop").val(),
                        //商铺总楼层
                        input_TOTLEFLOOR_shop: $("#input_TOTLEFLOOR_shop").val(),
                        //商铺状态
                        rblstShopState: $("#dangqianstate_sp_H").val(),
                        //商铺价格
                        Price_sp: $("#Price_sp").val(),
                        //商铺价格类型
                        rblstShopPriceType: $("#zhifufangshi_sp_H").val(),
                        //商铺有效期
                        youxiaoqi_sp_H: $("#youxiaoqi_sp_H").val(),
                        //商铺装修
                        radiozhuangxiu_sp_id: $("#radiozhuangxiu_sp_H").val(),
                        //商铺可经营项目
                        cblstShopFor: $("#cblstShopForHid").val(),
                        //客梯
                        checkboxPeiTao_sp1: $("#checkboxPeiTao_sp1:checked").val(),
                        //货梯
                        checkboxPeiTao_sp2: $("#checkboxPeiTao_sp2:checked").val(),
                        //停车位
                        checkboxPeiTao_sp3: $("#checkboxPeiTao_sp3:checked").val(),
                        //暖气
                        checkboxPeiTao_sp4: $("#checkboxPeiTao_sp4:checked").val(),
                        //空调
                        checkboxPeiTao_sp5: $("#checkboxPeiTao_sp5:checked").val(),
                        //网络
                        checkboxPeiTao_sp6: $("#checkboxPeiTao_sp6:checked").val(),
                        //电话
                        hidmobile: $("#hidmobile").val(),
                        // 400
                        hidphone400: $("#hidphone400").val(),
                        //房源类型  写字楼 商铺 住宅 别墅
                        MyHouseType: $("#MyHouseType").val(),
                        //入住时间
                        InputInTime: $("#InputInTime").val(),
                        //交通信息
                        input_TRAFFICINFO: $("#input_TRAFFICINFO").val(),
                        //标题图
                        input_TITLEIMG: $("#input_TITLEIMG").val(),
                        //室内图
                        input_EXTENDINFO_shint: $("#input_EXTENDINFO_shint").val(),
                        //图片名称
                        name_input_EXTENDINFO_xiaoqwj: $("#name_input_EXTENDINFO_shint").val(),
                        //是否多图
                        IsBest: $("#IsBest").val(),
                        //图片数
                        ImgCount: $("#ImgCount").val(),

                        HidhouseId: curHouseid
                    },
                    dataType: "json",
                    success: function (datas) {
                        if (datas) {
                            switch (datas.type) {
                                //发布修改验证错误                               
                                case 1:
                                    alert(datas.mes);
                                    where.style.display = "";
                                    newbtn.style.display = "none";
                                    break;
                                    //成功之后跳转成功页面                              
                                case 2:
                                    window.location = "/Rentinput/input/RentInputSuccess.aspx?gettype=" + datas.gettype + "&houseid=" + datas.houseid + "&title=" + datas.title + "&district=" + datas.district + "&comarea=" + datas.comarea + "&purpose=" + datas.purpose + "&Behavioural_Analysis_P=" + datas.Behavioural_Analysis_P;
                                    break;
                                    //成功之后跳转购买推广页面                              
                                case 3:
                                    window.location = "/RentInput/Input/BuyingService.aspx?houseid=" + datas.houseid + "&AdPos1=1&title=" + datas.title + "&district=" + datas.district + "&comarea=" + datas.comarea + "&Behavioural_Analysis_P=" + datas.Behavioural_Analysis_P;
                                    break;
                                default:
                                    alert("提交错误!");
                                    where.style.display = "";
                                    newbtn.style.display = "none";
                                    break;

                            }
                        }
                    }
                });

            }
            return false;
        }
    };
    var editPage = function () {
        idMap.districtText.innerHTML = idMap.district.value;
        idMap.comareaText.innerHTML = idMap.comarea.value;
        if (d.getElementById("rd_hezu").checked == true) {
            d.getElementById('ZhengzuInfo').style.display = 'none';
        }

        if (d.getElementById("input_PROJCODE").value != "-2") {
            InputSuggesTion.UseProjListItem(idMap.address.value, idMap.district.value, idMap.comarea.value, d.getElementById("input_PROJCODE").value, '', 'isedit');
            $("#trdistrict").hide();
        }
        else {
            d.getElementById("trdistrict").style.display = '';
        }

        d.getElementById("sp_districtcomarea").innerHTML = idMap.district.value + "-" + idMap.comarea.value + " " + idMap.address.value;
        idMap.floor.value = d.getElementById('hid_floor').value;
        idMap.totalFloor.value = d.getElementById('hid_totalfloor').value;

        tipMap.title.innerHTML = '';
        tipMap.title.className = '';
        //处理备注
        var imgsArr = new Array();
        var titleimg = d.getElementById('input_TITLEIMG').value;
        if (vals) {
            for (var n = 0; n < vals.length; n++) {
                var ipt = "input_" + vals[n].col;
                if (d.getElementById(ipt) && d.getElementById(ipt).type) {
                    var iptObj = d.getElementById(ipt);

                    if (ipt.indexOf("input_EXTENDINFO_") == 0 && vals[n].val != "") {
                        imgsArr.push(ipt + "|" + vals[n].val);
                        iptObj.value = "";
                    }
                }
            }
        }
        //处理图片  
        for (var i = imgsArr.length - 1; i >= 0; i--) {
            var imgsItem = imgsArr[i].split("|");
            var imgItem = imgsItem[1].split("--");
            if (imgItem.length > 0) {
                var imgItemurl = imgItem[0].split(',');
                var imgItemname = imgItem[1].split(',');
                for (var img = 0; img < imgItemurl.length; img++) {
                    if (imgItemurl[img] != '') {
                        PhotoInitial.AddImg(imgItemname[img], imgItemurl[img], imgsItem[0].replace("input", "button"));
                    }
                }
            }
        }
        if (titleimg != "" && titleimg != "http://img.fang.com/rent/image/usercenter/egimg.gif") {
            var imgsa = PhotoInitial.getAE(titleimg);
            if (imgsa != null && typeof (imgsa) != "undefined") {
                PhotoInitial.settitleimg(titleimg, imgsa);
            }
        }

    };
    var checkInputValue = function (item) {
        var inputvalue = d.getElementById(item).innerHTML;
        if (inputvalue == "") {
            inputvalue = d.getElementById(item).value;
        }
        inputvalue = inputvalue.replace(/\s+/g, "");
        var isvalid = false;
        if (inputvalue != "" && inputvalue.indexOf("请选择") < 0 && inputvalue != "undefined") {
            isvalid = true;
        } else {
            d.getElementById(item).focus();
        }
        return isvalid;
    };
    /*
    * 验证
    */
    var validate = {
        // 标题
        title: function () {
            var title = idMap.title.value.trim();
            var that = tipMap.title;
            var isTitle = false;
            if (Common.GetLength(title) >= 10 && Common.GetLength(title) <= 60 && title != "吸引人的标题可以更快的促进交易哦！") {
                if (Common.isBadwords(title)) {
                    message.warn(that, '出租房源标题含有敏感字符');
                }
                else {
                    if (/^[-]?\d+$/.test(title)) {
                        message.warn(that, '房源标题不可全为数字');
                    }
                    else if (/\d{7}/.test(title)) {
                        message.warn(that, '房源标题不允许包含联系方式');
                    }
                    else {
                        message.succeed(that);
                        isTitle = true;
                    }
                }
            }
            else if (title == "" || title == "吸引人的标题可以更快的促进交易哦！") {
                message.warn(that, '请填写出租房源标题');
            }
            else {
                message.warn(that, '出租房源标题限5-30个');
            }
            return isTitle;
        },
        // 小区地址
        address: function () {
            var projaddress = idMap.address.value.trim();
            var isPrjaddress = false;
            var that = tipMap.address;
            if (Common.GetLength(projaddress) >= 1 && Common.GetLength(projaddress) <= 100) {
                if (Common.isBadwords(projaddress)) {
                    message.warn(that, '区地址含有敏感字符');
                }
                else {
                    if (/^[-]?\d+$/.test(projaddress)) {
                        message.warn(that, '小区地址不能全为数字');
                    }
                    else if (/\d{7}/.test(projaddress)) {
                        message.warn(that, '小区地址不允许包含联系方式');
                    }
                    else {
                        message.succeed(that);
                        isPrjaddress = true;
                    }
                }
            }
            else if (projaddress == "") {
                message.warn(that, '请填写小区地址');
            }
            else {
                message.warn(that, '小区地址限1-100个字符');
                that.className = "RedWZ";
            }
            return isPrjaddress;
        },
        // 面积
        area: function () {
            var area = idMap.area.value;
            var that = tipMap.area;
            var isArea = false;
            if (area == "") {
                message.warn(that, '请填写出租面积');
            } else if (!isNaN(area) && area.indexOf("0") != 0 && area.indexOf(".") != 0) {
                if (area > 5000 || area < 2) {
                    message.warn(that, '请输入1-5000之内的数值');
                }
                else {
                    isArea = true;
                    message.succeed(that);
                    $("#hidhousearea").val(area);
                }
            } else {
                message.warn(that, '只允许输入数字和小数点，且不能以0和小数点开头');
            }
            return isArea;
        },
        // 租金
        price: function () {
            var price = idMap.price.value;
            var that = tipMap.price;
            var isPrice = false;
            if (price == "") {
                message.warn(that, '请填写租金');
            } else if (/^[-]?\d+$/.test(price)) {
                if (price > 300000 || price < 100) {
                    message.warn(that, '请输入100-300000之内的整数');
                }
                else {
                    message.succeed(that);
                    isPrice = true;
                }
            } else {
                message.warn(that, '请输入100-300000之内的整数');
            }
            return isPrice;
        },
        // 联系人
        contact: function () {
            var inputemail = idMap.contact.value.trim();
            var that = tipMap.contact;
            var isContactman = false;
            if (inputemail == "") {
                message.warn(that, '请填写联系人');
            } else if (Common.GetLength(inputemail) < 1 || Common.GetLength(inputemail) > 10) {
                message.warn(that, '联系人长度必须为1-10个字符');
            } else {
                message.succeed(that);
                isContactman = true;
            }
            return isContactman;
        },
        // 楼层
        floor: function (floorid, totalFloorid) {
            var floor = idMap.floor.value;
            var totalfloor = idMap.totalFloor.value;
            if (floorid) {
                floor = d.getElementById(floorid).value;
            }
            if (totalFloorid) {
                totalfloor = d.getElementById(totalFloorid).value;
            }
            var that = tipMap.floor;
            var isFloor = false;
            if (floor == '') {
                message.warn(that, '请填写所在楼层');
            }
            else if (totalfloor == '') {
                message.warn(that, '请填写总楼层');
            }
            else if (/^[-]?\d+$/.test(floor) && /^[0-9]*[1-9][0-9]*$/.test(totalfloor)) {
                if (parseInt(floor, 10) > parseInt(totalfloor, 10)) {
                    message.warn(that, '总楼层≥所在楼层');
                }
                else if (parseInt(floor, 10) == 0 || parseInt(totalfloor, 10) == 0) {
                    message.warn(that, '请正确填写楼层');
                }
                else {
                    message.succeed(that);
                    isFloor = true;
                }
            }
            else {
                if (/^[-]?\d+$/.test(floor)) {
                    message.warn(that, '总楼层必须为大于0数字');
                }
                else {
                    message.warn(that, '楼层必须为数字');
                }
            }
            return isFloor;
        },
        // 户型
        houseunit: function () {
            var mright = d.getElementById("HidMright");
            if (mright.value === "合租") {
                return true;
            }
            var selroom = idMap.room.value;
            var selhall = idMap.hall.value;
            var selwc = idMap.toliet.value;
            var that = tipMap.room;
            Input.isHouseunit = false;
            if (/^\d+$/.test(selhall) && /^\d+$/.test(selwc) && /^[0-9]*[1-9][0-9]*$/.test(selroom)) {
                message.succeed(that);
                Input.isHouseunit = true;
            }
            else {

                if (!/^[0-9]*[1-9][0-9]*$/.test(selroom)) {
                    message.warn(that, '居室必须为大于0数字');
                }
                else if (!/^\d+$/.test(selhall)) {
                    message.warn(that, '厅必须为数字');
                }
                else {
                    message.warn(that, '卫必须为数字');
                }
            }
            return Input.isHouseunit;
        },
        // 区县商圈
        district: function () {
            var that = tipMap.address;
            var isspAddress = false;
            if (idMap.district.value != "" && idMap.comarea.value != "") {
                isspAddress = true;
                message.succeed(that);
            } else {
                message.warn(that, '请选择区县和商圈');
            }
            return isspAddress;
        },
        // 朝向
        forward: function () {
            var that = tipMap.forward,
                isforward = false;
            if (idMap.forward.innerHTML !== "" && idMap.forward.innerHTML !== "请选择") {
                isforward = true;
            } else {
                message.warn(that, '请选择朝向');
            }
            return isforward;
        }
    };
    window.Input = Input;
    Input.onload();
}(window, jQuery, document))

