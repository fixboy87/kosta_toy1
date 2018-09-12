package yanoll.user.persistence;

import java.util.List;

import yanoll.user.domain.Users;

public interface UserDAO {
	
	public List<Users> selectList() throws Exception;
	
	public void update(Users user) throws Exception;
	
	public void delete(int userno) throws Exception;
	
	public Users selectOne(int userno) throws Exception;

}
