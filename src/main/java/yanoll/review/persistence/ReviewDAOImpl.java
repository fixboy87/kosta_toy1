package yanoll.review.persistence;
import java.util.List;
import javax.inject.Inject;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import yanoll.order.domain.Hotel_Order;
import yanoll.review.domain.Hotel_OrderDTO;
import yanoll.review.domain.ReviewCriteria;
import yanoll.review.domain.Review_BoardVO;
@Repository
public class ReviewDAOImpl implements ReviewDAO {
	@Inject
	private SqlSession session;
	
	private static String namespace =  
			"yanoll.mapper.Review_BoardMapper";
	@Override
	public List<Review_BoardVO> listReview(ReviewCriteria cri) throws Exception {
		return session.selectList(namespace+".listReview",cri,
				new RowBounds(cri.getPageStart(),cri.getPerPageNum()));
	}
	@Override
	public int CountPaging(ReviewCriteria cri) throws Exception {
		return session.selectOne(namespace+".countPaging", cri);
	}
	@Override
	public List<Hotel_OrderDTO> bookingList_check(String id) throws Exception {
		return session.selectList(namespace+".listCheck", id);
	}
	@Override
	public String searchHotle_name(int h_no) throws Exception {
		return session.selectOne(namespace+".searchHotle_name", h_no);
	}
	@Override
	public void insertReview(Review_BoardVO board) throws Exception {
		session.insert(namespace+".insertReview",board);
	}
	@Override
	public int search_userNo(String id) throws Exception {
		return session.selectOne(namespace+".search_userNo", id);
	}
}
