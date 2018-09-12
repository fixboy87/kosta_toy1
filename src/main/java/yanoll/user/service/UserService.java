package yanoll.user.service;

import java.util.List;

import yanoll.user.domain.Users;

public interface UserService {

	public List<Users> userList() throws Exception;
	
	public void modifyUser(Users user) throws Exception;
	
	public void deregister(int userno) throws Exception;
	
	public Users userDetail(int userno) throws Exception;
}
