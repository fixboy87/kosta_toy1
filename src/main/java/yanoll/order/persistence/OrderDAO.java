package yanoll.order.persistence;

import java.util.List;

import yanoll.order.domain.OrderVO;

public interface OrderDAO {
	
	public List<OrderVO> orderCheck(OrderVO vo)throws Exception;
}
