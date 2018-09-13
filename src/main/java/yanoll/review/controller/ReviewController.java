package yanoll.review.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.flash;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import yanoll.enquire.domain.PageMaker;
import yanoll.order.domain.Hotel_Order;
import yanoll.review.domain.Hotel_OrderDTO;
import yanoll.review.domain.ReviewCriteria;
import yanoll.review.domain.ReviewPageMaker;
import yanoll.review.domain.ReviewSearchVO;
import yanoll.review.domain.Review_BoardVO;
import yanoll.review.service.ReviewService;

@Controller
@RequestMapping("/review/*")
public class ReviewController {
 
	@Inject
	private ReviewService service;

	private static final Logger logger = LoggerFactory.getLogger(ReviewController.class);

	@RequestMapping(value="/review_list", method=RequestMethod.GET)
	public void listReview(@ModelAttribute("cri")ReviewCriteria cri, Model model)throws Exception{
		/*ReviewSearchVO vo = new ReviewSearchVO();
		vo.setH_name("그랜드 하얏트 서울");*/
		model.addAttribute("list", service.listReview(cri));
		
		ReviewPageMaker pageMaker= new ReviewPageMaker();
		pageMaker.setCri(cri);
		//pageMaker.setTotalCount(131);
		pageMaker.setTotalCount(service.CountPaging(cri));
		model.addAttribute("pageMaker", pageMaker);

	}
	
	@RequestMapping(value="/bookingList_check", method=RequestMethod.GET)
	public void bookingList_check( Model model)throws Exception{
		String id ="user1";
		List<Hotel_OrderDTO> orderList = service.bookingList_check(id);
		List<Hotel_OrderDTO> list = new ArrayList<Hotel_OrderDTO>();
		
		for (int i = 0; i < orderList.size(); i++) {
			Hotel_OrderDTO dto = new Hotel_OrderDTO();
			dto.setOrder_num(orderList.get(i).getOrder_num());
			dto.setH_no(orderList.get(i).getH_no());
			dto.setNumber_of_stay_days(orderList.get(i).getNumber_of_stay_days());
			dto.setStart_day(orderList.get(i).getStart_day());
			dto.setEnd_day(orderList.get(i).getEnd_day());
			int h_no = orderList.get(i).getH_no();
			String h_name = service.searchHotle_name(h_no);
			dto.setH_name(h_name);
			list.add(dto);
		}
	
		model.addAttribute("list", list);
		
	}
	
	@RequestMapping(value="/review_insert", method= RequestMethod.GET)
	public void review_insertGET(Hotel_OrderDTO dto,Model model)throws Exception{
		System.out.println(dto.toString());
		String id = "user1";
		Review_BoardVO board = new Review_BoardVO();
		board.setH_name(dto.getH_name());
		board.setOrder_num(dto.getOrder_num());
		board.setNumber_of_stay_days(dto.getNumber_of_stay_days());
		board.setId(id);
		model.addAttribute("board", board);
	}
	@RequestMapping(value="/review_insert", method= RequestMethod.POST)
	public String review_insertPOST(Review_BoardVO board,RedirectAttributes rttr)throws Exception{
		System.out.println(board.toString());
		rttr.addFlashAttribute("msg", "REVIEW_INSERT SECCESS");
		return"redirect:/review/review_list";
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
