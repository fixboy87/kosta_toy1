package yanoll.review.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import yanoll.review.domain.Review_BoardVO;
import yanoll.review.persistence.ReviewDAO;

@Service
public class ReviewServiceImpl implements ReviewService {
	
	@Inject
	private ReviewDAO dao;

	@Override
	public List<Review_BoardVO> listReview()throws Exception {
		return dao.listReview();
	}
	

}
