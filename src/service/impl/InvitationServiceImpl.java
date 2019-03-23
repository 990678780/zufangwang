package service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.invitation.InvitationMapper;

import service.InvitationService;
import entity.Invitation;

@Service("invitationService")
public class InvitationServiceImpl implements InvitationService {

	@Autowired
	private InvitationMapper invitationMapper;// 引入Mapper

	@Override
	public int addInvitation(Invitation invitate) {
		return invitationMapper.addInvitation(invitate);
	}

	@Override
	public int delInvitationById(int id) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public List<Invitation> getByConditions(String address, int minPrice,
			int maxPrice, int zType,int start) {
		return invitationMapper.getByConditions(address, minPrice, maxPrice,
				zType,start);
	}

	@Override
	public int getCount(String address, int minPrice,
			int maxPrice, int zType) {
		return invitationMapper.getCount(address, minPrice, maxPrice, zType);
	}

	@Override
	public Invitation getInvitationById(int id) {
		// TODO Auto-generated method stub
		return invitationMapper.getInvitationById(id);
	}
}
