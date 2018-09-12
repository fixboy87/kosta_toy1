package yanoll.review.service;

import java.util.List;

import yanoll.review.domain.Review_BoardVO;

public interface ReviewService {
	public List<Review_BoardVO> listReview()throws Exception;
}
