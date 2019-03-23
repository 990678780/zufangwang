(function ($) {
    $.fn.bltBannerShow = function (options) {
            var bltBannerShow_defaults = {
                images_height : 450,
                timer : 4000,
                images_url : [],
                images_click_url : []
            };
            var opts = $.extend({}, bltBannerShow_defaults, options);
            var $this = $(this);
            var $this_ul = $this.find('ul');
            var $this_ol = $this.find('ol');

            var images_count = opts.images_url.length;
            var images_url = opts.images_url;
            var images_height = opts.images_height;

            //创建节点
            //图片列表节点
            for(var j=0;j<images_count+1;j++){
                $this_ul.append('<a target="_blank" href="'+opts.images_click_url[j==images_count?0:j]+'">'+'<li id="bltBannerShow'+j+'"></li></a>')
            }
            var $this_ul_li = $this_ul.find('li');

            //轮播圆点按钮节点
            for(var j=0;j<images_count;j++){
                if(j==0){
                    $this_ol.append('<li class="current"></li>')
                }else{
                    $this_ol.append('<li></li>')
                }
            }
            var $this_ol_li = $this_ol.find('li');

            //载入图片
            $this_ul_li.css('background-image','url('+images_url[0]+')');
            $.each(images_url,function(key,value){
                $this_ul_li.eq(key).css('background-image','url('+value+')');
            });

            $this.css('height',images_height);
            $this_ul_li.css('height',images_height);
            $this_ul.css('width',(images_count+1)*100+'%');

            var $ol_li_width = $('.index_top_banner ol li').width();
            var $ol_li_margin = parseInt($('.index_top_banner ol li').css('margin'));
            var $ol_padding = parseInt($('.index_top_banner ol').css('padding-left'));
            $this_ol.css('width',images_count*($ol_li_width+$ol_li_margin*2)+'px');
            $this_ol.css('top',images_height-15-$this_ol.height());
            $this_ol.css('margin-left',-images_count*($ol_li_width+$ol_li_margin)*0.5-$ol_li_width+'px');

            var num = 0;
            //获取窗口宽度
            var window_width = $(window).width();
            $(window).resize(function(){
                window_width = $(window).width();
                $this_ul_li.css({width:window_width});
                clearInterval(timer);
                nextPlay();
                timer = setInterval(nextPlay,opts.timer);
            });
            //console.log(window_width);
            $this_ul_li.width(window_width);
            //轮播圆点
            $this_ol_li.mouseover(function(){//用hover的话会有两个事件(鼠标进入和离开)
                $(this).addClass('current').siblings().removeClass('current');
                //获取当前编号
                var i = $(this).index();
                //console.log(i);
                $this_ul.stop().animate({left:-i*window_width},500);
                num = i;
            });
            //自动播放
            var timer = null;
            var prevPlay = function(){
                num--;
                if(num<0){
                    //悄悄把图片跳到最后一张图(复制页,与第一张图相同),然后做出图片播放动画，left参数是定位而不是移动的长度
                    $this_ul.css({left:-window_width*images_count}).stop().animate({left:-window_width*(images_count-1)},500);
                    num=images_count-1;
                }else{
                    //console.log(num);
                    $this_ul_li.stop().animate({left:-num*window_width},500);
                }
                if(num==images_count-1){
                    $this_ol_li.eq(images_count-1).addClass('current').siblings().removeClass('current');
                }else{
                    $this_ol_li.eq(num).addClass('current').siblings().removeClass('current');

                }
            };
            var nextPlay = function(){
                num++;
                if(num>images_count){
                    //播放到最后一张(复制页)后,悄悄地把图片跳到第一张,因为和第一张相同,所以难以发觉,
                    $this_ul.css({left:0}).stop().animate({left:-window_width},500);
                    //css({left:0})是直接悄悄改变位置，animate({left:-window_width},500)是做出移动动画
                    //随后要把指针指向第二张图片,表示已经播放至第二张了。
                    num=1;
                }else if(num == images_count){//加了这句 直接返回第一张图片不进入复制页
                    num = 0;
                    $this_ul.stop().animate({left:-num*window_width},500);
                }else{
                    //在最后面加入一张和第一张相同的图片，如果播放到最后一张，继续往下播，悄悄回到第一张(肉眼看不见)，从第一张播放到第二张
                    //console.log(num);
                    $this_ul.stop().animate({left:-num*window_width},500);
                }
                if(num==images_count){
                    $this_ol_li.eq(0).addClass('current').siblings().removeClass('current');
                }else{
                    $this_ol_li.eq(num).addClass('current').siblings().removeClass('current');

                }
            };
            timer = setInterval(nextPlay,opts.timer);
            //鼠标经过index_top_banner，停止定时器,离开则继续播放
            $this.mouseenter(function(){
                clearInterval(timer);
                //左右箭头显示(淡入)
                $this.find('i').fadeIn();
            }).mouseleave(function(){
                timer = setInterval(nextPlay,opts.timer);
                //左右箭头隐藏(淡出)
                $this.find('i').fadeOut();
            });

        };


    $.fn.bltRandomBlock = function (options) {
            var bltRandomBlock_defaults = {
                random_block_class: 'random_block',
                active_random_block_add_class: 'random_block_active',
                start_speed:100,
                max_speed:60,
                stop_speed:300,
                acc_speed:20,
                minus_speed:100,
                stop_round:5,
                max_round:100,
                getResult:function(){
                    return Math.round(Math.random()*7);
                },
                afterStop:function(result){
                    alert(result);
                }
            };
            var opts = $.extend({}, bltRandomBlock_defaults, options);
            var random_block_index = 0;
            var $this = $(this);
            var random_block_count = $this.find('.'+(opts.random_block_class)).length;
            var add_speed = 0;
            var minus_speed = 0;
            var round = 0;
            var is_stopping = 0;
            var is_stopped = 0;
            var speed = 0;
            var result = -1;
            var roll = function(){
                if(round > opts.max_round){
                    result = 0;
                }
                if(is_stopped){
                    return ;
                }
                if(round>opts.stop_round && result>=0){
                    is_stopping = 1;
                }
                setTimeout(function(){
                    $this.find('.'+(opts.random_block_class)).removeClass(opts.active_random_block_add_class);
                    var index=0;
                    switch (random_block_index){
                        case 0:index = random_block_index;break;
                        case 1:index = random_block_index;break;
                        case 2:index = random_block_index;break;
                        case 3:index = 4;break;
                        case 4:index = 7;break;
                        case 5:index = 6;break;
                        case 6:index = 5;break;
                        case 7:index = 3;break;
                    }
                    $($this.find('.'+(opts.random_block_class))[index]).addClass(opts.active_random_block_add_class);
                    random_block_index++;
                    if(random_block_index == random_block_count){
                        random_block_index=0;
                    }

                    if(!is_stopping){
                        add_speed+=opts.acc_speed;
                        speed = opts.start_speed-add_speed < opts.max_speed?opts.max_speed:opts.start_speed-add_speed;
                    }else{
                        minus_speed+=opts.minus_speed;
                        speed = opts.max_speed + minus_speed;
                        if(speed>opts.stop_speed && result>=0 && index == result){
                            is_stopped=1;
                            setTimeout(function(){
                                opts.afterStop(q_result);
                            },1000);
                            return;
                        }
                    }
                    if(random_block_index==random_block_count-1)
                        round++;

                    roll();
                },speed);
            };
            roll();

            var q_result = opts.getResult();
            if(q_result == -1){
                is_stopping = 1;
                result = 0;
            }else{
                result = q_result;
            }
            console.log(result);
        };



})(jQuery);

$.extend({

    bltToastAlert: function(text){
        if($('#bltToastAlert').html() != undefined){
            return;
        }
        $('body').append("<div id='bltToastAlert' style='width: 200px;top: 200px;border-radius: 6px;padding: 5px 8px;text-align: center;z-index: 100000;background: #000000;color: white;opacity: 0.6;position: fixed'>"+text+"</div>");
        var window_width = $(window).width();
//        var window_height = $(window).height();
        var $alertDiv = $('#bltToastAlert');
        $alertDiv.css({
            top:window.screen.availHeight/2-30,
            left:(window_width-200-16)/2
        });
        setTimeout(function(){
            $alertDiv.animate({opacity:0},'normal',function(){
                $alertDiv.remove();
            });
        },3000);
    }
});