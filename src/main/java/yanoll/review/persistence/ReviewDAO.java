package yanoll.review.persistence;

import java.util.List;

import yanoll.review.domain.Hotel_OrderDTO;
import yanoll.review.domain.ReviewCriteria;
import yanoll.review.domain.Review_BoardVO;

public interface ReviewDAO {
	public List<Review_BoardVO> listReview(ReviewCriteria cri)throws Exception;
	public int CountPaging(ReviewCriteria cri)throws Exception;
	
	public List<Hotel_OrderDTO> bookingList_check(String id)throws Exception;
	public String searchHotle_name(int h_no)throws Exception;
	
	public void insertReview(Review_BoardVO board)throws Exception;
	public int search_userNo(String id)throws Exception;
	
}
