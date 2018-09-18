package yanoll.review.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import yanoll.enquire.domain.Criteria;
import yanoll.review.domain.Review_ReplyVO;

@Repository
public class Review_RepleyDAOImpl implements Review_ReplyDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace= "yanoll.mapper.Review_ReviewMapper";
	
	@Override
	public List<Review_ReplyVO> list(Integer r_no) throws Exception {
		return session.selectList(namespace+".list", r_no);
	} 

	@Override
	public void create(Review_ReplyVO vo) throws Exception {
		session.insert(namespace+".create", vo);
	}

	@Override
	public void update(Review_ReplyVO vo) throws Exception {
		session.update(namespace+".update", vo);
	}

	@Override
	public void delete(Integer r_r_no) throws Exception {
		session.delete(namespace+".delete", r_r_no);

	}

	@Override
	public List<Review_ReplyVO> listPage(Integer r_no, Criteria cri) throws Exception {
		
		Map<String, Object> paramMap = new HashMap<>();
		System.out.println("DAO==========================");
		System.out.println("cri.page:"+cri.getPage());
		System.out.println("cri.perPageNum:"+cri.getPerPageNum());
		
		paramMap.put("r_no", r_no);
		paramMap.put("cri", cri);
		
		return session.selectList(namespace+".listPage", paramMap);
	}

	@Override
	public int count(Integer r_no) throws Exception {
		return session.selectOne(namespace+".count", r_no);
	}

	@Override
	public int getR_no(Integer r_r_no) throws Exception {
		return session.selectOne(namespace+".getBno", r_r_no);
	}

	@Override
	public void deleteAll(Integer r_no) throws Exception {
		session.delete(namespace+".deleteAll", r_no);
	}

}
