/*************************图片上传脚本****************************/
var PhotoInitial = {

    MaxLimitCount: 10, //最大上传张数 
    imageDesArray: new Array(),
    imgsCount: 0,
    maxImgCount: 10,
    typeImgCount: 20,
    PostUrl: 'http://img1u.fang.com/upload/rent?isflash=y&channel=self.houseinfo&city={city}&kind=houseinfo&sid=' + Common.rid(),
    uploadComplete: null,
    initUpload: function (fName, sid, cutype, city, isNorth, width, height, buttonImg) {
        //初始化上传
        var currentCount = 0; //每次上传时的张数
        var currentSumCount = 0; //每次上传的总张数
        var repeatCount = 0; //每次上传重复的张数
        var imgType = "button_EXTENDINFO_shint";
        var imgName = "房源图片";
        if (typeof (LocalCity) != 'undefined') {
            LocalCity = city;
        }
        var photoUrl = "http://img1.fang.com";
        if (isNorth == "Y") {
            photoUrl = 'http://img.fang.com';
        }
        var url = PhotoInitial.PostUrl.replace(/{city}/gi, city);
        jQuery("#" + sid + "_" + cutype).uploadify({
            //swf: "/ggnew/src/js/uploadify-3.2.1/uploadify.swf",
            swf: "http://esf.js.soufunimg.com/esf/zu/js/complied/uploadify-3.2.1/uploadify.swf",
            uploader: url,
            buttonImage: buttonImg || photoUrl + flashimg, //flash背景图片
            width: width || 145,
            height: height || 40,
            fileTypeDesc: '*.jpg;*.jpeg;*.gif;*.png;*.bmp',
            fileTypeExts: '*.jpg;*.jpeg;*.gif;*.png;*.bmp',
            //fileSizeLimit: '6291456', //大小限制6M
            fileSizeLimit: '3MB', //大小限制3M
            auto: true,
            multi: true,
            queueSizeLimit: 10,
            queueID: 'divQueue',
            onSelect: function (file) {
                currentCount = 0;
                repeatCount = 0;
            },
            //onSelectError: function (file, errorCode, errorMsg) {
            //    if (errorCode == -100) {
            //        alert("一次最多上传" + errorMsg + "张图片！");
            //    }
            //},
            onSelectError: function (file, errorCode, errorMsg) {
                //jQuery("#" + sid + "_" + cutype).uploadify('cancel', '*');//取消队列
            },
            onQueueComplete: function (queueData) {
                //alert("您共上传" + queueData.uploadsSuccessful + "张图片; ");
                //PhotoInitial.AllCompleteHandle(e, data);
                //if (repeatCount > 0) {
                //    alert("您共上传" + currentSumCount + "张图片，其中" + repeatCount + "张疑似重复,重复图片将会被系统自动过滤,建议查证修改.");
                //    repeatCount = 0;
                //}
            },
            onUploadComplete: function (file) {
                // alert('The file ' + file.name + ' finished processing.');
            },
            /*
            file:
                 The file object that was successfully uploaded
            data:
                The data that was returned by the server-side script (anything that was echoed by the file)
            response:
                The response returned by the server—true on success or false if no response.  If false is returned, after the successTimeout option expires, a response of true is assumed.
            */
            onUploadSuccess: function (file, data, response, base64) {
                if (data.indexOf("error:") != -1) {
                    alert("上传出错，请选择其他图片！");
                    return;
                }
                var result = data.split('|');
                if (result.length > 1) {
                    currentCount++;
                }
                if (PhotoInitial.uploadComplete != null) {
                    //新版上传图片显示返回函数，此函数可以被重写
                    PhotoInitial.uploadComplete(imgName, data, imgType);
                } else {
                    PhotoInitial.AddImg(imgName, data, imgType, base64);
                }
            },
            onUploadError: function (file, errorCode, errorMsg, errorString) {
                if (errorCode == -280 && errorString == "Cancelled") {
                    return;
                }
                if (errorCode == -230) {
                    alert("上传出错，请清除本地浏览器缓存后重试！");
                } else {
                    alert("上传出错，请重试！");
                }
                //alert("上传出错，请重试！");
                //alert('错误类型：' + errorCode + ';错误信息：' + errorMsg);
            },
            onDialogClose: function (queueData) {
                //alert(queueData.filesQueued + ' files were queued of ' + queueData.filesSelected + ' selected files. There are ' + queueData.queueLength + ' total files in the queue.');
                PhotoInitial.SelectFileOnceHandle(jQuery("#" + sid + "_" + cutype), queueData.queueLength);
            }
        });
    },


    //选中文件时触发
    SelectFileHandle: function (e, data) {
        //隐藏Flash，显示过程条
        if (jQuery("#" + e.target.id + "proccess").css("display") == "none") {
            jQuery("#" + e.target.id + "proccess").css("display", "");
            jQuery("#" + e.target.id + "Div").css("text-indent", "-9999px");
        }
    },
    SelectFileOnceHandle: function (e,queueCount) {
        var shintpic = document.getElementById("button_EXTENDINFO_shint_list");
        var xiaoqwjpic = document.getElementById("button_EXTENDINFO_xiaoqwj_list");
        var huxtpic = document.getElementById("button_EXTENDINFO_huxt_list");
        if (shintpic) {
            PhotoInitial.MaxLimitCount = shintpic.getAttribute("maxpic");
        }
        if (xiaoqwjpic) {
            PhotoInitial.MaxLimitCount = PhotoInitial.MaxLimitCount - (10 - xiaoqwjpic.getAttribute("maxpic"));
        }
        if (huxtpic) {
            PhotoInitial.MaxLimitCount = PhotoInitial.MaxLimitCount - (10 - huxtpic.getAttribute("maxpic"));
        }
        if (PhotoInitial.MaxLimitCount < queueCount) {
            e.uploadify('cancel', '*');//取消队列
           
            alert("您最多能上传10张图片");
        }
    },


    //拼凑Img标签
    AddImg: function (imgName, imgUrl, imgType, base64) {
        if (PhotoInitial.uploadComplete != null) {
            //新版上传图片显示返回函数，此函数可以被重写
            PhotoInitial.uploadComplete(imgName, imgUrl, imgType);
            return;
        }
        var nametype = "";
        switch (imgType) {
            case "button_EXTENDINFO_shint":
                //室内图
                nametype = "Sfile";
                break;
            case "button_EXTENDINFO_xiaoqwj":
                //小区相关图
                nametype = "Dfile";
                break;
            case "button_EXTENDINFO_huxt":
                //户型图
                nametype = "Ffile";
                break;
        }

        if (imgType)
            //计数减一
            var thisImgIndex = 0;
        var imgTypeObj = document.getElementById(imgType + "_list");
        if (imgTypeObj.getAttribute("maxpic")) {
            var maxpicnum = parseInt(imgTypeObj.getAttribute("maxpic"));
            thisImgIndex = PhotoInitial.typeImgCount - maxpicnum + 1;
            imgTypeObj.setAttribute("maxpic", maxpicnum - 1);
        }
        if (imgName) {
            if (imgName.indexOf('选择') != -1 || imgName.indexOf('上传') != -1) {
                imgName = imgName.substring(2) + thisImgIndex;
            }
        }
        else {
            imgName = "房源图片";
        }

        var div = document.createElement("div");
        var imgindex = PhotoInitial.imgsCount++;
     
        div.id = "imgs_" + imgindex;
        var astid = "atitleid_" + imgindex;
        div.setAttribute("type", imgType);
        div.className = "houseimg floatl";
        var host = imgUrl.substring(7, (imgUrl.indexOf(".com") + 4));
        var filenamecom = imgUrl.substring(imgUrl.indexOf(".com") + 5);
        var filename = filenamecom.substring(0, filenamecom.indexOf('.'));
        //原图
        var rfilename = "http://" + host + "/" + filename + "." + filenamecom.substring(filenamecom.indexOf('.') + 1);
        //压缩图
        var imgUrlviewi = "http://" + host + "/viewimage/" + filename + "/100x80." + filenamecom.substring(filenamecom.indexOf('.') + 1);
        //div.innerHTML = "<div class=\"img\"><p><img id='imgs_" + imgType + "_" + PhotoInitial.imgsCount + "'type='" + imgType + "' name=\"uploadimgs\" rsrc=\"" + rfilename + "\" src=\"" + imgUrlviewi + "\" width=\"80\" height=\"80\" onload=\"sfphotoimage.Resize(this,80,80)\"/></p><p></p><div class=\"clear\"></div></div><p class=\"fontgray\"><a href=\"javascript:;\" onclick=\"PhotoInitial.DeleteImg('" + div.id + "','" + imgType + "','" + imgUrl + "')\">删除</a> <a href=\"javascript:;\" onclick=\"PhotoInitial.settitleimg('" + imgUrl + "',this);\" id='" + astid + "'>设为标题图</a></p><p><input maxlength='10' id='name_imgs_" + imgType + "_" + PhotoInitial.imgsCount + "' name=\"name_uploadimgs\" type=\"text\" value=\"" + imgName + "\" style=\"width:108px\"/></p>" +
        //    "<p style='display:none'>" +
        //        "<input class=\"input_img_info\" value=\"\" />" +
        //        "</p>";
        div.innerHTML ='<div style="width:100px;height:100px;">' +
                                        '<p style="padding-top:0 !important;">' +
                                                '<img id="imgs_' + imgType + "_" + PhotoInitial.imgsCount + '" type="' + imgType + '" name="uploadimgs" rsrc="' + rfilename + '" src="' + imgUrlviewi + '"  onload="sfphotoimage.Resize(this,100,100)" style="display: block; min-height:80px;" width="100" height="80"/>' +
                                                '<a href="javascript:;" class="close_zffb" onclick="PhotoInitial.DeleteImg(\'' + div.id + '\',\'' + imgType +'\',\''+ imgUrl + '\')" style="top:10px;"></a>' +
                                        '</p>' +
                                        '<div class="clear"></div>' +
                                    '</div>' +
                                    '<p class="fontgray">' +
                                        '<a href="javascript:;" id="' + astid +'" onclick="PhotoInitial.UserSetPic(\'' + imgUrl + '\',this)">设为标题图</a>' +
                                    '</p>' +
                                    '<p>' +
                                        '<input id="name_imgs_' + imgType + '_' + PhotoInitial.imgsCount + '"  name="name_uploadimgs" maxlength="10" type="text" value="' + imgName + '" class="input_sr">' +
                                    '</p>';
 
        document.getElementById(imgType + "_list").appendChild(div);
        if (base64 != null && base64 != undefined) {
            //图片信息 url|日期|x|y
            //var s = "data:image/jpeg;base64,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AAAAAAQAAAAeOEJJTQPzAAAAAAAJAAAAAAAAAAABADhCSU0ECgAAAAAAAQAAOEJJTScQAAAAAAAKAAEAAAAAAAAAAjhCSU0D9QAAAAAASAAvZmYAAQBsZmYABgAAAAAAAQAvZmYAAQChmZoABgAAAAAAAQAyAAAAAQBaAAAABgAAAAAAAQA1AAAAAQAtAAAABgAAAAAAAThCSU0D+AAAAAAAcAAA/////////////////////////////wPoAAAAAP////////////////////////////8D6AAAAAD/////////////////////////////A+gAAAAA/////////////////////////////wPoAAA4QklNBAgAAAAAABAAAAABAAACQAAAAkAAAAAAOEJJTQQeAAAAAAAEAAAAADhCSU0EGgAAAAADUQAAAAYAAAAAAAAAAAAAABAAAAAQAAAADgBEAFMAQwBOADAANgAxADQAXwBzAG0AYQBsAGwAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAABAAAAAQAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAEAAAAAAABudWxsAAAAAgAAAAZib3VuZHNPYmpjAAAAAQAAAAAAAFJjdDEAAAAEAAAAAFRvcCBsb25nAAAAAAAAAABMZWZ0bG9uZwAAAAAAAAAAQnRvbWxvbmcAAAAQAAAAAFJnaHRsb25nAAAAEAAAAAZzbGljZXNWbExzAAAAAU9iamMAAAABAAAAAAAFc2xpY2UAAAASAAAAB3NsaWNlSURsb25nAAAAAAAAAAdncm91cElEbG9uZwAAAAAAAAAGb3JpZ2luZW51bQAAAAxFU2xpY2VPcmlnaW4AAAANYXV0b0dlbmVyYXRlZAAAAABUeXBlZW51bQAAAApFU2xpY2VUeXBlAAAAAEltZyAAAAAGYm91bmRzT2JqYwAAAAEAAAAAAABSY3QxAAAABAAAAABUb3AgbG9uZwAAAAAAAAAATGVmdGxvbmcAAAAAAAAAAEJ0b21sb25nAAAAEAAAAABSZ2h0bG9uZwAAABAAAAADdXJsVEVYVAAAAAEAAAAAAABudWxsVEVYVAAAAAEAAAAAAABNc2dlVEVYVAAAAAEAAAAAAAZhbHRUYWdURVhUAAAAAQAAAAAADmNlbGxUZXh0SXNIVE1MYm9vbAEAAAAIY2VsbFRleHRURVhUAAAAAQAAAAAACWhvcnpBbGlnbmVudW0AAAAPRVNsaWNlSG9yekFsaWduAAAAB2RlZmF1bHQAAAAJdmVydEFsaWduZW51bQAAAA9FU2xpY2VWZXJ0QWxpZ24AAAAHZGVmYXVsdAAAAAtiZ0NvbG9yVHlwZWVudW0AAAARRVNsaWNlQkdDb2xvclR5cGUAAAAATm9uZQAAAAl0b3BPdXRzZXRsb25nAAAAAAAAAApsZWZ0T3V0c2V0bG9uZwAAAAAAAAAMYm90dG9tT3V0c2V0bG9uZwAAAAAAAAALcmlnaHRPdXRzZXRsb25nAAAAAAA4QklNBCgAAAAAAAwAAAACP/AAAAAAAAA4QklNBBQAAAAAAAQAAAABOEJJTQQMAAAAAAJfAAAAAQAAABAAAAAQAAAAMAAAAwAAAAJDABgAAf/Y/+0ADEFkb2JlX0NNAAH/7gAOQWRvYmUAZIAAAAAB/9sAhAAMCAgICQgMCQkMEQsKCxEVDwwMDxUYExMVExMYEQwMDAwMDBEMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMAQ0LCw0ODRAODhAUDg4OFBQODg4OFBEMDAwMDBERDAwMDAwMEQwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAz/wAARCAAQABADASIAAhEBAxEB/90ABAAB/8QBPwAAAQUBAQEBAQEAAAAAAAAAAwABAgQFBgcICQoLAQABBQEBAQEBAQAAAAAAAAABAAIDBAUGBwgJCgsQAAEEAQMCBAIFBwYIBQMMMwEAAhEDBCESMQVBUWETInGBMgYUkaGxQiMkFVLBYjM0coLRQwclklPw4fFjczUWorKDJkSTVGRFwqN0NhfSVeJl8rOEw9N14/NGJ5SkhbSVxNTk9KW1xdXl9VZmdoaWprbG1ub2N0dXZ3eHl6e3x9fn9xEAAgIBAgQEAwQFBgcHBgU1AQACEQMhMRIEQVFhcSITBTKBkRShsUIjwVLR8DMkYuFygpJDUxVjczTxJQYWorKDByY1wtJEk1SjF2RFVTZ0ZeLys4TD03Xj80aUpIW0lcTU5PSltcXV5fVWZnaGlqa2xtbm9ic3R1dnd4eXp7fH/9oADAMBAAIRAxEAPwDrPTp3hjQ5z/3Toi3V1M0LYHP3fNWXmutpfpMe6wrJycqt+zY6fVO1pgn28PKaCZLjQD//2QA4QklNBCEAAAAAAFMAAAABAQAAAA8AQQBkAG8AYgBlACAAUABoAG8AdABvAHMAaABvAHAAAAASAEEAZABvAGIAZQAgAFAAaABvAHQAbwBzAGgAbwBwACAAQwBDAAAAAQA4QklNBAYAAAAAAAcAAwABAAEBAP/hDzhodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNS1jMDIxIDc5LjE1NDkxMSwgMjAxMy8xMC8yOS0xMTo0NzoxNiAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iIHhtbG5zOnBob3Rvc2hvcD0iaHR0cDovL25zLmFkb2JlLmNvbS9waG90b3Nob3AvMS4wLyIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0RXZ0PSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VFdmVudCMiIHhtbG5zOnhtcFJpZ2h0cz0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3JpZ2h0cy8iIHhtcDpNb2RpZnlEYXRlPSIyMDE0LTA1LTEzVDE4OjE4OjE1KzAyOjAwIiB4bXA6Q3JlYXRvclRvb2w9IkFkb2JlIFBob3Rvc2hvcCBDUzMgV2luZG93cyIgeG1wOkNyZWF0ZURhdGU9IjIwMDYtMDYtMTNUMTU6NDQ6NDUiIHhtcDpNZXRhZGF0YURhdGU9IjIwMTQtMDUtMTNUMTg6MTg6MTUrMDI6MDAiIGRjOmZvcm1hdD0iaW1hZ2UvanBlZyIgcGhvdG9zaG9wOkxlZ2FjeUlQVENEaWdlc3Q9IjEyRDc0M0EzNkFDOEM2NzkxOTNCRTBENEI5MEJGRDlGIiBwaG90b3Nob3A6RGF0ZUNyZWF0ZWQ9IjIwMDYtMDYtMTNUMTU6NDQ6NDUrMDI6MDAiIHBob3Rvc2hvcDpDb2xvck1vZGU9IjMiIHBob3Rvc2hvcDpJQ0NQcm9maWxlPSJzUkdCIElFQzYxOTY2LTIuMSIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDphZjgyMzA0YS00NDA1LWZkNDgtYTU1Mi00MzVjZjE3ZGUwOTciIHhtcE1NOkRvY3VtZW50SUQ9InV1aWQ6RDVDQkNBRDVGRDFDREQxMTkwNzFFNzA5MzdFOUQ1QkQiIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0idXVpZDpENUNCQ0FENUZEMUNERDExOTA3MUU3MDkzN0U5RDVCRCIgeG1wUmlnaHRzOk1hcmtlZD0iRmFsc2UiPiA8ZGM6ZGVzY3JpcHRpb24+IDxyZGY6QWx0PiA8cmRmOmxpIHhtbDpsYW5nPSJ4LWRlZmF1bHQiPiAgICAgICAgICA8L3JkZjpsaT4gPC9yZGY6QWx0PiA8L2RjOmRlc2NyaXB0aW9uPiA8eG1wTU06RGVyaXZlZEZyb20gcmRmOnBhcnNlVHlwZT0iUmVzb3VyY2UiLz4gPHhtcE1NOkhpc3Rvcnk+IDxyZGY6U2VxPiA8cmRmOmxpIHN0RXZ0OmFjdGlvbj0ic2F2ZWQiIHN0RXZ0Omluc3RhbmNlSUQ9InhtcC5paWQ6MTQ3OGUxYmItYzNjOS1lZTQxLWFlY2QtNDVhMGM2NGZiOTFiIiBzdEV2dDp3aGVuPSIyMDE0LTA1LTEzVDE4OjE4OjE1KzAyOjAwIiBzdEV2dDpzb2Z0d2FyZUFnZW50PSJBZG9iZSBQaG90b3Nob3AgQ0MgKFdpbmRvd3MpIiBzdEV2dDpjaGFuZ2VkPSIvIi8+IDxyZGY6bGkgc3RFdnQ6YWN0aW9uPSJzYXZlZCIgc3RFdnQ6aW5zdGFuY2VJRD0ieG1wLmlpZDphZjgyMzA0YS00NDA1LWZkNDgtYTU1Mi00MzVjZjE3ZGUwOTciIHN0RXZ0OndoZW49IjIwMTQtMDUtMTNUMTg6MTg6MTUrMDI6MDAiIHN0RXZ0OnNvZnR3YXJlQWdlbnQ9IkFkb2JlIFBob3Rvc2hvcCBDQyAoV2luZG93cykiIHN0RXZ0OmNoYW5nZWQ9Ii8iLz4gPC9yZGY6U2VxPiA8L3htcE1NOkhpc3Rvcnk+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDw/eHBhY2tldCBlbmQ9InciPz7/4gxYSUNDX1BST0ZJTEUAAQEAAAxITGlubwIQAABtbnRyUkdCIFhZWiAHzgACAAkABgAxAABhY3NwTVNGVAAAAABJRUMgc1JHQgAAAAAAAAAAAAAAAAAA9tYAAQAAAADTLUhQICAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABFjcHJ0AAABUAAAADNkZXNjAAABhAAAAGx3dHB0AAAB8AAAABRia3B0AAACBAAAABRyWFlaAAACGAAAABRnWFlaAAACLAAAABRiWFlaAAACQAAAABRkbW5kAAACVAAAAHBkbWRkAAACxAAAAIh2dWVkAAADTAAAAIZ2aWV3AAAD1AAAACRsdW1pAAAD+AAAABRtZWFzAAAEDAAAACR0ZWNoAAAEMAAAAAxyVFJDAAAEPAAACAxnVFJDAAAEPAAACAxiVFJDAAAEPAAACAx0ZXh0AAAAAENvcHlyaWdodCAoYykgMTk5OCBIZXdsZXR0LVBhY2thcmQgQ29tcGFueQAAZGVzYwAAAAAAAAASc1JHQiBJRUM2MTk2Ni0yLjEAAAAAAAAAAAAA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";
            var image = new Image();
            image.src = base64;
            setTimeout(function () {
                EXIF.getData(image, function () {
             
                    var s = EXIF.getAllTags(this);
                    var x = EXIF.getTag(image, "GPSLongitude") || "";
                    var y = EXIF.getTag(image, "GPSLatitude") || "";
                    var date = EXIF.getTag(image, "DateTime") || "";
                    //date 日期格式为yyyy:MM:dd HH:mm:ss 需要转成yyyy-MM-dd HH:mm:ss
                    date = date.replace(/([^,]*):([^,]*):([^,]*) ([^,]*)$/g, '$1-$2-$3 $4');
                    //var x = (xArray == "" ? "" : xArray.join("_"));
                    //var y = (yArray == "" ? "" : yArray.join("_"));
                    var isDate = date.match(/^(\d{4})\-([\d]+)\-([\d]+) ([\d]+):([\d]+):([\d]+)$/);
                    if (date != "" && isDate!=null) {
                        var imgInfo = rfilename + "|" + date + "|" + x + "|" + y;
                        if ($("#imgs_" + imgindex + " .input_img_info") == null) {
                            alert("#imgs_" + imgindex + " is null");
                        }
                        $("#imgs_" + imgindex + " .input_img_info").val(imgInfo);
                    }
                });
            }, 500);
        }

        $('#imgs_' + imgType + "_" + PhotoInitial.imgsCount)
            .wrap('<span style="display:inline-block"></span>')
            .css('display', 'block')
            .parent().mousemove(function (e) {
                $("#fddiv").offset({
                    top: e.pageY + 20,
                    left: e.pageX + 20
                }).attr("src", "http://" + host + "/viewimage/" + filename + "/400x300." + filenamecom.substring(filenamecom.indexOf('.') + 1)).show(100);
            }).mouseout(function (e) {
                $("#fddiv").hide();
            }).mouseenter(function (e) {
                if (!document.getElementById('fddiv')) {
                    var ImgDiv = new Image();
                    ImgDiv.id = "fddiv";

                    ImgDiv.src = "";
                    document.body.appendChild(ImgDiv);
                    //ImgDiv.style = "width:400px; z-index:100px; position:absolute;display:none;";
                    $("#fddiv").offset({
                        top: e.pageY + 20,
                        left: e.pageX + 20
                    }).attr("src", "http://" + host + "/viewimage/" + filename + "/400x300." + filenamecom.substring(filenamecom.indexOf('.') + 1)).show(100);
                }
            }).mouseleave(function () { $("#fddiv").hide(); });
        //.zoom({ url: rfilename });
        document.getElementById('spanUpload').removeAttribute("disabled");
        var hiddenurl = document.getElementById('input_EXTENDINFO_xiaoqwj').value;
        var hiddenurlname = document.getElementById('name_input_EXTENDINFO_xiaoqwj').value;
        if (imgUrl) {
            if (hiddenurl) {
                hiddenurl = hiddenurl + "," + imgUrl;
                hiddenurlname = hiddenurlname + "," + "房源图片";
            } else {
                hiddenurl = imgUrl;
                hiddenurlname = "房源图片";
            }
            document.getElementById('input_EXTENDINFO_xiaoqwj').value = hiddenurl;
            document.getElementById('name_input_EXTENDINFO_xiaoqwj').value = hiddenurlname;
        }

        //如果是第一张图片则设为默认得标题图
        if (isEdit == "True") {
            if (imgUrl == jQuery("#input_TITLEIMG").val()) {
                PhotoInitial.settitleimg(imgUrl, document.getElementById(astid));
            }
        }
        else {
            if (PhotoInitial.imgsCount == 1) {
                var aar = div.getElementsByTagName("a");
                var tite = null;
                for (var i = 0; i < aar.length; i++) {
                    if (aar[i].innerHTML == "设为标题图") {
                        tite = aar[i];
                        break;
                    }
                }
                PhotoInitial.settitleimg(imgUrl, tite);
            }
        }

    },
    //设置标题图
    settitleimg: function (imgUrl, img) {
        PhotoInitial.cleartitle("button_EXTENDINFO_shint_list");
        PhotoInitial.cleartitle("button_EXTENDINFO_xiaoqwj_list");
        PhotoInitial.cleartitle("button_EXTENDINFO_huxt_list");
        document.getElementById("input_TITLEIMG").value = imgUrl;

        var p = img.parentNode.parentNode;
        var ar = p.getElementsByTagName("div");
        for (var i = 0; i < ar.length; i++) {
            if (ar[i].className == "img") {
                ar[i].className = "img2";
            }

        }
        var imgeles = jQuery('a[id^=atitleid_]');
        for (var j = 0; j < imgeles.length; j++) {
            if (imgeles[j] == img) {
                img.innerText = "标题图";
                jQuery(img).addClass('fmzf');
            } else {
                imgeles[j].innerText = "设为标题图";
                jQuery(imgeles[j]).removeClass('fmzf');
            }
        }
    },
    //删除图片
    DeleteImg: function (imgid, listid, imgurl) {
        var butobj = document.getElementById(listid + "_list");
        PhotoInitial.imgsCount--;
        if (butobj.getAttribute("maxpic") != null && butobj.getAttribute("maxpic") != undefined) {
            if (butobj.getAttribute("maxpic") < 10) {
                butobj.setAttribute("maxpic", parseInt(butobj.getAttribute("maxpic")) + 1);
            }
        }
        document.getElementById(listid + "_list").removeChild(document.getElementById(imgid));
        if (imgurl == document.getElementById("input_TITLEIMG").value) {
            if (PhotoInitial.imgsCount == 0) {
                PhotoInitial.deletetitleimg();
            } else {
                var ispictitle = false;
                var p = document.getElementById("button_EXTENDINFO_shint_list");
                var ar = p.getElementsByTagName("img");
                var arr = p.getElementsByTagName("a");
                if (ar.length == 0) {
                    ispictitle = false;
                } else {
                    ispictitle = true;
                    PhotoInitial.settitleimg(jQuery(ar[0]).attr("rsrc"), arr[1]);

                }
            }
        }
        // 删除图片时移除隐藏域中对应的值
        var imglist = document.getElementById("input_EXTENDINFO_xiaoqwj");
        if (imglist) {
            var arr = imglist.value.split(',');
            arr.remove(imgurl);
            imglist.value = arr.toString();
        }
    },
    deletetitleimg: function () {
        document.getElementById("input_TITLEIMG").value = "";
    },

    PhotoMouseOver: function (event) {
        if (event) {
            var offsetX = jQuery("#button_EXTENDINFO_shint_list").eq(0).offset().left - 5 + "px";
            var offsetY = jQuery("#button_EXTENDINFO_shint_list").eq(0).offset().top + 5 + "px";
            var size = 3 * jQuery('#Image_Rent td img').width();
            var $target = jQuery(event);
            if ($target.is('img')) {
                jQuery("<img id='tip' src='" + $target.attr("rsrc") + "'>").css({
                    "height": size,
                    "width": size,
                    "top": event.pageX + offsetX,
                    "left": event.pageY + offsetY,
                    "z-index": 9999
                }).appendTo(jQuery("#button_EXTENDINFO_shint_list"));
            }
            //console.log("x:" + event.pageX + offsetX + "-y:" + event.pageY + offsetY);
        }

    },
    PhotoMouseOut: function (e) {
        if (e) {
            jQuery("#tip").remove();
        }
    },
    PhotoMouseMove: function (event) {
        if (event) {
            var offsetX = jQuery("#button_EXTENDINFO_shint_list").eq(0).offset().left - 5 + "px";
            var offsetY = jQuery("#button_EXTENDINFO_shint_list").eq(0).offset().top + 5 + "px";
            jQuery("#tip").css(
            {
                "left": event.pageX + offsetX,
                "top": event.pageY + offsetY,
                "z-index": 9999
            });

        }
    },

    //匹配并返回标题图信息
    getAE: function (element) {
        var p = document.getElementById("button_EXTENDINFO_shint_list");
        if (typeof (p) == "undefined") {
            return false;
        }
        if (document.getElementById('input_TITLEIMGV')) {
            element = document.getElementById('input_TITLEIMGV').value;
        }
        var arimg = p.getElementsByTagName("img");
        for (var i = 0; i < arimg.length; i++) {
            if (arimg[i].src == element) {
                var par = arimg[i].parentNode.parentNode.parentNode;
                var cs = par.getElementsByTagName("a");
                for (var y = 0; y < cs.length; y++) {
                    if (cs[y].innerHTML == "设为标题图") {
                        return cs[y];
                    }
                }
            }
        }
    },

    cleartitle: function (element) {
        var p = document.getElementById(element);
        if (typeof (p) == "undefined") {
            return false;
        }
        var ar = p.getElementsByTagName("div");
        for (var i = 0; i < ar.length; i++) {
            var temp = ar[i];
            if (temp.className == "img2") {
                temp.className = "img";
                break;
            }
        }
    },

    //格式化日期,
    formatDate: function (date, format) {
        var paddNum = function (num) {
            num += "";
            return num.replace(/^(\d)$/, "0$1");
        }
        //指定格式字符
        var cfg = {
            yyyy: date.getFullYear() //年 : 4位
          , yy: date.getFullYear().toString().substring(2)//年 : 2位
          , M: date.getMonth() + 1  //月 : 如果1位的时候不补0
          , MM: paddNum(date.getMonth() + 1) //月 : 如果1位的时候补0
          , d: date.getDate()   //日 : 如果1位的时候不补0
          , dd: paddNum(date.getDate())//日 : 如果1位的时候补0
          , hh: date.getHours()  //时
          , mm: date.getMinutes() //分
          , ss: date.getSeconds() //秒
        }
        format || (format = "yyyy-MM-dd hh:mm:ss");
        return format.replace(/([a-z])(\1)*/ig, function (m) { return cfg[m]; });
    },

    UserSetPic: function (imgUrl, img) {
        jQuery("#input_UserSetPic").val(1);
        PhotoInitial.settitleimg(imgUrl, img);
    }
}
var sfphotoimage = {
    timer: null,
    Resize: function (image, width, height) {
        if (image.complete || -[1, ]) {
            sfphotoimage.ChangeSize(image, width, height);
        } else {
            sfphotoimage.timer = setInterval(function () {
                sfphotoimage.HasComplete(image, width, height);
            }, 50);
        }
    },
    ChangeSize: function (image, width, height) {
        image.removeAttribute('width');
        image.removeAttribute('height');
        var w = image.width, h = image.height;
        var scaling = w / h;
        if (width != null) {
            w = image.width;
            if (w > width) {
                image.width = width;
                image.height = width / scaling;
            }
        }
        if (height != null) {
            h = image.height;
            if (h > height) {
                image.width = height * scaling;
                image.height = height;
            }
        }
        if (typeof (image) == 'string') image = document.images[image] || document.getElementById(image);
        var div = image.parentNode;
        if (div.nodeName != "DIV") {
            div = div.parentNode;
        }
        if (image.height > 0 && image.height < height) {
            div.style.paddingTop = (height - image.height) + 'px';
        }
        else {
            image.height = height + 'px';
            div.style.paddingTop = 0;
        }
    },
    HasComplete: function (image, width, height) {
        if (image.complete) {
            sfphotoimage.ChangeSize(image, width, height);
        } else {
            clearInterval(sfphotoimage.timer);
        }

    }

};

