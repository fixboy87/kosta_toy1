package yanoll.registration.service;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import yanoll.registration.dto.LoginDTO;
import yanoll.registration.dto.LoginHotelDTO;
import yanoll.registration.persistence.RegistrationDAO;
import yanoll.user.domain.Actors;
import yanoll.user.domain.Hotel;
import yanoll.user.domain.Users;
import yanoll.util.WrongAccessException;

@Service
public class RegistrationServiceImpl implements RegistrationService {

	@Inject
	private RegistrationDAO dao;
	
	@Override
	public void register(Users user) throws Exception {
		dao.insert(user);
	}

	@Override
	public void register_hotel(Hotel hotel) throws Exception {
		dao.insert_hotel(hotel);
	}
	
	@Override
	public String idcheck(String id) throws Exception {
		return dao.idCheck(id);
	}

	@Override
	public void login(HttpServletRequest request, HttpServletResponse response) throws Exception {
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
		} else {
			throw new WrongAccessException();
		}
		
		Cookie idCookie = new Cookie("uid", id);
		idCookie.setMaxAge(60*60*24);
		response.addCookie(idCookie);
		//return map;
	}

	@Override
	public void logout(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		
		session.invalidate();
		
		Cookie idCookie = new Cookie("uid", null);
		idCookie.setMaxAge(0);
		response.addCookie(idCookie);
	}

	@Override
	public Actors myPageList(HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		String type = (String)session.getAttribute("type");
		String id = (String)session.getAttribute("uid");
		Actors userActor = null;
		
		if(type.equals("user")) {
			userActor = new Users();
			userActor = dao.getUserDetail(id);
		} else if (type.equals("hotel")) {
			userActor = new Hotel();
			userActor =  (Actors)dao.getHotelDetail(id);
			
		} else {
			throw new WrongAccessException();
		}
		return userActor;
	}

	@Override
	public void modifyUser(Users user) throws Exception {
		dao.updateUser(user);
	}

	@Override
	public void modifyHotel(Hotel hotel) throws Exception {
		dao.updateHotel(hotel);
	}

	@Override
	public void findInfo(String email, String tel, String type, RedirectAttributes rttr) throws Exception {
		
		if(type.equals("user")) {
			Users user = new Users();
			user.setEmail(email);
			user.setTel(tel);
			Users userDetail = dao.findInfo(user);
			
			rttr.addFlashAttribute("id", userDetail.getId());
			rttr.addFlashAttribute("password", userDetail.getPassword());
			
		} else if(type.equals("hotel")) {
			Hotel hotel = new Hotel();
			hotel.setH_mail(email);
			hotel.setH_phonenum(tel);
			Hotel hotelDetail = dao.findInfo(hotel);
			
			rttr.addFlashAttribute("id", hotelDetail.getH_id());
			rttr.addFlashAttribute("password", hotelDetail.getH_password());
			
		} else {
			throw new WrongAccessException();
		}
		rttr.addFlashAttribute("message", "id_password_found");
	}

	@Override
	public void deregister(HttpServletRequest request, RedirectAttributes rttr, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		
		String type = (String)session.getAttribute("type");
		String id = (String)session.getAttribute("uid");
		
		if(type.equals("user")) {
			dao.deleteUser(id);
		} else if(type.equals("hotel")) {
			dao.deleteHotel(id);
		} else {
			throw new WrongAccessException();
		}
		rttr.addFlashAttribute("message", "deregister_successful");
		
		session.invalidate();
		
		Cookie idCookie = new Cookie("uid", null);
		idCookie.setMaxAge(0);
		response.addCookie(idCookie);
	}

	
}
