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
import yanoll.review.domain.ReviewCriteria;
import yanoll.review.domain.ReviewPageMaker;
import yanoll.review.domain.Review_BoardVO;
import yanoll.review.service.ReviewService;

@RestController
@RequestMapping("/hotelReviews")
public class HotleReviewController {

	@Inject
	private ReviewService service;

	@RequestMapping(value = "/{h_no}/{page}/{photo}/{sortTerms}", method = RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> listReview_hotelPage(@PathVariable("h_no") Integer h_no,
			@PathVariable("page") Integer page, @PathVariable("photo") boolean photo,
			@PathVariable("sortTerms") String sortTerms) {

		ResponseEntity<Map<String, Object>> entity = null;

		try {
			
			ReviewCriteria cri = new ReviewCriteria();
			cri.setPage(page);

			ReviewPageMaker pageMaker = new ReviewPageMaker();
			pageMaker.setCri(cri);

			Map<String, Object> map = new HashMap<String, Object>();

			List<Review_BoardVO> reviewList = service.listReview_hotelPage(h_no, cri, photo, sortTerms);
			map.put("reviewList", reviewList);

			int reviewCount = service.count(h_no, photo);
			pageMaker.setTotalCount(reviewCount);
			map.put("pageMaker", pageMaker);

			int photoCnt = service.photoCnt(h_no);
			map.put("photoCnt", photoCnt);


			entity = new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}

}
