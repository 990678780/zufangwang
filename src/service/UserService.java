package service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import entity.User;


public interface UserService {
	/**
	 * 增加用户信息
	 * 
	 * @param user
	 * @return
	 */
	public int register(User user);

	/**
	 * 用户登录
	 * 
	 * @param userCode 
	 * @param userPassword
	 * @return
	 */
	public User login(User user);
    /**
     * 更新用户资料
     * @param user
     * @return
     */
	public List<User> update(User user);
	/**
	 * 根据ID查找user
	 * 
	 * @param id
	 * @return
	 */
	public User queryById(String id);

	/**
	 * 根据User更改密码
	 * @param id
	 * @param pwd
	 * @return
	 */
	public int updatePwd(User user);
	/**
	 * 根据手机号查询用户
	 * @param phone
	 * @return
	 */

	public User selectphoneUser(String phone);
	
}
