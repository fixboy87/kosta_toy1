package yanoll.managing.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import yanoll.managing.dto.GetCalendarDTO;

@Repository
public class ManagingDAOImpl implements ManagingDAO {

	@Inject
	private SqlSession sqlSession;
	
	private String namespace = "yanoll.mapper.managingMapper";
	
	@Override
	public int getTotalRooms(String hotelName) {
		return sqlSession.selectOne(namespace+".get_total_rooms", hotelName);
	}

	
	@Override
	public List<Integer> getMonthlyBooking(GetCalendarDTO dto) throws Exception {
		
		return sqlSession.selectOne(namespace+".get_monthly_booked", dto);
	}




}