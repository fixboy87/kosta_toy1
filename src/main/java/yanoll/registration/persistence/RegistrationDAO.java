package yanoll.registration.persistence;


import yanoll.registration.dto.LoginDTO;
import yanoll.registration.dto.LoginHotelDTO;
import yanoll.user.domain.Hotel;
import yanoll.user.domain.Users;

public interface RegistrationDAO {
	
	public void insert(Users user) throws Exception;

	public String idCheck(String id);

	public Users login(LoginDTO dto);

	public Hotel login_hotel(LoginHotelDTO dto);

	public void insert_hotel(Hotel hotel);

	public Users getUserDetail(String id);

	public Object getHotelDetail(String id);
		
	//public boolean idCheck(String id) throws Exception;
	
	//public boolean checkOthers(CheckDTO dto) throws Exception;
	
}
