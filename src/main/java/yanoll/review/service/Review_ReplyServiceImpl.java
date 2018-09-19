package yanoll.review.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import yanoll.enquire.domain.Criteria;
import yanoll.review.domain.Review_ReplyVO;
import yanoll.review.persistence.ReviewDAO;
import yanoll.review.persistence.Review_ReplyDAO;

@Service
public class Review_ReplyServiceImpl implements Review_ReplyService {

	@Inject
	private Review_ReplyDAO replyDAO; 
	
	@Inject
	private ReviewDAO reviewDAO;
	
	@Override
	public void addReply(Review_ReplyVO vo) throws Exception {
		
		replyDAO.create(vo);
	}

	@Override
	public List<Review_ReplyVO> listReply(Integer r_no) throws Exception {
		return replyDAO.list(r_no);
	}

	@Override
	public void modifyReply(Review_ReplyVO vo) throws Exception {
		replyDAO.update(vo);
	}
	
	@Override
	public void removeReply(Integer r_r_no) throws Exception { /*댓글 삭제시 댓글 총갯수 -1*/
		
		replyDAO.delete(r_r_no);
	}

	@Override
	public List<Review_ReplyVO> listReplyPage(Integer r_no, Criteria cri) throws Exception {
		return replyDAO.listPage(r_no, cri);
	}

	@Override
	public int count(Integer r_no) throws Exception {
		return replyDAO.count(r_no);
	}


}
