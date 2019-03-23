package service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import dao.user.UserMapper;

import service.UserService;

import entity.User;

@Service
public class UserServiceImpl implements UserService {
	@Resource
	private UserMapper userMapper;

	/**
	 * 用户登录的方法
	 */
	public int register(User user) {
		return userMapper.register(user);
	}

	/**
	 * 用户登录的方法
	 */
	@Override
	public User login(User user) {
		return userMapper.login(user);
	}

	@Override
	public List<User> update(User user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User queryById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	/**
	 * 修改密码
	 */
	@Override
	public int updatePwd(User user) {
		return userMapper.updatePwd(user);
	}
/**
 * 根据手机号查询User对象
 */
	@Override
	public User selectphoneUser(String phone) {
		return userMapper.selectphoneUser(phone);
	}
}
