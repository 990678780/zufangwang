/**百度云视频上传 程序入口
*/
$(function () {
    if (!ak || !sk || !sessionToken || ak == '' || sk == '' || sessionToken =='') {
        return;
    }

    //初始化VOD上传对象
    initVODUpload(ak, sk, sessionToken);

    //绑定上传事件 及 响应事件
    $('#videoFiles').change(function () {
        videoUploadEvent();
    });

    //绑定视频播放
    videoPlay();

    //绑定视频删除()
    videoDelete();
});

//上传对象
var client;
var index = 0;

/**初始化 百度云视频上传
*@param ak 临时授权参数
*@param sk 临时授权参数
*@param sessionToken 临时授权参数
*/
function initVODUpload(ak, sk, sessionToken) {
    var sdk = baidubce.sdk;
    var VodClient = sdk.VodClient;

    var config = {
        endpoint: 'http://vod.bj.baidubce.com',
        sessionToken: sessionToken,
        credentials: {
            ak: ak,
            sk: sk
        }
    };
    client = new VodClient(config);//初始化上传对象
}



/**视频上传方法
*@param file 待上传文件
*/
function videoUpload(file) {
    var ext = file.name.substr(file.name.lastIndexOf('.')).toLowerCase();
    if (!isVideo(ext)) {
       alert("请选择视频文件上传");
        return false;
    }
    if (file.size >= 100 * 1024 * 1024) {
        alert("请上传小于100M的视频");
        return false;
    }

    //记录当前进度
    var uploadProgress = 0;
    client.on('progress', function (evt) {
        // 监听上传进度
        if (evt.lengthComputable) {
            if (evt.loaded >= evt.total) {
                uploadProgress += (evt.loaded / file.size) * 100;
                uploadProgress = uploadProgress > 100 ? 100 : uploadProgress;
                videoProgress(uploadProgress.toFixed(2));
            }
        }
    });

    //准备上传
    videoUploading();
    
    //创建媒资参数
    var options = {
        transcodingPresetGroupName: 'vod.inbuilt.mp4'
    };
    //创建媒资
    client.createMediaResource(file.name, "description" + (index++), file,options) //data)
    .then(function (response) {
       videoUploadSuccess(response);
    })
    .catch(function (error) {
        console.log("视频上传失败：");
        console.log(error);
        videoUploadError('上传失败，请刷新页面后，重新上传！');
    });
}

/**视频上传进度条
*@param progress 当前进度
*@note 此处注意 遮罩层高度0% 对应上传进度 100%
*/
function videoProgress(progress) {
    var max = 100;
    var height = max - progress;
    height = height < 0 ? 0 : height;

    $('#videoUploadProgress').height(String(height + '%'));
    $('#videoUploadProgress span').text(progress);
}


/**重置上传按钮
*/
function videoUploadBtnReset() {
    $('#videoUploadBtn').show();
    $('#video').hide();

    //重置上传Input files标签
    var inputFileElem = $("#videoFiles");
    inputFileElem.after(inputFileElem.clone().val(""));
    inputFileElem.remove();
    //重新监听文件选择事件
    $('#videoFiles').change(function () {
        videoUploadEvent();
    });
}

/**视频上传前准备（视频上传中）
*/
function videoUploading() {
    //显示视频上传中文案
    $('#videoUploadProgress').html('视频上传中 <br><span>0</span>%');
    //隐藏视频播放Icon
    $('#videoPlayIcon').hide();
    //显示视频
    $('#video').show();
    //隐藏视频删除按钮
    $('#videoDelete').hide();
    //屏蔽上传按钮
    $('#videoFiles').attr("disabled", "disabled");
}

/**视频上传完成
*/
function videoUploaded() {
    //删除“上传中”文案
    $('#videoUploadProgress').html('');
    //显示视频播放icon
    $('#videoPlayIcon').show();
    //显示删除按钮
    $('#videoDelete').show();
    //重置上传按钮
    $('#videoFiles').removeAttr("disabled");
}

/**视频上传成功
*@param response 上传方法响应信息
*/
function videoUploadSuccess(response) {
    $('#videoUploadBtn').fadeOut();
    $('#video').show();
    $('#videoMideaId').val(response.body.mediaId);
    videoProgress(100);//设置进度条进度
    videoUploaded();
}

/**视频上传错误
*@param msg 错误信息
*/
function videoUploadError(msg) {
    if (typeof(msg) != undefined && msg != null) {
        alert(msg);
    }
    videoUploaded();
    videoUploadBtnReset();
}



/*判断是否为视频类型
*@param ext 文件扩展名
*/
function isVideo(ext) {
    //视频类型限制
    var exts = ['.wmv', '.avi', '.dat', '.asf', '.rm', '.rmvb', '.ram', '.mpg', '.mpeg', '.3gp', '.mov', '.mp4', '.m4v', '.dvix', '.dv', '.dat', '.mkv', '.flv', '.vob', '.ram', '.qt', '.divx', '.cpk', '.fli', '.flc', '.mod'];

    for (var i in exts) {
        if (exts[i] == ext) {
            return true;
        }
    }
    return false;
}


/**初始化视频播放
*/
function videoPlay() {
    var videoUrl = $('#videoUrl').attr('src');

    if (videoUrl != null && videoUrl != '') {

        $('#videoPlay').click(function () {
            $('#popVideo').fadeIn();
            $('#videoPlayControl').trigger('play');
        });

        $('#popVideo .close').click(function () {
            $('#popVideo').fadeOut();
            $('video').trigger('pause');
        });
    }
}

/** 视频删除
*/
function videoDelete() {
    $('#videoDelete').click(function () {
        videoUploadBtnReset();
        //清空视频VideoId
        $('#videoMideaId').val('');

    });
    $('#videoEditDelete').click(function () {
        $('#videoEditSection').hide();
        $('#videoUploadSection').show();
        videoUploadBtnReset();

        //并清空视频相关信息
        $('#videoMideaId').val('');
        $('#videoCheckStatus').html('');
        $('#popVideo').remove();
    });
}

/** 视频上传事件
*/
function videoUploadEvent() {
    //校验
    var files = $('#videoFiles').prop('files');
    if (files.length < 1) {
        alert("请选择一个视频文件");
        return false;
    }
    //上传文件
    var file = files[0];
    videoUpload(file);
}

