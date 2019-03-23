package service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import entity.Invitation;
import entity.User;

public interface InvitationService {
	/**
	 * 贴子接口
	 * @author Administrator
	 *
	 */
		/*
		 * 发布贴子方法
		 */
		public int addInvitation(Invitation invitate);
		/*
		 * 根据ID删除贴子方法
		 */
		public int delInvitationById(int id);
		
		/**
		 * 根据ID获取贴子方法
		 */
		public Invitation getInvitationById(int id);
		/*
		 * 根据条件模糊查询帖子(地址，租金范围，专区类型，当前页数)
		 */
		public List<Invitation> getByConditions(String address, int minPrice,
				int maxPrice, int zType,int start);
		/*
		 * 根据条件模糊查询帖子数量(地址，租金范围，专区类型，当前页数)
		 */
		int getCount(String address, int minPrice, int maxPrice, int zType);
	}


