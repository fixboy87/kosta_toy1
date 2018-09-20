package yanoll.managing.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import yanoll.plsql.mappers.PlsqlMapper;


@Repository
public class ManagingDAOImpl implements ManagingDAO {

	@Inject
	private SqlSession sqlSession;
	
	private String namespace = "yanoll.mapper.managingMapper";
	private String plsql = "yanoll.mapper.plsqlMapper";
	
	@Override
	public int getTotalRooms(String hotelName) {
		return sqlSession.selectOne(namespace+".get_total_rooms", hotelName);
	}

	
	@Override
	public List<Integer> getMonthlyBooking(Map<String, Object> paramMap) throws Exception {
		PlsqlMapper mapper = sqlSession.getMapper(PlsqlMapper.class);
		
		mapper.get_monthly_booked(paramMap);
		System.out.println(paramMap.get("result"));
		
		return null;
	}




}