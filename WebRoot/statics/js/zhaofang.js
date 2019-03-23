//  页面交互 by wu 2017-7-10
//On Click Event
$('.filter-tab li').click(function(){
	var type = $(this).attr('data-re');
	selectModel(type);
	$(this).addClass("active").siblings().removeClass();
	$(".tab-center").hide().eq($('.filter-tab li').index(this)).show(); 
}); 
var isShow=false;
var isAde = "<?php echo $isAde; ?>";

window.onload=function(){

    if(isAde==1 && $('.li_selected').children().length<3 ){

     $('<li><img class="mf_adv" onclick="toSearch()" src="<?=G_DOMAIN_JS?>/static/pc/images/advertisement/mf_ad_1211.gif" alt=""></li>').insertBefore($(".list-center").find("li").eq(2));
      if($('#bigImg-btn').hasClass('showActive')){
        $('.mf_adv').remove();
        isShow=false;
        return;
      }
      isShow=true;
    }

 }

/*切换列表 start*/
$("#list-btn").click(function(){
	listModel(1);
    $("#bigImg-btn").removeClass('showActive')
    $(this).addClass('showActive')
    $(".unit-new").removeClass("unit-list-lan");
    if($('.li_selected')){
     var li_selected=$('.li_selected').find('span')[0].innerHTML;
     var li_selectedText=(li_selected.replace(/[^\Z0-9\u4E00-\u9FA5]/g,''));
    }
    if(isShow==false && isAde==1){
        if((li_selectedText =='整租'||li_selectedText =='公寓'||li_selectedText =='10002000元'||li_selectedText =='整租1'||li_selectedText =='公寓1'||li_selectedText =='10002000元1'||li_selectedText =='整租2'||li_selectedText =='公寓2'||li_selectedText =='10002000元2') && $('.li_selected').children().length<3){
          $('<li class="mf_adv"><img  onclick="toSearch()" src="<?=G_DOMAIN_JS?>/static/pc/images/advertisement/mf_ad_1211.gif" alt=""></li>').insertBefore($(".list-center").find("li").eq(2));
          isShow=true;
        }else{
          $('.mf_adv').remove();
          isShow=true;
          return;
        }

     }
    });
$("#bigImg-btn").click(function(){
	listModel(2);
    $("#list-btn").removeClass('showActive')
    $(this).addClass('showActive')
    $(".unit-new").addClass("unit-list-lan");
    if(isShow==true){
     $('.mf_adv').remove();
     isShow=false;
    }
});
function toSearch() {
  window.location.href='/zhaofang/kw魔方公寓/?utm_source=mfList&search_source=1';
  ga('send','event','找房页','魔方公寓','点击')

}
function listModel(type) {
  $.ajax({ url:'/ajax/listModel?type='+type,dataType:'json',async:false, success: function(result){}});
}
function selectModel(type) {
  $.ajax({ url:'/ajax/selectModel?type='+type,dataType:'json',async:false, success: function(result){}});
}
/*切换列表 end*/

//*模块固定*

	if($(".list-selected").length >0){
		var oTop = $(".list-selected").offset().top;
		var sTop = 0;
		$(window).scroll(function(){
		    sTop = $(this).scrollTop();
		    if(sTop >= oTop){
		        $(".list-selected").addClass('selectedfix');
		        $(".list-selected .pos-r").show();
		    }else{
		        $(".list-selected").removeClass('selectedfix')
		        $(".list-selected .pos-r").hide();
		    }
		});
	}else{
		var oTop = $(".search-line").offset().top;
		var sTop = 0;
		$(window).scroll(function(){
		    sTop = $(this).scrollTop();
		    if(sTop >= oTop){
		        $(".search-line").addClass('selectedfix');
		        $(".search-map-link").show();
		    }else{
		        $(".search-line").removeClass('selectedfix')
		        $(".search-map-link").hide();
		    }
		}); 
	}
	$(".top-xiugai").click(function(){
		$(document).scrollTop(0)
	})
	 function onProductClick(obj){
        ga('ec:addProduct', {
            'id': $(obj).parent().parent().attr('uniqid'),
            'name':$(obj).parent().parent().attr('name'),
            'category': $(obj).parent().parent().attr('category'),
            'brand': g_config['city'],
            'variant': $(obj).parent().parent().attr('variant'),
            'position': '立即找房'
        });
      ga('ec:setAction', 'click');
      ga('send', 'event', '租客pc', 'click', '魔方公寓');
    }
    function onProductClick_new(obj){
        ga('ec:addProduct', {
            'id': $(obj).parent().parent().parent().parent().attr('uniqid'),
            'name':$(obj).parent().parent().parent().parent().attr('name'),
            'category': $(obj).parent().parent().parent().parent().attr('category'),
            'brand': g_config['city'],
            'variant': $(obj).parent().parent().parent().parent().attr('variant'),
            'position': '立即找房'
        });
      ga('ec:setAction', 'click');
      ga('send', 'event', '租客pc', 'click', '魔方公寓');
    }