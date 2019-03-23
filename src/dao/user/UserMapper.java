package dao.user;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import entity.User;

public interface UserMapper {
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
	 * 根据ID查找user
	 * 
	 * @param id
	 * @return
	 */
	public User queryById(String id);

	/**
	 * 更新用户信息
	 * 
	 * @param user
	 * @return
	 */
	public boolean update(User user);

	/**
	 * 根据手机号phone修改密码
	 * 
	 * @param phone
	 * @param pwd
	 * @return
	 */
	public int  updatePwd(User user);
	/**
	 * 按照手机号获取User对象
	 * @return
	 */
	public User selectphoneUser(@Param("phone") String phone);
	
}