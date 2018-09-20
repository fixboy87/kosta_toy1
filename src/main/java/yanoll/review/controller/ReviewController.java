package yanoll.review.controller;


import java.util.ArrayList;
import java.util.List;
import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import yanoll.review.domain.Hotel_OrderDTO;
import yanoll.review.domain.Review_BoardVO;
import yanoll.review.dto.Review_boardDTO;
import yanoll.review.service.ReviewService;
import yanoll.util.UploadFileUtils;

@Controller
@RequestMapping("/reviews")
public class ReviewController {

	@Inject
	private ReviewService service;

	@Resource(name = "uploadPath")
	private String uploadPath;

	@RequestMapping(value = "/bookingList_check/{h_noPage}", method = RequestMethod.GET)
	public String bookingList_check(Model model, @PathVariable("h_noPage") Integer h_noPage, HttpServletRequest request)
			throws Exception {
		
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("uid");
		List<Hotel_OrderDTO> orderList = service.bookingList_check(id);
		List<Hotel_OrderDTO> list = new ArrayList<Hotel_OrderDTO>();
		
		for (int i = 0; i < orderList.size(); i++) {
			Hotel_OrderDTO dto = new Hotel_OrderDTO();
			dto.setOrder_num(orderList.get(i).getOrder_num());
			dto.setH_no(orderList.get(i).getH_no());
			dto.setNumber_of_stay_days(orderList.get(i).getNumber_of_stay_days());
			dto.setUserNo(orderList.get(i).getUserNo());
			dto.setEnd_day(orderList.get(i).getEnd_day());
			dto.setStart_day(orderList.get(i).getStart_day());
			int h_no = orderList.get(i).getH_no();
			String h_name = service.searchHotle_name(h_no);
			dto.setH_name(h_name);
			list.add(dto);
		}

		model.addAttribute("list", list);
		model.addAttribute("h_noPage", h_noPage);

		return "/reviews/bookingList_check";
	}

	
	
	@RequestMapping(value = "/review_insert/{h_noPage}", method = RequestMethod.GET)
	public String review_insertGET(Hotel_OrderDTO dto, Model model, @PathVariable("h_noPage") Integer h_noPage,
			HttpServletRequest request) throws Exception {

		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("uid");

		Review_BoardVO board = new Review_BoardVO();
		board.setH_name(dto.getH_name());
		board.setOrder_num(dto.getOrder_num());
		board.setNumber_of_stay_days(dto.getNumber_of_stay_days());
		board.setId(id);
		board.setUserNo(dto.getUserNo());
		model.addAttribute("board", board);
		model.addAttribute("h_noPage", h_noPage);

		return "/reviews/review_insert";
	}


	
	@RequestMapping(value = "/review_insert/{h_noPage}", method = RequestMethod.POST)
	public String review_insertPOST(Review_boardDTO dto, @PathVariable("h_noPage") Integer h_noPage) throws Exception {
		MultipartFile file = dto.getR_fname();
		String savedName = UploadFileUtils.uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes());

		Review_BoardVO vo = new Review_BoardVO();
		vo.setR_fname(savedName);
		vo.setH_name(dto.getH_name());
		vo.setId(dto.getId());
		vo.setNumber_of_stay_days(dto.getNumber_of_stay_days());
		vo.setOrder_num(dto.getOrder_num());
		vo.setR_content(dto.getR_content());
		vo.setR_grade(dto.getR_grade());
		vo.setR_title(dto.getR_title());
		vo.setUserNo(dto.getUserNo());
		
		service.insertReview(vo);
		return "redirect:/room/detailPage?h_no=" + h_noPage;
	}

	
	
	@RequestMapping(value = "/detailReview/{r_no}/{h_noPage}", method = RequestMethod.GET)
	public String detailReview(@PathVariable("r_no") int r_no, Model model, @PathVariable("h_noPage") int h_noPage)
			throws Exception {
		Review_BoardVO vo = service.detailReview(r_no);

		model.addAttribute("board", vo);
		model.addAttribute("h_noPage", h_noPage);

		return "/reviews/review_detail";
	}

	
	
	@RequestMapping(value = "/deleteReview/{r_no}/{h_noPage}", method = RequestMethod.GET)
	public String deleteReview(@PathVariable("r_no") int r_no, @PathVariable("h_noPage") int h_noPage)
			throws Exception {
		service.deleteReview(r_no);

		return "redirect:/room/detailPage?h_no=" + h_noPage;
	}

	
	
	@RequestMapping(value = "/updateReview/{r_no}/{h_noPage}", method = RequestMethod.GET)
	public String updateReview(@PathVariable("r_no") int r_no, @PathVariable("h_noPage") int h_noPage, Model model)
			throws Exception {
		Review_BoardVO board = service.detailReview(r_no);
		model.addAttribute("board", board);
		model.addAttribute("h_noPage", h_noPage);

		return "/reviews/updateReview";
	}

	
	
	@RequestMapping(value = "/updateReview/{h_noPage}", method = RequestMethod.POST)
	public String updateReviewPOST(Review_BoardVO board, @PathVariable("h_noPage") int h_noPage, Model model)
			throws Exception {
		service.updateReview(board);

		return "redirect:/room/detailPage?h_no=" + h_noPage;
	}
}
