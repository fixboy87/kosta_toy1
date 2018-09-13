package yanoll.registration.service;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import yanoll.registration.dto.LoginDTO;
import yanoll.registration.dto.LoginHotelDTO;
import yanoll.registration.persistence.RegistrationDAO;
import yanoll.user.domain.Hotel;
import yanoll.user.domain.Users;

@Service
public class RegistrationServiceImpl implements RegistrationService {

	@Inject
	private RegistrationDAO dao;
	
	@Override
	public void register(Users user) throws Exception {
		dao.insert(user);
	}

	@Override
	public void register_hotel(Hotel hotel) {
		dao.insert_hotel(hotel);
	}
	
	@Override
	public String idcheck(String id) {
		return dao.idCheck(id);
	}

	@Override
	public void login(HttpServletRequest request, HttpServletResponse response) {
		String type = request.getParameter("loginType");
		Hotel hotel;
		Users user;
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		HttpSession session = request.getSession();
		//Map<String, Object> map = new HashMap<String, Object>();
		
		if(type.equals("user")) {
			LoginDTO dto = new LoginDTO();
			dto.setId(id);
			dto.setPassword(password);
			user = dao.login(dto);
			
			session.setAttribute("type", type);
			session.setAttribute("uid", user.getId());
			session.setAttribute("name", user.getName());
			//map.put("type_value", user);
			
		} else if(type.equals("hotel")) {
			LoginHotelDTO dto = new LoginHotelDTO();
			dto.setH_id(id);
			dto.setH_password(password);
			hotel = dao.login_hotel(dto);

			session.setAttribute("type", type);
			session.setAttribute("uid", hotel.getH_id());
			session.setAttribute("name", hotel.getH_name());

			//map.put("type_value", hotel);
		}
		
		Cookie idCookie = new Cookie("uid", id);
		idCookie.setMaxAge(60*60*24);
		response.addCookie(idCookie);
		//return map;
	}

	@Override
	public void logout(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		
		session.invalidate();
		
		Cookie idCookie = new Cookie("uid", null);
		idCookie.setMaxAge(0);
		response.addCookie(idCookie);
	}

	
}
