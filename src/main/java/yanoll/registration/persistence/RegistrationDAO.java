package yanoll.registration.persistence;

import yanoll.user.domain.Users;

public interface RegistrationDAO {
	
	public void insert(Users user) throws Exception;
		
	//public boolean idCheck(String id) throws Exception;
	
	//public boolean checkOthers(CheckDTO dto) throws Exception;
	
}
