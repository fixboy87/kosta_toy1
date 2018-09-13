package yanoll.registration.persistence;

import java.util.Map;

import yanoll.registration.dto.LoginDTO;
import yanoll.user.domain.Hotel;
import yanoll.user.domain.Users;

public interface RegistrationDAO {
	
	public void insert(Users user) throws Exception;

	public String idCheck(String id);

	public Users login(LoginDTO dto);

	public Hotel login_hotel(Map<String, String> login);

	public void insert_hotel(Hotel hotel);
		
	//public boolean idCheck(String id) throws Exception;
	
	//public boolean checkOthers(CheckDTO dto) throws Exception;
	
}
