package yanoll.review.service;

import java.util.List;

import yanoll.review.domain.ReviewSearchVO;
import yanoll.review.domain.Review_BoardVO;

public interface ReviewService {
	public List<Review_BoardVO> listReview(ReviewSearchVO search)throws Exception;
}
