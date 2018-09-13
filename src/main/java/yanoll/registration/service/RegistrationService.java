package yanoll.registration.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import yanoll.registration.dto.LoginDTO;
import yanoll.user.domain.Hotel;
import yanoll.user.domain.Users;

public interface RegistrationService {
	
	public void register(Users user) throws Exception;

	public String idcheck(String id);

	public void login(HttpServletRequest request, HttpServletResponse response);

	public void logout(HttpServletRequest request, HttpServletResponse response);

	public void register_hotel(Hotel hotel);
	
}
