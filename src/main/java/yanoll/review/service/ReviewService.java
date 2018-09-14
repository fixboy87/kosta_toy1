package yanoll.review.service;

import java.util.List;

import yanoll.review.domain.Hotel_OrderDTO;
import yanoll.review.domain.ReviewCriteria;
import yanoll.review.domain.ReviewSearchVO;
import yanoll.review.domain.Review_BoardVO;

public interface ReviewService {
	public List<Review_BoardVO> listReview(ReviewCriteria cri)throws Exception;
	public int CountPaging(ReviewCriteria cri)throws Exception;
	
	public List<Hotel_OrderDTO>bookingList_check (String id)throws Exception;
	public String searchHotle_name(int h_no)throws Exception;
	
	public void insertReview(Review_BoardVO board)throws Exception;
	
	public Review_BoardVO detailReview(Integer r_no)throws Exception;
	
	public void deleteReview(Integer r_no)throws Exception;
	
	public void updateReview(Review_BoardVO board)throws Exception;
}
