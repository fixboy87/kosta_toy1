package yanoll.review.service;

import java.util.List;

import yanoll.enquire.domain.Criteria;
import yanoll.review.domain.Review_ReplyVO;


public interface Review_ReplyService {
	public void addReply(Review_ReplyVO vo)throws Exception;
	public List<Review_ReplyVO > listReply(Integer r_no) throws Exception;
	public void modifyReply(Review_ReplyVO vo)throws Exception;
	public void removeReply(Integer r_r_no)throws Exception;
	
	public List<Review_ReplyVO> listReplyPage(Integer r_no, Criteria cri)throws Exception;
	public int count(Integer r_no) throws Exception;
}
