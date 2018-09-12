package yanoll.enquire.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import yanoll.enquire.domain.Enquire_Board;
import yanoll.enquire.domain.SearchCriteria;

@Repository
public class EnquireDaoImpl implements EnquireDao {
	
	@Inject
	private SqlSession session;
	
	private String namespace = "yanoll.mapper.Enquire_BoardMapper";

	@Override
	public void create(Enquire_Board board) throws Exception {
		session.insert(namespace+".create",board);
	}

	@Override
	public List<Enquire_Board> list(SearchCriteria cri) throws Exception {
	
		return session.selectList(namespace+".list", cri,
				new RowBounds(cri.getPageStart(),cri.getPerPageNum()));
	}

	@Override
	public int Count(SearchCriteria cri) throws Exception {
		
		return session.selectOne(namespace+".count", cri);
	}

	@Override
	public Enquire_Board read(int e_seq) throws Exception {
	
		return session.selectOne(namespace+".read", e_seq);
	}

	@Override
	public void delete(int e_seq) throws Exception {
		
		session.delete(namespace+".delete", e_seq);
		
	}

	@Override
	public void update(Enquire_Board board) throws Exception {
		session.update(namespace+".update");
		
	}
	
	
	
	
	
	

}
