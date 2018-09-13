package yanoll.enquire.service;

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

}
