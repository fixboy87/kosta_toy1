package yanoll.registration.persistence;


import yanoll.registration.dto.LoginDTO;
import yanoll.registration.dto.LoginHotelDTO;
import yanoll.user.domain.Hotel;
import yanoll.user.domain.Users;

public interface RegistrationDAO {
	
	public void insert(Users user) throws Exception;

	public String idCheck(String id) throws Exception;

	public Users login(LoginDTO dto) throws Exception;

	public Hotel login_hotel(LoginHotelDTO dto) throws Exception;

	public void insert_hotel(Hotel hotel) throws Exception;

	public Users getUserDetail(String id) throws Exception;

	public Hotel getHotelDetail(String id) throws Exception;

	public void updateUser(Users user) throws Exception;

	public void updateHotel(Hotel hotel) throws Exception;

	public Users findInfo(Users user) throws Exception;

	public Hotel findInfo(Hotel hotel) throws Exception;

	public void deleteUser(String id) throws Exception;

	public void deleteHotel(String id) throws Exception;
		
	//public boolean idCheck(String id) throws Exception;
	
	//public boolean checkOthers(CheckDTO dto) throws Exception;
	
}
