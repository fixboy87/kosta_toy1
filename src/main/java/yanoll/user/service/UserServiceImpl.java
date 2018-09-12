package yanoll.user.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import yanoll.user.domain.Users;
import yanoll.user.persistence.UserDAO;

@Service
public class UserServiceImpl implements UserService {
	
	@Inject
	private UserDAO dao;
	
	@Override
	public List<Users> userList() throws Exception {
		return dao.selectList();
	}

	@Override
	public void modifyUser(Users user) throws Exception {
		dao.update(user);
	}

	@Override
	public void deregister(int userno) throws Exception {
		dao.delete(userno);
	}

	@Override
	public Users userDetail(int userno) throws Exception {
		return dao.selectOne(userno);
	}
}
