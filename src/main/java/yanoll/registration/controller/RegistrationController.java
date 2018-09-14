package yanoll.registration.controller;


import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import yanoll.registration.service.RegistrationService;
import yanoll.user.domain.Actors;
import yanoll.user.domain.Hotel;
import yanoll.user.domain.Users;
import yanoll.util.WrongAccessException;

@Controller
@RequestMapping("/register/*")
public class RegistrationController {
	
	@Inject
	private RegistrationService service;
	
	@RequestMapping(value = "/type", method = RequestMethod.GET)
	public void register_typeGET (Model model) {
		
	}
	
	
	@RequestMapping(value = "/type", method = RequestMethod.POST)
	public String register_typePOST (Model model) {
		
		return "register";
	}
	
/*	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String registerGET (Model model, @RequestParam("type") String type) {
		System.out.println("11111111111111111");
		System.out.println("type = "+type);
		String uri = "register/register?type="+type;
		return uri;
	}*/
	
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public void registerPOST (Model model, @RequestParam("type") String type) {
		model.addAttribute("type", type);
	}
	
	
/*	@RequestMapping(value = "/details", method = RequestMethod.GET)
	public void DetailsGET (Model model,
			@RequestParam("type") String type, @RequestParam("newid") String newid, @RequestParam("newpass") String newpass) {
		
		model.addAttribute("type", type);
		model.addAttribute("newid", newid);
		model.addAttribute("newpass", newpass);
		
	}*/
	
	@RequestMapping(value = "/user_detail", method = RequestMethod.POST)
	public void detailsPOST (Model model,
			@RequestParam("email") String email, @RequestParam("id") String id, @RequestParam("tel") String tel, 
			@RequestParam("name") String name, @RequestParam("password") String password) {

		model.addAttribute("email", email);
		model.addAttribute("id", id);
		model.addAttribute("tel", tel);
		model.addAttribute("name", name);
		model.addAttribute("password", password);
		
	}
	
	@RequestMapping(value = "/hotel_detail", method = RequestMethod.POST)
	public void hotelDetails (Model model,
			@RequestParam("email") String email, @RequestParam("id") String id, @RequestParam("tel") String tel, 
			@RequestParam("name") String name, @RequestParam("password") String password) {
		
		model.addAttribute("h_mail", email);
		model.addAttribute("h_id", id);
		model.addAttribute("h_phonenum", tel);
		model.addAttribute("h_name", name);
		model.addAttribute("h_password", password);
		
	}
	
	
	
	@RequestMapping(value = "/registration", method = RequestMethod.POST)
	public String registration(Users user, RedirectAttributes rttr, HttpServletRequest request) {
		
		try {
			service.register(user);
		} catch (Exception e) {
			e.printStackTrace();
			return "register/wrong_access";
		}
		
		rttr.addFlashAttribute("message", "register_success");
		return "redirect:/";
		
	}
	
	@RequestMapping(value = "/registration_hotel", method = RequestMethod.POST)
	public String registration_hotel(Hotel hotel, RedirectAttributes rttr, HttpServletRequest request) {
		try{
			service.register_hotel(hotel);
		} catch (Exception e) {
			e.printStackTrace();
			return "register/wrong_access";
		}
		
		rttr.addFlashAttribute("message", "register_success");
		return "redirect:/";
	}
	
	@RequestMapping(value = "/wrong_access", method = RequestMethod.GET)
	public String wrongAccess(RedirectAttributes rttr) {
		rttr.addFlashAttribute("message", "register_wrong_access");
		return "redirect:/";
	}

	
	@RequestMapping(value = "/idcheck", method = RequestMethod.GET)
	public @ResponseBody String idcheck(@RequestParam("id") String id) {
		String userId = "";
		try {
			if((userId = service.idcheck(id)) == "none") {
				return "fail";
			} else {
				return "success";
			}
		} catch (Exception e) {
			e.printStackTrace();
			return "register/not_functioning";
		}
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void login() {
		
	}
	
	@RequestMapping(value = "/loggingin", method = RequestMethod.POST)
	public String loggingin(HttpServletRequest request, HttpServletResponse response, RedirectAttributes rttr) {
		try {
			service.login(request, response);
		
		} catch (WrongAccessException e) {
			e.printStackTrace();
			return "register/wrong_access";
		} catch (Exception e) {
			e.printStackTrace();
			return "register/not_functioning";
		}
		
		rttr.addFlashAttribute("message", "login_success");
		return "redirect:/";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request, HttpServletResponse response, RedirectAttributes rttr) {
		try {
			service.logout(request, response);
		
		} catch (Exception e) {
			e.printStackTrace();
			return "register/not_functioning";
		}
		
		rttr.addFlashAttribute("message", "logout_success");
		return "redirect:/";
	}
	
	@RequestMapping(value = "/myPage", method = RequestMethod.GET)
	public String myPageMain(HttpServletRequest request, Model model) {
		try {
			if(service.myPageList(request) instanceof Users) {
				Users user = (Users)service.myPageList(request);
				model.addAttribute("user", user);
			} else {
				model.addAttribute("hotel", (Hotel)service.myPageList(request));
				return "/register/adminPage";
			}
		
		} catch (WrongAccessException e) {
			e.printStackTrace();
			return "register/wrong_access";
		} catch (Exception e) {
			return "register/not_functioning";
		}
		return "/register/myPage";
	}
	
	@RequestMapping(value = "/modify_user", method = RequestMethod.POST)
	public String modifyUserDetail(HttpServletRequest request, Users user, RedirectAttributes rttr, Model model) {
		try {
			service.modifyUser(user);
			model.addAttribute("user", service.myPageList(request));

		} catch (Exception e) {
			e.printStackTrace();
			return "register/not_functioning";
		}
		
		rttr.addFlashAttribute("message", "update_success");
		return "/register/myPage";
	}
	
	
	public String modifyHotelDetail(HttpServletRequest request, Hotel hotel, RedirectAttributes rttr, Model model) {
		try {
			service.modifyHotel(hotel);
			model.addAttribute("hotel", service.myPageList(request));
		
		} catch (Exception e) {
			e.printStackTrace();
			return "register/not_functioning";
		}
		
		rttr.addFlashAttribute("message", "update_success");
		return "/register/adminPage";
	}
	
	
	@RequestMapping(value = "/register/not_functioning")
	public String generalExceptionHandler(RedirectAttributes rttr) {
		rttr.addFlashAttribute("message", "not_working");
		return "redirect:/";
	}
}
