$(document).ready(function () {
    var money = "";
    var area = "";
    var zType = "";
    var roomNum = "";
    var specials = "";
    var area = "";
    //按区域查询
    $("#PBAarea li").click(function () {
        //获取页面点击的下标、内容

        var index = $(this).index();
        area = $(this).context.innerText;

        //获取当前url内容，并截取
        // var href = window.location.pathname.substr(0, 7);
        var oldHref = window.location.pathname;
        var href = searchHref(oldHref);
        // alert(href);
        // alert(index);
        // alert(href + "a" + index);

        window.location.href =    href + "a" + index;
        // $.ajax({
        //     async: false,
        //     type: "GET",
        //     url: href + "a" + index,
        //     success: function (result) {
        //         alert("传递成功");
        //         // if (index == 0) {
        //         //     window.location.href = href + "a" + index;
        //         // } else {
        //         //
        //         //     window.location.href = href + "a" + index;
        //         // }
        //     },
        //     error: function (result) {
        //         alert("传递失败");
        //     }
        // });
    });

    // // 按街道查询
    // $(".pop-list li").click(function () {
    //     var index = $(this).index();
    //     alert(index);
    //     area = $(this).eq(index).html();
    //     alert(area);
    //
    // });

    //按价格查询
    $("#PBArent li").click(function () {
        //获取页面点击的下标、内容
        var index = $(this).index();
        money = $(this).find("a").html();

        var oldHref = window.location.pathname;
        // alert(oldHref);
        var href = searchHref(oldHref);
        window.location.href =    href + "c" + index;

        // $.ajax({
        //     async: false,
        //     type: "GET",
        //     url: href + "c" + index,
        //     success: function (result) {
        //         alert("传递成功");
        //         window.location.href = href + "c" + index;
        //     },
        //     error: function (result) {
        //         alert("传递失败");
        //     }
        // });

    })

    //按租赁类型查询
    $("#PBAtype li").click(function () {
        //获取页面点击的下标、内容

        var index = $(this).index();
        // alert(index);
        zType = $(this).find("a").html();
        // alert(zType);

        var oldHref = window.location.pathname;
        var href = searchHref(oldHref);
        window.location.href =    href + "d" + index;

        // $.ajax({
        //     async: false,
        //     type: "GET",
        //     url: href + "d" + index,
        //     success: function (result) {
        //         alert("传递成功");
        //         window.location.href = href + "d" + index;
        //     },
        //     error: function (result) {
        //         alert("传递失败");
        //     }
        // });
        // if (zType == "整租") {
        //     //整租 = 2
        //     zType = 3;
        // } else if (zType == "合租") {
        //     //合租 = 2
        //     zType = 2;
        // } else {
        //     zType = 1;
        // }
        // alert(oldHref);
        // alert(zType);
        // alert(area);
        // alert(window.location.pathname);

    });


    //按卧室个数查询
    $("#PBAunit li").click(function () {
        //获取页面点击的下标、内容
        var index = $(this).index();
        roomNum = $(this).find("a").html();

        var oldHref = window.location.pathname;
        var href = searchHref(oldHref);
        window.location.href =    href + "e" + index;

        // $.ajax({
        //     async: false,
        //     type: "GET",
        //     url: href + "e" + index,
        //     success: function (result) {
        //         alert("传递成功");
        //         window.location.href = href + "e" + index;
        //     },
        //     error: function (result) {
        //         alert("传递失败");
        //     }
        // });
        // var index = $(this).index(this);
        // roomNum = $(this).eq(index).html();
        // if (roomNum == "一室") {
        //     roomNum = 1;
        // } else if (roomNum == "二室") {
        //     roomNum = 2;
        // } else if (roomNum == "三室") {
        //     roomNum = 3;
        // } else if (roomNum == "三室以上") {
        //     roomNum = 4;
        // }
        //
        // alert(roomNum);
    });


    // 按特色查询
    $("#PBAspe li").click(function () {
        //获取页面点击的下标、内容
        var index = $(this).index();
        specials = $(this).find("a").html();

        var oldHref = window.location.pathname;
        var href = searchHref(oldHref);
        window.location.href =    href + "f" + index;

        // $.ajax({
        //     async: false,
        //     type: "GET",
        //     url: href + "f" + index,
        //     success: function (result) {
        //         alert("传递成功");
        //         window.location.href = href + "f" + index;
        //     },
        //     error: function (result) {
        //         alert("传递失败");
        //     }
        // });
        //
        // var index = $(this).index(this);
        // specials += $(this).eq(index).html();
        // if (specials == "独卫") {
        //     specials += 1;
        // } else if (specials == "近地铁") {
        //     specials += 2;
        // } else if (specials == "非隔断") {
        //     specials += 3;
        // } else if (specials == "朝南") {
        //     specials += 4;
        // } else if (specials == "带阳台") {
        //     specials += 5;
        // } else if (specials == "精装修") {
        //     specials += 6;
        // } else if (specials == "家电齐全") {
        //     specials += 7;
        // }
        // alert(specials);
    });

    function searchHref(href) {
        var h = href;
        if (h.indexOf("/all") != -1) {
            return h.replace("all", "") + "sh/";
        }
        return h;
    }
});