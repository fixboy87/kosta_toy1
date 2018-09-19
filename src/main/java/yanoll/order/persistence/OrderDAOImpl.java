package yanoll.order.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import yanoll.order.domain.OrderVO;

@Repository
public class OrderDAOImpl implements OrderDAO {

	@Inject
	private SqlSession session;
	
	private String namespace = "yanoll.mapper.order";
	
	@Override
	public List<OrderVO> orderCheck(OrderVO vo) throws Exception {
		
		return session.selectList(namespace+ ".orderCheck",vo);
	}

	@Override
	public void Orderdata(OrderVO vo) throws Exception {
		
		session.insert(namespace + ".Orderdata",vo);
			
	}
	@Override
	   public int userNo(String id) throws Exception {
	      
	      return session.selectOne(namespace+".userNo", id);
	      
	  }

}
