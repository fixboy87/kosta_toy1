package yanoll.review.persistence;

import java.util.List;

import yanoll.review.domain.Review_BoardVO;

public interface ReviewDAO {
	public List<Review_BoardVO> listReview()throws Exception;
	
}
