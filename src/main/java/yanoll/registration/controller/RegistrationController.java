package yanoll.registration.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import yanoll.registration.service.RegistrationService;

@Controller
@RequestMapping("/register/*")
public class RegistrationController {
	
	@Inject
	private RegistrationService service;
	
	@RequestMapping(value = "/type", method = RequestMethod.GET)
	public String register_typeGET (Model model) {
		
		return "register";
	}
	
	/*@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register_typePOST (Model model) {
		return 
	}*/
}
