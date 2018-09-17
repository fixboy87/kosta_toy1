package yanoll.review.persistence;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import yanoll.enquire.domain.Criteria;
import yanoll.order.domain.Hotel_Order;
import yanoll.review.domain.Hotel_OrderDTO;
import yanoll.review.domain.Review_BoardVO;
@Repository
public class ReviewDAOImpl implements ReviewDAO {
	@Inject
	private SqlSession session;
	private static String namespace = "yanoll.mapper.Review_BoardMapper";
	@Override
	public List<Review_BoardVO> listReview(Criteria cri) throws Exception {
		return session.selectList(namespace + ".listReview", cri,
				new RowBounds(cri.getPageStart(), cri.getPerPageNum()));
	}
	@Override
	public int CountPaging(Criteria cri) throws Exception {
		return session.selectOne(namespace + ".countPaging", cri);
	}
	@Override
	public List<Hotel_OrderDTO> bookingList_check(String id) throws Exception {
		return session.selectList(namespace + ".listCheck", id);
	}
	@Override
	public String searchHotle_name(int h_no) throws Exception {
		return session.selectOne(namespace + ".searchHotle_name", h_no);
	}
	@Override
	public void insertReview(Review_BoardVO board) throws Exception {
		session.insert(namespace + ".insertReview", board);
	}
	@Override
	public int search_userNo(String id) throws Exception {
		return session.selectOne(namespace + ".search_userNo", id);
	}
	@Override
	public Review_BoardVO detailReview(Integer r_no) throws Exception {
		return session.selectOne(namespace + ".detailReview", r_no);
	}
	@Override
	public void deleteReview(Integer r_no) throws Exception {
		session.delete(namespace + ".deleteReivew", r_no);
	}
	@Override
	public void updateReview(Review_BoardVO board) throws Exception {
		session.update(namespace + ".updateReview", board);
	}
	@Override
	public List<Review_BoardVO> listReview_hotel(Integer h_no) throws Exception {
		return session.selectList(namespace + ".listReview_hotel", h_no);
	}
	@Override
	public List<Review_BoardVO> listReview_hotelPage(Integer h_no, Criteria cri, boolean photo) throws Exception {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("h_no", h_no);
		paramMap.put("cri", cri);
		paramMap.put("photo", photo);/* 이곳 */
		return session.selectList(namespace + ".listReview_hotelPage", paramMap);
	}
	@Override
	public int count(Integer h_no, boolean photo) throws Exception {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("h_no", h_no);
		paramMap.put("photo", photo);/* 이곳 */
		return session.selectOne(namespace + ".count", paramMap);
/*		return session.selectOne(namespace + ".count", h_no);
*/	}
	@Override
	public int photoCnt(Integer h_no) throws Exception {
		return session.selectOne(namespace + ".photoCnt", h_no);
	}
	@Override
	public void updateReviewCnt(Integer r_no) throws Exception {
		session.update(namespace+".updateReviewCnt", r_no);
	}
	@Override
	public void changeCondition(Integer order_num) throws Exception {
		session.update(namespace+".changeCondition", order_num);
	}
}