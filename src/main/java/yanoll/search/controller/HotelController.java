package yanoll.search.controller;


import java.util.List;

import javax.inject.Inject;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
		System.out.println(service.hotelListBasic());
		
		model.addAttribute("list", service.hotelListBasic());

	}
	
	@RequestMapping(value = "/listPage/{h_location}/{start}/{end}/{low_price}/{max_price}", method = RequestMethod.POST)
	public ResponseEntity<List<HotelaVO>> searchConditions(@RequestBody HotelaVO vo,
			@PathVariable("h_location") String h_location,
			@PathVariable("start") String start,
			@PathVariable("end") String end,
			@PathVariable("low_price") String low_price,
			@PathVariable("max_price") String max_price
			){
		System.out.println("qweqEGAWHGIUABGiuw;ebgiu;eg;uwbgweui;bgwae;gqaeg");
		ResponseEntity<List<HotelaVO>> entity = null;
		System.out.println(h_location);
		System.out.println(start);
		System.out.println(end);
		System.out.println(low_price);
		System.out.println(max_price);
		try {
			
			//search/HotelPriceSelector.do?h_location=부산&start_day=09%2F12%2F2018&end_day=09%2F14%2F2018&low_price=0&max_price=15
//			dto.setH_location(h_location);
//			dto.setLow_price(low_price);
//			dto.setMax_price(max_price);
			//service.hotelListConditions(dto);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}
	//listPage?h_location=부산&start_day=09%2F21%2F2018&end_day=09%2F20%2F2018&low_price=0&max_price=28
	@RequestMapping(value = "/listPage?h_location={h_location}&start_day={start}&end_day={end}&low_price={low_price}&max_price={max_price}", method = RequestMethod.POST)
	public void test(
			@PathVariable("h_location") String h_location,
			@PathVariable("start") String start,
			@PathVariable("end") String end,
			@PathVariable("low_price") String low_price,
			@PathVariable("max_price") String max_price
			){
		System.out.println("qweqEGAWHGIUABGiuw;ebgiu;eg;uwbgweui;bgwae;gqaeg");
		ResponseEntity<List<HotelaVO>> entity = null;
		System.out.println(h_location);
		System.out.println(start);
		System.out.println(end);
		System.out.println(low_price);
		System.out.println(max_price);
	}
}













































