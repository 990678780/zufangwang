package controller;


import java.util.Date;


import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import service.CommentService;
import service.UserService;

import entity.Comment;



@Controller
//@RequestMapping("/comment")
/**
 * 描述:用户controller<BR>
 * 创建人:<xwd>
 * 时间:2018年4月19日下午4:15:58<BR>
 * @version
 */
public class CommentController {
	//private Logger logger=Logger.getLogger(CommentController.class);
	@Resource
	private CommentService commentService;
	@Resource
	private UserService userService;
	/**
	 * 根据iId查询所有的评论
	 * @param model
	 * @param iId
	 * @return
	 */
 /*   @RequestMapping("/findsuble")  
    public String getAllUser(Model model,int id){
    	System.out.println(id);
        List<Comment> commentList = commentService.queryAll(id);*/
        //int count=commentService.count(id);
      /*  model.addAttribute("commentList",commentList);
        System.out.println("评论数："+commentList.size());
        model.addAttribute("count",commentList.size());
        for (Comment comment : commentList) {
			System.out.println(">>>>>>>>"+comment.getId()+"****"+comment.getContext()+"&&&&"+comment.getUser().getName()
					);
		System.out.println("评论数："+commentList.size());
        }
        */
     
    /*    return "findsuble_content";
    }*/
	/**
	 * 根据评论id删除评论：del（commentId）
	 * @param model
	 * @param id
	 * @return
	 */
    @RequestMapping("/delComment")
    public String delComment(@RequestParam String id){
    	System.out.println(id);
 	   if(id!=null&&id!=""){
 		   int num = commentService.del(Integer.parseInt(id));
 		   System.out.println(num);
 	   }
 	   return "findsuble_content";
    }
    @RequestMapping(value="/addComment",method=RequestMethod.GET)
    public String addComment(@ModelAttribute("comment")Comment comment){
		return "saveComment";
		}
}
