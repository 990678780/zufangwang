    // if($('.header').hasClass('header-r')){
    //     console.log(2);
    //     $('.user-down').css({"top":"-19px"});
    // }else if($('.header').hasClass('header-w')){
    //     console.log(1);
    //     $('.user-down').css({"top":"5px"});
    // }
    $(".region").click(function(){
        $(".cityPop").addClass("cityPop-show");
        $(".popfull").show();
    });
    $(".popClose").click(function(){
        $(".cityPop").removeClass("cityPop-show");
        $(".popfull").hide();
    });
    $(".popfull").click(function(){
        $(".cityPop").removeClass("cityPop-show");
        $(".popfull").hide();
    });
    $(".logout").click(function(){
        $.ajax({
            url:"/login/logout",
            type: 'POST',
            data: '',
            dataType: 'json',
            beforeSend: function() {
            },
            success: function(msg) {
                if(msg.status == 0){
                    window.location.reload();
                }
            }
        });
    });
    var cityname=$('.region').children("a").get(0).innerText;
    var cityname_py='';
    switch (cityname) {
        case '上海':
            cityname_py='shanghai';
            break;
        case '北京':
            cityname_py='beijing';
            break;
        case '深圳':
            cityname_py='shenzhen';    
            break;
        case '杭州':
            cityname_py='hangzhou';
            break;
        case '南京':
            cityname_py='nanjing';
            break;
        case '苏州':
            cityname_py='suzhou';
            break;
        case '广州':
            cityname_py='guangzhou';
            break;
        case '成都':
            cityname_py='chengdu';
            break;
        case '大连':
            cityname_py='dalian';
            break;
        case '天津':
            cityname_py='tianjin';
            break;
        case '重庆':
            cityname_py='chongqing';
            break;
        case '武汉':
            cityname_py='wuhan';
            break;
        case '西安':
            cityname_py='xian';
            break;
        case '郑州':
            cityname_py='zhengzhou';
            break;
        default:
            break;
    }
    //console.log(cityname_py);
    function toroommate(){
        if(cityname_py==''){
            cityname_py='shanghai';
        }
        window.location.href="<?= G_DOMAIN_WWW ?>/roommate/findsublet_"+cityname_py;
    } 