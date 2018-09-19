package yanoll.order.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import yanoll.order.domain.OrderVO;
import yanoll.order.persistence.OrderDAO;

@Service
public class OrderServiceImpl implements OrderService {

	@Inject
	private OrderDAO dao;
	
	@Override
	public List<OrderVO> orderCheck(OrderVO vo) throws Exception {
		
		return dao.orderCheck(vo);
	}

	@Override
	public void Orderdata(OrderVO vo) throws Exception {
		dao.Orderdata(vo);
		
	}

}
