package yanoll.enquire.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	public List<Enquire_Board> list(String id,String h_name,SearchCriteria cri) throws Exception {
	    
		Map<String, Object> paramMap = new HashMap<>();
		
		paramMap.put("id", id);
		paramMap.put("h_name", h_name);
		paramMap.put("cri", cri);
		
		return session.selectList(namespace+".list", paramMap,
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
		
		session.update(namespace+".update", board);
		
		
	}

	@Override
	public int userNo(String id) throws Exception {
		
		return session.selectOne(namespace+".userNo", id);
		
	}
	
	
	
	
	
	
	

}
