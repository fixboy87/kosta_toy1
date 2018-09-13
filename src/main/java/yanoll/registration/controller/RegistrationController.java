package yanoll.registration.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import yanoll.registration.service.RegistrationService;
import yanoll.user.domain.Users;

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
	public void detailsPOST (Users user, RedirectAttributes rttr) {

	}
	
	public String registration(Users user, RedirectAttributes rttr) {
		
		try {
			service.register(user);
		} catch (Exception e) {
			e.printStackTrace();
			rttr.addFlashAttribute("message", "failure");
			return "redirect:/";
		}
		rttr.addAttribute("id", user.getId()).addFlashAttribute("message", "success");
		return "redirect:/{id}";
		
	}
	
	@RequestMapping(value = "/idcheck", method = RequestMethod.GET)
	public @ResponseBody String idcheck(@RequestParam("id") String id) {
		String userId = "";
		if((userId = service.idcheck(id)) == "none") {
			return "fail";
		} else {
			return "success";
		}
	}
}
