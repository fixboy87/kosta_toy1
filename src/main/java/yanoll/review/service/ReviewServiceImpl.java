package yanoll.review.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import yanoll.enquire.domain.Criteria;
import yanoll.review.domain.Hotel_OrderDTO;
import yanoll.review.domain.ReviewCriteria;
import yanoll.review.domain.Review_BoardVO;
import yanoll.review.persistence.ReviewDAO;
import yanoll.review.persistence.Review_ReplyDAO;

@Service
public class ReviewServiceImpl implements ReviewService {
	
	@Inject
	private ReviewDAO reviewDAO;
	
	@Inject
	private Review_ReplyDAO replyDAO;

	@Override
	public List<Review_BoardVO> listReview(Criteria cri)throws Exception {
		return reviewDAO.listReview(cri);
	}

	@Override
	public int CountPaging(Criteria cri) throws Exception {
		return reviewDAO.CountPaging(cri);
	}

	@Override
	public List<Hotel_OrderDTO> bookingList_check(String id) throws Exception {
		return reviewDAO.bookingList_check(id);
	}

	@Override
	public String searchHotle_name(int h_no) throws Exception {
		return reviewDAO.searchHotle_name(h_no);
	}

	@Transactional
	@Override
	public void insertReview(Review_BoardVO board) throws Exception {
		board.setUserNo(reviewDAO.search_userNo(board.getId()));
		reviewDAO.changeCondition(board.getOrder_num());
		reviewDAO.insertReview(board);
	}
	
	@Transactional
	@Override
    public Review_BoardVO detailReview(Integer r_no) throws Exception {
			reviewDAO.updateReviewCnt(r_no);
             return reviewDAO.detailReview(r_no);
    }

	@Transactional
	@Override
	public void deleteReview(Integer r_no) throws Exception {
		replyDAO.deleteAll(r_no);
		reviewDAO.deleteReview(r_no);
	}

	@Override
	public void updateReview(Review_BoardVO board) throws Exception {
		reviewDAO.updateReview(board);
	}

	@Override
	public List<Review_BoardVO> listReview_hotel(Integer h_no) throws Exception {
		return reviewDAO.listReview_hotel(h_no);
	}

	@Override
	public List<Review_BoardVO> listReview_hotelPage(Integer h_no, ReviewCriteria cri, boolean photo, String sortTerms) throws Exception {
		return reviewDAO.listReview_hotelPage(h_no, cri, photo, sortTerms);
	}

	@Override
	public int count(Integer h_no, boolean photo) throws Exception {
		return reviewDAO.count(h_no,photo);
	}

	@Override
	public int photoCnt(Integer h_no) throws Exception {
		return reviewDAO.photoCnt(h_no);
	}

}
