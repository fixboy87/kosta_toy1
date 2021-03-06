package yanoll.enquire.persistence;

import java.util.List;

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

	@Override
	public List<Enquire_Reply> list(int e_seq) throws Exception {
		
		return session.selectList(namespace+".list", e_seq);
	}

	@Override
	public void delete(int r_seq) throws Exception {
		session.delete(namespace+".delete",r_seq);
		
	}

	@Override
	public void update(Enquire_Reply reply) throws Exception {
		session.update(namespace+".update", reply);
		
	}
	
    
	
	
	

}
