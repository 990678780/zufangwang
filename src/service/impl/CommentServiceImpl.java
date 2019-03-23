package service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import dao.comment.CommentMapper;

import entity.Comment;
import service.CommentService;
/**
 * 
 * @author xwd
 *@Date: 10:41 2018/4/18
 * @Description: 评论service接口实现类
 *
 */
@Service
public class CommentServiceImpl implements CommentService {
	/**
     * 注入CommentMapper接口
     */
	@Resource
	private CommentMapper commentMapper; 
	
	/*
     * 根据帖子ID来遍历：queryAll（帖子ID）
     */
	@Override
	public List<Comment> queryAll(int iId) {
		// TODO Auto-generated method stub
		List<Comment> allComment=commentMapper.queryAll(iId);
		return allComment;
	}
	 /*
     * 添加评论：add（评论人id，帖子id，评论内容）
     */
	@Override
	public boolean add(Comment comment) {
		// TODO Auto-generated method stub
		
		return commentMapper.add(comment);
	}
	/*
     * 删除评论：del（commentId）
     */
	@Override
	public int del(int id) {
		// TODO Auto-generated method stub
		return commentMapper.del(id);
	}
	/*
     * 回复评论：reply（评论人id，帖子id，评论内容+评论的人的昵称）
     */
	@Override
	public int reply(Comment comment) {
		// TODO Auto-generated method stub
		return 0;
	}
	 /*
     *根据帖子id获取 评论数：count(int iId)
     */
	@Override
	public int count(int iId) {
		// TODO Auto-generated method stub
		return commentMapper.count(iId);
		
	}

}
