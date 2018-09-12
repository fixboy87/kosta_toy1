package yanoll.review.controller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import yanoll.review.domain.Review_BoardVO;
import yanoll.review.service.ReviewService;

@Controller
@RequestMapping("/review/*")
public class ReviewController {
 
	@Inject
	private ReviewService service;

	private static final Logger logger = LoggerFactory.getLogger(ReviewController.class);

	@RequestMapping(value="/review_list", method=RequestMethod.GET)
	public void listReview(Model model)throws Exception{
		model.addAttribute("list", service.listReview());
	}
	
/*	@RequestMapping(value = "/review_list", method = RequestMethod.GET)
	public ResponseEntity<List<Review_BoardVO>> listReviewAll() {
	logger.info("컨트로럴-------------------------------------------------------------");
		ResponseEntity<List<Review_BoardVO>> entity = null;

		try {
			entity = new ResponseEntity<List<Review_BoardVO>>(service.listReviewAll(), HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return null;
	}*/
	
	/*@RequestMapping(value="/reivew_insert", method= RequestMethod.GET)
	public void reivew_insertGET(Review_BoardVO board, Model model){
		logger.info("reivew_insertGET======================");
	}*/
	
	/*@RequestMapping(value="/reivew_insert", method=RequestMethod.POST)
	public ResponseEntity<String> reivew_insertPOST(@RequestBody Review_BoardVO board){
		ResponseEntity<String> entity = new ResponseEntity<>("SUCCESS", HttpStatus.OK);
		try {
			
		} catch (Exception e) {
		}
		return null;
	}*/

}
