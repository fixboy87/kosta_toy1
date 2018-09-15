package yanoll.search.controller;


import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import yanoll.search.domain.HotelaVO;
//import yanoll.search.dto.HotelDTO;
import yanoll.search.service.HotelService;

@Controller
@RequestMapping("/search")

public class HotelController {

	@Inject
	private HotelService service;	

	@RequestMapping(value = "/listPage", method = RequestMethod.GET)
	public void listPage(Model model)throws Exception{
		System.out.println("컨트롤러 체크");
		
		model.addAttribute("list", service.hotelListBasic());

	}
	@RequestMapping(value = "/listPage", method = RequestMethod.POST)
	public @ResponseBody List<HotelaVO> infinityWar(@RequestBody HotelaVO vo) throws Exception{
		System.out.println(vo.getH_no());
		System.out.println("infinit 컨트롤러 접근 체크");
		
		int qqweqwe = vo.getH_no()-1;
		
		
		return service.infinityScroll(qqweqwe);
		
	}
	

	//search/search?h_location=부산&low_price=0&max_price=28
	
	@RequestMapping(value = "/listPage1", method = RequestMethod.GET )
	public void searchConditions(
			@RequestParam("h_location") String h_location,
			@RequestParam("low_price") int low_price,
			@RequestParam("max_price") int max_price,
			Model model) throws Exception{
			
		HotelaVO vo = new HotelaVO();
		
		vo.setH_location(h_location);
		vo.setLow_price(low_price);
		vo.setMax_price(max_price);
		
		model.addAttribute("list",service.hotelListConditions(vo));
	}
	
	@RequestMapping(value = "/data", method = RequestMethod.GET)
	public void data()throws Exception{
		
	}
	
	
	@RequestMapping(value = "/data", method = RequestMethod.POST)
	public String data(HotelaVO vo)throws Exception{
		
		service.dataInsert(vo);
		
		return "redirect:/search/data";
		
	}
	
	

	
	
}












































