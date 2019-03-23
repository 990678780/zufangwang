package dao.invitation;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import entity.Invitation;
import entity.User;

/**
 * 贴子接口
 * @author Administrator
 *
 */
public interface InvitationMapper {
	/*
	 * 发布贴子方法
	 */
	public int addInvitation(Invitation invitate);
	/*
	 * 根据ID删除贴子方法
	 */
	public int delInvitationById(@Param("id")int id);
	/**
	 * 根据ID获取贴子方法
	 */
	public Invitation getInvitationById(int id);
	/*
	 * 根据条件模糊查询帖子总数(地址，租金，专区类型)
	 */
	public int getCount(@Param("address")String address, @Param("minPrice")int minPrice,
			@Param("maxPrice")int maxPrice,@Param("type") int zType);
	/*
	 * 根据条件模糊查询帖子(地址，租金，专区类型，分页条件)
	 */
	public List<Invitation> getByConditions(@Param("address")String address, @Param("minPrice")int minPrice,
			@Param("maxPrice")int maxPrice,@Param("type") int zType,@Param("start")int start);
}
