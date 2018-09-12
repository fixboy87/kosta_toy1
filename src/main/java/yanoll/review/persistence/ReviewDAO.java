package yanoll.review.persistence;

import java.util.List;

import yanoll.review.domain.ReviewSearchVO;
import yanoll.review.domain.Review_BoardVO;

public interface ReviewDAO {
	public List<Review_BoardVO> listReview(ReviewSearchVO search)throws Exception;
	
}
