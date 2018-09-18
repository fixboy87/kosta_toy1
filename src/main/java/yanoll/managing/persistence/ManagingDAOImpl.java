package yanoll.managing.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ManagingDAOImpl implements ManagingDAO {

	@Inject
	private SqlSession sqlSession;
	
	private String namespace = "yanoll.mapper.managingMapper";
	
	@Override
	public int getTotalRooms(String hotelName) {
		return sqlSession.selectOne(namespace+".get_total_rooms", hotelName);
	}
}
