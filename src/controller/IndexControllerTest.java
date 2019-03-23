package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 一级链接
 */
@Controller
public class IndexControllerTest {
	
	/**
	 * index页面
	 * @param model
	 * @return
	 */
	@RequestMapping("/")
	public String index() {
		return "index";
	}
	
	@RequestMapping("/index")
	public String toindex() {
		return "index";
	}
	
	@RequestMapping("/createhouse")
	public String createhouse() {
		return "createhouse";
	}
	
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	
	@RequestMapping("/register")
	public String register() {
		return "register";
	}
	
	@RequestMapping("/zhaofang")
	public String zhaofang() {
		return "zhaofang";
	}
	
	@RequestMapping("/write")
	public String write() {
		return "write";
	}
	@RequestMapping("/wanji")
	public String wanji(){
		return "wanji";
	}
}
