package yanoll.review.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import yanoll.review.domain.ReviewSearchVO;
import yanoll.review.domain.Review_BoardVO;

@Repository
public class ReviewDAOImpl implements ReviewDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace =  
			"yanoll.mapper.Review_BoardMapper";

	@Override
	public List<Review_BoardVO> listReview(ReviewSearchVO search) throws Exception {
		return session.selectList(namespace+".listReview",search);
	}
}
