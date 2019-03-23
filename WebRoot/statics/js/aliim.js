
var imisInitForm = 0;
$("#im_lightin").mouseover(function(){
//	$('.im_prompt img').css("display",'block')
    var btnstatus = $(this).attr('data-status');
    if(btnstatus == 1){
        $(this).children('.im-img').attr("src",imImgSrc+"/im_over_new_1122.png");
        $(this).attr('data-status',2);
    }else if(btnstatus == 3){
        $(this).children('.im-img').attr("src",imImgSrc+"/im_over_has_new_1122.png");
        $(this).attr('data-status',4);
    } 
});
$("#im_lightin").mouseout(function(){
//	$('.im_prompt img').css("display",'none')
    var btnstatus = $(this).attr('data-status');
    if(btnstatus == 2){
        $(this).children('.im-img').attr("src",imImgSrc+"/im_normal_new_1122.png");
        $(this).attr('data-status',1);
    }else if(btnstatus == 4){
        $(this).children('.im-img').attr("src",imImgSrc+"/im_normal_has_new_1122.png");
        $(this).attr('data-status',3);
    }
});
var isTrue=false;
$(document).on('click','#im_lightin',function(){
    console.log(userIsLogin);
    if(userIsLogin == 1){
        if(imisInitForm == 0){
            createimForm();   
        }
        showIMForm();
    }else{
        nowUserLoginSuc();//调用登录成功回调函数
    }
})
// $('#im_lightin').click(function(){
    
// });
$(document).on('click','#im_closeform',function(){
    $(".im-wrapper .title").css("display","none");
    $(".im-wrapper .address").css("display","none");
    $(".im-wrapper .im-message").css("display","none");
    $(".im-wrapper").animate({right:'-410px'});
    $(this).attr('data-status',0);
})
// $("#im_closeform").click(function(){
    
// });
function showIMForm(){
    var imWrapperEle = $('.im-wrapper');
    imWrapperEle.find('.title').css("display","block");
    imWrapperEle.find('.address').css("display","block");
    imWrapperEle.find('.im-message').css("display","block");
    imWrapperEle.animate({
        right:'11px'
    });
    $("#im_closeform").attr('data-status',1);
    $('#im_lightin').children().attr('src',imImgSrc+"/im_normal_new_1122.png");
    $('#im_lightin').attr('data-status',1);
    
    
}
function nowUserLoginSuc(){
    $.ajax({
        type:'post',
        url:'/Operate/getIMInfo',
        success:function (secimInfo){
            if(secimInfo){
                var imInfo  = eval('('+secimInfo+')');
                if(imInfo == "" || imInfo == null){
                    popLogin(1);
                    return false;
                }
                imUId = imInfo['im_uid'];
                imPas = imInfo['im_password'];
                imServiceId = imInfo['im_service'];
                imAppKey = imInfo['im_app_key'];
                imServiceName = imInfo['im_service_name'];
                userIsLogin = 1;
                createimForm();
                showIMForm();
            }
            // if(!imUId || !imPas || !imServiceId ||  !imAppKey || !imServiceName){
            // }
        }
    });
}
function createimForm(){
    if(!imUId || !imPas || !imServiceId ||  !imAppKey || !imServiceName){
        return false;
    }
    WLOG.init({
        uid: imUId,
        appkey: imAppKey,
    });
    WKIT.init({
        uid: imUId,
        appkey: imAppKey,
        credential: imPas,
        touid: imServiceName,           
        container: document.getElementById('im_message'),
        width: '410',
        height: "400",
        theme: '#F3F3F3',
        sendBtn: true,
        groupId: imServiceId,
        sendMsgToCustomService: true,
        onMsgReceived:function(){
            var imLightinEle = $("#im_lightin");
            var formstatus = $("#im_closeform").attr('data-status');
            if(formstatus == 0){ //当窗体为关闭状态
                if(imLightinEle.attr('data-status') == 1) {
                    imLightinEle.children().attr("src",imImgSrc+"/im_normal_has_new_1122.png");
                    imLightinEle.attr('data-status',3);
                } else if (imLightinEle.attr('data-status') == 2) {
                    imLightinEle.children().attr("src",imImgSrc+"/im_over_has_new_1122.png");
                    imLightinEle.attr('data-status',4);
                }
                
                
            }
        },
        onMsgSent:function(){
            var imLightinEle = $("#im_lightin");
            var imgSrc = imImgSrc +"/im_normal_new_1122.png";
            if (imLightinEle.children().attr('src') != imgSrc) {
                $("#im_lightin").children().attr("src",imgSrc);
                imLightinEle.attr('data-status',1);
            }
           
        }
        
    });
    imisInitForm = 1;
    
}





$("#toTOP").mouseover(function () {
    $(this).children('.Totop').attr("src", imImgSrc + "/toTop_over_1122.png");
    if (window.devicePixelRatio && window.devicePixelRatio > 1){
        //replaceimg($("#toTOP"));
    }
    
    
});
$("#toTOP").mouseout(function () {
    $(this).children('.Totop').attr("src", imImgSrc + "/toTop_1122.png");
    if (window.devicePixelRatio && window.devicePixelRatio > 1) {
        //replaceimg($("#toTOP"));
    }
});
$(document).on('click','#toTOP',function(){
    $(window).scrollTop(0);
})
// $('#toTOP').click(function () {
    
// })

//在mac下替换成高清图
function replaceimg(obj) {
    var dizhi = obj.children().attr('src');
    var newdizhi = dizhi.replace(/.png/, "_mac.png");
    return obj.children().attr("src", newdizhi);
}


//意见反馈
$(document).on('click','#Suggestions',function(){
   
    layui.use('layer', function(){ //独立版的layer无需执行这一句
        var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句
        layer.open({
            type:1
            ,title: ['意见反馈', 'font-size:21px;line-height:63px;']
            ,area: '750px'
            ,offset: '100px'
            ,content:
            '<div class="suggest_content">' +
            '  <div class="suggest_phone">'+
            '   <p> 您的每一条建议我们都会认真对待，感谢您对巴乐兔工作的支持。我们致力于不断提高用户体验而努力。</p>'+
            '   <p>客服联系热线：400-183-0033</p>'+
            '  </div> '+
            '   <table class="suggest_fankui">'+
            '       <tr>'+
            '           <td valign="top" class="suggest_fankui_left">意见反馈*</td>'+
            '           <td><textarea id="suggest" style="resize:none" value="" placeholder="请输入您的建议（必填）" maxlength="500"></textarea></td>'+
            '       </tr>'+
            '       <tr>'+
            '           <td class="suggest_fankui_left">联系方式</td>'+
            '           <td><input class=""  value="'+user_mobile_for_fankui+'" placeholder="请输入您的联系方式（选填）" maxlength="11"></td>'+
            '       </tr>'+
            '   </table>'+
            '   <div class="suggest_button">'+
            '       <button onclick="tijiao()">提交</botton>'+
            '   </div>'+
            '</div>'
            ,shade: 0.7 //不显示遮罩
            ,success: function(){
              
                
            }
        })
    })
})
function tijiao(){

    var _data = '';
    var yijian=$('#suggest').val();
    var mobile=$('.suggest_fankui input').val();
    var mobileReg=/^(13|14|15|16|17|18|19)[0-9]{9}$/;
    _data = 'content='+yijian+'&mobile='+mobile;
    var patrn = /^[0-9]*$/;  
    yijian = yijian.replace(/^\s*/,"");
    if(yijian == ''){
        layer.msg('请添加您的建议哦~');
        return;
    }else if(patrn.test(yijian)){
        layer.msg('建议不能是纯数字哦~');
        return;
    }else{
        if(mobile!=''){
            if(!mobileReg.test(mobile)){
                layer.msg('请填写正确的手机号码');
                return;
            }
        }else{
            
        }
        layer.closeAll();
        //
        $.ajax({
            url:"/Creathouse/saveSuggestionFeedbackHouse",
            type: 'GET',
            data: _data,
            dataType: 'json',
            success: function(data) {
                layer.msg(data.msg);
            },
            error:function(msg){
                
            }
        });
    }
}
