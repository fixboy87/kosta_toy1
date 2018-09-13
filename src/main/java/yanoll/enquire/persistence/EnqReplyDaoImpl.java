package yanoll.enquire.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import yanoll.enquire.domain.Enquire_Reply;

@Repository
public class EnqReplyDaoImpl implements EnqReplyDao {
	
	@Inject
	private SqlSession session;
	
	private String namespace="yanoll.mapper.Enquire_ReplyMapper";

	@Override
	public void create(Enquire_Reply reply) throws Exception {
		session.insert(namespace+".create", reply);

	}

}
