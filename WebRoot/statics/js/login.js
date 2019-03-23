$(document).ready(function(){
	 $("#phone").blur(function(){
		var phone =$(this).val();
		 if(phone==null||phone==""){
				$("#yan").html("手机号码不能为空!");
			}else{
				$.ajax({
					type : "POST",
					url : path + "/login/index",
					data : {"phone" : phone,"password":password},
					dataType : "json",
					success : function(data) {
						if(data=="error"){
							alert("1234");
							$(".login-link login-link-new").hide();
							window.location.href = path + "/login/index.html";	
						}
					},
					error:function(result){
						alert("登录失败!");
					}
				});
			}
	 });
	 $("#denglu").click(function(){
			$.ajax({
				type : "POST",
				url : path + "/login/index",
				data : {"phone" : phone,"password":password},
				dataType : "json",
				success : function(data) {
					if(password!="error"){
						alert("账户或者密码错误");
						window.location.href = path + "/login/login.html";
					}
				}
			});
	 });
});