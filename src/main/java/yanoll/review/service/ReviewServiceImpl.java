package yanoll.review.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import yanoll.enquire.domain.Criteria;
import yanoll.review.domain.Hotel_OrderDTO;
import yanoll.review.domain.Review_BoardVO;
import yanoll.review.persistence.ReviewDAO;

@Service
public class ReviewServiceImpl implements ReviewService {
	
	@Inject
	private ReviewDAO dao;

	@Override
	public List<Review_BoardVO> listReview(Criteria cri)throws Exception {
		return dao.listReview(cri);
	}

	@Override
	public int CountPaging(Criteria cri) throws Exception {
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

	@Transactional
	@Override
	public void insertReview(Review_BoardVO board) throws Exception {
		board.setUserNo(dao.search_userNo(board.getId()));
		dao.changeCondition(board.getOrder_num());
		dao.insertReview(board);
	}
	
	@Transactional
	@Override
    public Review_BoardVO detailReview(Integer r_no) throws Exception {
			dao.updateReviewCnt(r_no);
             return dao.detailReview(r_no);
    }

	@Override
	public void deleteReview(Integer r_no) throws Exception {
		dao.deleteReview(r_no);
	}

	@Override
	public void updateReview(Review_BoardVO board) throws Exception {
		dao.updateReview(board);
	}

	@Override
	public List<Review_BoardVO> listReview_hotel(Integer h_no) throws Exception {
		return dao.listReview_hotel(h_no);
	}

	@Override
	public List<Review_BoardVO> listReview_hotelPage(Integer h_no, Criteria cri, boolean photo) throws Exception {
		return dao.listReview_hotelPage(h_no, cri,photo);
	}

	@Override
	public int count(Integer h_no, boolean photo) throws Exception {
		return dao.count(h_no,photo);
	}

	@Override
	public int photoCnt(Integer h_no) throws Exception {
		return dao.photoCnt(h_no);
	}

}
