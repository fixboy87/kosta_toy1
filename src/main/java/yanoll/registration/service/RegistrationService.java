package yanoll.registration.service;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import yanoll.user.domain.Actors;
import yanoll.user.domain.Hotel;
import yanoll.user.domain.Users;

public interface RegistrationService {
	
	public void register(Users user) throws Exception;

	public String idcheck(String id) throws Exception;

	public void login(HttpServletRequest request, HttpServletResponse response) throws Exception;

	public void logout(HttpServletRequest request, HttpServletResponse response) throws Exception;

	public void register_hotel(Hotel hotel) throws Exception;

	public Actors myPageList(HttpServletRequest request) throws Exception;

	public void modifyUser(Users user) throws Exception;

	public void modifyHotel(Hotel hotel) throws Exception;
	
}
