package service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import entity.Comment;

/**
 * 
 * @author xwd
 *@Date: 10:41 2018/4/18
 * @Description: 评论service接口
 */

public interface CommentService {
	 /*
     * 根据帖子ID来遍历：queryAll（帖子ID）
     */
    public List<Comment> queryAll(int iId);

    /*
     * 添加评论：add（评论人id，帖子id，评论内容）
     */
    public boolean add(Comment comment);

    /*
     * 删除评论：del（commentId）
     */
    public int del(int id);

    /*
     * 回复评论：reply（评论人id，帖子id，评论内容+评论的人的昵称）
     */
    public int reply(Comment comment);
    /*
     *根据帖子id获取 评论数：count(int iId)
     */
    public int count(int iId);
}
