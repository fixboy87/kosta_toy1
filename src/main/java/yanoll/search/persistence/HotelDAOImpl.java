package yanoll.search.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import yanoll.search.domain.HotelVO;

@Repository
public class HotelDAOImpl implements HotelDAO {

	@Inject
	private SqlSession session;
	
	private String namespace = "yanoll.mapper.HotelList";
	
	@Override
	public List<HotelVO> hotelList() throws Exception {
		
		return session.selectList(namespace + ".hotelList");
	}

}
