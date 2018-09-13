package yanoll.search.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import yanoll.search.domain.HotelaVO;
//import yanoll.search.dto.HotelDTO;

@Repository
public class HotelDAOImpl implements HotelDAO {

	@Inject
	private SqlSession session;
	
	private String namespace = "yanoll.mapper.HotelList";
	
	@Override
	public List<HotelaVO> hotelList() throws Exception {
		
		return session.selectList(namespace + ".hotelList");
	}

//	@Override
//	public List<HotelaVO> hotelListConditions(HotelDTO dto) throws Exception {
//		return session.selectList(namespace+".hotelListConditions",dto);
//	}

}
