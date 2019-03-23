package controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.mysql.jdbc.StringUtils;
import com.sun.xml.internal.bind.v2.schemagen.xmlschema.List;

import tools.Constants;

import entity.User;

import service.UserService;
import sun.print.resources.serviceui;

@Controller
@RequestMapping("/login")
public class UserController {
	private Logger logger = Logger.getLogger(UserController.class);
	@Resource
	private UserService userService;

	@RequestMapping(value = "/login.html")
	public String login() {
		logger.debug("登录测试============>");
		return "login";
	}

	/**
	 * 实现登录功能
	 * 
	 * @param user
	 * @param session
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/dologin", method = RequestMethod.POST)
	public String doLogin(User user, HttpSession session, Model model) {
		User user2 = userService.login(user);
		if (user2 != null) {
			if (user2.getPassword().equals(user.getPassword())) {
				logger.debug("登录测试=======================================>");
				session.setAttribute("user", user2);
				return "index";
			} else {
				session.setAttribute("error", "密码错误!");
			}
			return "login";
		} else {
			session.setAttribute("error", "账号不存在!");
			return "login";
		}
	}

	@RequestMapping(value = "/register.html")
	public String register() {
		logger.debug("注册测试=======================>");
		return "register";
	}

	@RequestMapping(value = "/doregister", method = RequestMethod.POST)
	@ResponseBody
	public String doregister(String phone, String pwd, Model model) {
		Map<String, String> map = new HashMap<String, String>();
		logger.debug("注册进入=====================>");
		User user = new User();
		user.setPhone(phone);
		user.setPassword(pwd);
		System.out.println(phone.length());
		if(phone.length()!=11){
			map.put("register", "cuo");
		}else 	if (userService.register(user) > 0) {
			map.put("register", "success");
		} else {
			map.put("register", "error");
		}
		return JSONArray.toJSONString(map);
	}
	
	@RequestMapping(value="/phoneyan")
	@ResponseBody
	public String yanzheng(@RequestParam String phone){
		 HashMap<String , String>  reHashMap = new HashMap<String, String>();
			    User user = userService.selectphoneUser(phone);
			    if(null!=user){
			    	reHashMap.put("phone", "exist");
			    	
			    }else{
			    	reHashMap.put("phone", "noexist");
			    }
		 return JSONArray.toJSONString(reHashMap);
	}
	
	@RequestMapping(value = "/wanji.html")
	public String updataPwd() {
		logger.debug("修改测试=======================>");
		return "wanji";
	}
	
	@RequestMapping(value = "/updataPwd",method=RequestMethod.POST)
	public String updata( User user, String verify_code,HttpSession session,Model model) {
		User user2 = userService.login(user);
		System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
		if (user2 != null) {
			if (user2.getPassword().equals(user.getPassword())&&user2.getPhone().equals(user.getPhone())) {
				logger.debug("修改测试进入=======================================>");
				user2.setPhone(user.getPhone());
				user2.setPassword(verify_code);
				userService.updatePwd(user2);
				return "login";
			} else {
				session.setAttribute("error", "密码错误!");
				return "index";
			}
		} else {
			session.setAttribute("error", "账号不存在!");
			return "index";
		}
	}
}