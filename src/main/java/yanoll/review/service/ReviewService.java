package yanoll.review.service;

import java.util.List;

import yanoll.enquire.domain.Criteria;
import yanoll.review.domain.Hotel_OrderDTO;
import yanoll.review.domain.ReviewCriteria;
import yanoll.review.domain.Review_BoardVO;

public interface ReviewService {
	public List<Review_BoardVO> listReview(Criteria cri)throws Exception;
	public int CountPaging(Criteria cri)throws Exception;
	
	public List<Hotel_OrderDTO>bookingList_check (String id)throws Exception;
	public String searchHotle_name(int h_no)throws Exception;
	
	public void insertReview(Review_BoardVO board)throws Exception;
	
	public Review_BoardVO detailReview(Integer r_no)throws Exception;
	
	public void deleteReview(Integer r_no)throws Exception;
	
	public void updateReview(Review_BoardVO board)throws Exception;

	public List<Review_BoardVO>listReview_hotel(Integer h_no)throws Exception;
	
	public List<Review_BoardVO>listReview_hotelPage(Integer h_no, ReviewCriteria cri, boolean photo,String sortTerms)throws Exception;
/*	public List<Review_BoardVO>listReview_hotelPage(Integer h_no, Criteria cri)throws Exception;
*/	
	public int count(Integer h_no, boolean photo)throws Exception;
/*	public int count(Integer h_no)throws Exception;
*/	
	public int photoCnt(Integer h_no)throws Exception;
}
