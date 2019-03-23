$(document).ready(function() {
	var path = $("#path").val();
	$("#phone").blur(function() {
		var phone = $(this).val();
		if (phone.length<11) {
			$("#yan").html("*请输入正确的手机号!");
		} else {
			$.ajax({
				type : "POST",
				url : path + "/login/phoneyan",
				data : {"phone" : phone},
				dataType : "json",
				success : function(data) {
					if (data.phone == "exist") {
						$("#yan").html("*账户已被使用");
					    $("#register").click(function() {
							$(this).html("");
							window.location.href = path + "/login/doregister.html";
						});
					}
					 else {
						$("#yan").html("*账户可以使用");
					}
				}
			});
		}
		$("#register").click(function() {
			var pwd = $("#pwd").val();
			$.ajax({
				type : "POST",
				url : path + "/login/doregister",
				data : {
					"phone" : phone,
					"pwd" : pwd
				},
				dataType : "json",
				success : function(result) {
					if (result.register == "cuo") {
						$("#yan").html("*账号不正确,请输入正确的账号");
					}
					else if (result.register == "success") {
						window.location.href = path + "/login/login.html";
					} else if (result.register == "error") {
						alert("*注册失败!");
					}
				},
				error : function(result) {
					alert("*程序出错!");
				}
			});
		});
	});
	$("#phone").focus(function(){
		$("#yan").html("");
		
	})
	
});