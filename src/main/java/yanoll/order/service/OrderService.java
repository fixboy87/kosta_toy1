package yanoll.order.service;

import java.util.List;

import yanoll.order.domain.OrderVO;

public interface OrderService {
	public List<OrderVO> orderCheck(OrderVO vo)throws Exception;
}
