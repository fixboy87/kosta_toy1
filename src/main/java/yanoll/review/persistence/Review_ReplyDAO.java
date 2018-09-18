package yanoll.review.persistence;

import java.util.List;

import yanoll.enquire.domain.Criteria;
import yanoll.review.domain.Review_ReplyVO;

public interface Review_ReplyDAO {

	public List<Review_ReplyVO> list(Integer r_no) throws Exception;
	public void create(Review_ReplyVO vo)throws Exception;
	public void update(Review_ReplyVO vo)throws Exception;
	public void delete(Integer r_r_no)throws Exception;
	public List<Review_ReplyVO> listPage(Integer r_no, Criteria cri)throws Exception;
	public int count(Integer r_no) throws Exception;
	
	public int getR_no(Integer r_r_no)throws Exception;
	
	public void  deleteAll(Integer r_no)throws Exception;
}
