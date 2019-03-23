package controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import entity.Comment;
import entity.Invitation;
import entity.User;
import service.CommentService;
import service.InvitationService;
import tools.PageSupport;

@Controller
@RequestMapping("/findsuble")
public class InvitationController {

	@Resource
	private InvitationService invitationService;
	@Resource
	private CommentService commentService;
	/**
	 * 找室友首页，遍历信息
	 * 
	 * @return
	 */
	@RequestMapping("/index")
	public String index(Model model) {
		// 获取默认条件下的列表
		List<Invitation> invitations = invitationService.getByConditions("",
				0, 0, 1, 0);
		// 获取分页所需的数据
		PageSupport ps = new PageSupport();
		ps.setTotalCount(invitationService.getCount("", 0, 0, 1));
		model.addAttribute("invitations", invitations);
		model.addAttribute("ps", ps);
		return "findsuble";
	}
	/**
	 * 添加一个帖子
	 */
	@RequestMapping("/save")
	public String save(Invitation invitate,User user,HttpServletRequest rq,HttpSession session){
			invitationService.addInvitation(invitate);
			return "index";
	}
	/**
	 * 根据条件遍历信息
	 */
	@RequestMapping("/findinvitation")
	public String findinvitation(
			@RequestParam(value="address",required=false)String address, 
			@RequestParam(value="start_price",required=false)Integer start_price,
			@RequestParam(value="end_price",required=false)Integer end_price, 
			@RequestParam(value="searchtype",required=false)String searchtype, String pno, Model model) {
		//test
		/*System.out.println(address + ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
		System.out.println(start_price + ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
		System.out.println(end_price + ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
		System.out.println(searchtype + ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");*/
		// 转换type类型
		int type = 1;
		if (searchtype.equals("找室友")) {
			type = 2;
		} else if (searchtype.equals("转租")) {
			type = 3;
		} else if (searchtype.equals("求租")) {
			type = 4;
		}
		//转换数据类型为int
		int pageNo=1;
		if (pno!=null) {
			pageNo=Integer.parseInt(pno);
			System.out.println(pageNo+">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>...");
		}
		//非空判断
		if (address.equals("null")) {
			address="";
		}
		if (start_price==null) {
			start_price=0;
		}
		if (end_price==null) {
			end_price=3000;
		}
		// 获取分页所需数据
		PageSupport ps = new PageSupport();
		ps.setTotalCount(invitationService.getCount(address, start_price,
				end_price, type));
		ps.setCurrentPageNo(pageNo);
		model.addAttribute("ps", ps);
		// 获取数据列表
		int start = 5*(pageNo-1);
		List<Invitation> invitations = invitationService.getByConditions(
				address, start_price, end_price, type, start);
		model.addAttribute("invitations", invitations);
		return "findsuble";
	}
	
	
	/**
	 * 打开指定的页面
	 */
	@RequestMapping("/findsuble_content")
	public String invitationContent(int id,Model model) {
		System.out.println(id+">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
		 List<Comment> commentList = commentService.queryAll(id);
		Invitation invitation=invitationService.getInvitationById(id);
		//该帖子的评论
		model.addAttribute("commentList",commentList);
		model.addAttribute("invitation", invitation);
		//该帖子评论数
		 model.addAttribute("count",commentList.size());
		for (Comment comment : commentList) {
			System.out.println(">>>>>>>>"+comment.getId()+"****"+comment.getContext()+"&&&&"+comment.getUser().getName());
		}
		System.out.println("评论数："+commentList.size());
		return "findsuble_content";
	}
	
	//添加留言评论
    @RequestMapping("/add")
    public String addComment( @RequestParam("iId") int id, HttpSession session, @RequestParam("context") String context,Model model)
    {
    	
    	User user = (User) session.getAttribute("user");
    
    		if(user!=null){
    			 Comment comment=new Comment();
    		       comment.setiId(id);
    		       comment.setUid(user.getId());
    		       comment.setContext(context);
    		        System.out.println(comment.getiId()+"=="+comment.getUid()+"=="+comment.getContext());
    		        commentService.add(comment);
    		       model.addAttribute("id", id);
    		        System.out.println("id="+id);
    		        return "redirect:findsuble_content";
    		}else{
    			return "login";
    		}
    }
}
