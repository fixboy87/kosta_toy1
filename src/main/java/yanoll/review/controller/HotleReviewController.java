package yanoll.review.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import yanoll.enquire.domain.Criteria;
import yanoll.enquire.domain.PageMaker;
import yanoll.review.domain.Review_BoardVO;
import yanoll.review.service.ReviewService;

@RestController
@RequestMapping("/hotelReviews")
public class HotleReviewController {
	
	@Inject
	private ReviewService service;
	
	@RequestMapping(value="/{h_no}", method=RequestMethod.GET)
	public ResponseEntity<List<Review_BoardVO>> listReview_hotel(@PathVariable("h_no")Integer h_no){
		
		ResponseEntity<List<Review_BoardVO>> entity =null;
		
		try {
			entity = new ResponseEntity<List<Review_BoardVO>>(service.listReview_hotel(h_no), HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		 return entity;
	}
	

@RequestMapping(value="/{h_no}/{page}/{photo}", method= RequestMethod.GET)
	public ResponseEntity<Map<String, Object>>listReview_hotelPage(
			@PathVariable("h_no")Integer h_no
			,@PathVariable("page")Integer page
			,@PathVariable("photo")boolean photo){
		ResponseEntity<Map<String, Object>> entity = null;
		
		try {
			Criteria cri= new Criteria();
			cri.setPage(page);
			
			PageMaker pageMaker = new PageMaker();
			pageMaker.setCri(cri);
			
			Map<String, Object> map = new HashMap<String, Object>();
			
			List<Review_BoardVO> reviewList = service.listReview_hotelPage(h_no, cri,photo);
			map.put("reviewList", reviewList);
			
			int reviewCount = service.count(h_no,photo);
			pageMaker.setTotalCount(reviewCount);
			map.put("pageMaker", pageMaker);
			
			int photoCnt = service.photoCnt(h_no);
			map.put("photoCnt", photoCnt);
			System.out.println("photoCnt:"+photoCnt);
			entity = new ResponseEntity<Map<String,Object>>(map, HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
/*@RequestMapping(value="/{h_no}/{page}", method= RequestMethod.GET)
public ResponseEntity<Map<String, Object>>listReview_hotelPage(
		@PathVariable("h_no")Integer h_no
		,@PathVariable("page")Integer page){
	ResponseEntity<Map<String, Object>> entity = null;
	
	try {
		Criteria cri= new Criteria();
		cri.setPage(page);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		List<Review_BoardVO> reviewList = service.listReview_hotelPage(h_no, cri);
		map.put("reviewList", reviewList);
		
		int reviewCount = service.count(h_no);
		pageMaker.setTotalCount(reviewCount);
		map.put("pageMaker", pageMaker);
		
		int photoCnt = service.photoCnt(h_no);
		map.put("photoCnt", photoCnt);
		System.out.println("photoCnt:"+photoCnt);
		entity = new ResponseEntity<Map<String,Object>>(map, HttpStatus.OK);
	} catch (Exception e) {
		entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
	}
	return entity;
}
*/	
	
}
