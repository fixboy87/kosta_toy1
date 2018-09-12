package yanoll.search.controller;


import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import yanoll.search.service.HotelService;

@Controller
@RequestMapping("/search")

public class HotelController {

	@Inject
	private HotelService service;
	
	@RequestMapping(value = "/listPage", method = RequestMethod.GET)
	public void listPage(Model model)throws Exception{
		System.out.println("컨트롤러 체크");
		System.out.println(service.hotelListBasic());
		
		model.addAttribute("list", service.hotelListBasic());

	}
	
}
