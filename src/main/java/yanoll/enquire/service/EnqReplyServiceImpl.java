package yanoll.enquire.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import yanoll.enquire.domain.Enquire_Reply;
import yanoll.enquire.persistence.EnqReplyDao;

@Service
public class EnqReplyServiceImpl implements EnqReplyService {
	
	@Inject
	private EnqReplyDao dao;

	@Override
	public void insert(Enquire_Reply reply) throws Exception {
		dao.create(reply);

	}

	@Override
	public List<Enquire_Reply> listReply(int e_seq) throws Exception {
		
		return dao.list(e_seq);
	}

	@Override
	public void deleteReply(int r_seq) throws Exception {
		dao.delete(r_seq);
		
	}

	@Override
	public void updateReply(Enquire_Reply reply) throws Exception {
		dao.update(reply);
		
	}
	
    
	
	
	

}
