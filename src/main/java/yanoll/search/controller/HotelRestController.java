package yanoll.search.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import yanoll.search.domain.HotelaVO;
import yanoll.search.service.HotelService;

@RestController
@RequestMapping("/search")
public class HotelRestController {

	
	@Inject
	private HotelService service;
	//
	@RequestMapping(value="/listPage/{h_location}/{start}/{end}/{low_price}/{max_price}", method = RequestMethod.GET)
	public ResponseEntity<List<HotelaVO>> searchConditions(
			@PathVariable("h_location") String h_location,			
			@PathVariable("start") String start,			
			@PathVariable("end") String end,			
			@PathVariable("low_price") int low_price,			
			@PathVariable("max_price") int max_price){
				
		ResponseEntity<List<HotelaVO>> entity = null;
		
		HotelaVO vo = new HotelaVO();
		
		vo.setH_location(h_location);
		vo.setStart_day(start);
		vo.setEnd_day(end);
		vo.setLow_price(low_price);
		vo.setMax_price(max_price);
		
		System.out.println(h_location);
		System.out.println(max_price);
		System.out.println(low_price);
		
		try {
			
			entity = new ResponseEntity<List<HotelaVO>>(
					service.hotelListConditions(vo),HttpStatus.OK);
			
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<List<HotelaVO>>(HttpStatus.BAD_REQUEST);
		}
		

		return entity;
		
	}
	
	

/*@RequestMapping(value = "/listPage/{h_location}/{start}/{end}/{low_price}/{max_price}", method = RequestMethod.POST)
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
//		dto.setH_location(h_location);
//		dto.setLow_price(low_price);
//		dto.setMax_price(max_price);
		//service.hotelListConditions(dto);
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	return null;
}*/
}
