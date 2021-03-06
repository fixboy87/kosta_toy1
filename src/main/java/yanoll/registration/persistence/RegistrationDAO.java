package yanoll.registration.persistence;


import yanoll.registration.dto.LoginDTO;
import yanoll.registration.dto.LoginHotelDTO;
import yanoll.user.domain.Actors;
import yanoll.user.domain.Hotel;
import yanoll.user.domain.Users;

public interface RegistrationDAO {
	
	public void insert(Users user) throws Exception;

	public Users idCheck(String id) throws Exception;

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

	public Hotel idCheck_h(String id) throws Exception;

	public Users telCheck(String tel) throws Exception;

	public Hotel telCheck_h(String tel) throws Exception;
		
}
