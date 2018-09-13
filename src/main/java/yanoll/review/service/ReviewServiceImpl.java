package yanoll.review.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import yanoll.order.domain.Hotel_Order;
import yanoll.review.domain.Hotel_OrderDTO;
import yanoll.review.domain.ReviewCriteria;
import yanoll.review.domain.ReviewSearchVO;
import yanoll.review.domain.Review_BoardVO;
import yanoll.review.persistence.ReviewDAO;

@Service
public class ReviewServiceImpl implements ReviewService {
	
	@Inject
	private ReviewDAO dao;

	@Override
	public List<Review_BoardVO> listReview(ReviewCriteria cri)throws Exception {
		return dao.listReview(cri);
	}

	@Override
	public int CountPaging(ReviewCriteria cri) throws Exception {
		return dao.CountPaging(cri);
	}

	@Override
	public List<Hotel_OrderDTO> bookingList_check(String id) throws Exception {
		return dao.bookingList_check(id);
	}

	@Override
	public String searchHotle_name(int h_no) throws Exception {
		return dao.searchHotle_name(h_no);
	}

	@Override
	public void insertReview(Review_BoardVO board) throws Exception {
		board.setUserNo(dao.search_userNo(board.getId()));
		dao.insertReview(board);
	}
	

}
