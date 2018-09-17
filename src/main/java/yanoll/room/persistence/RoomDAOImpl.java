package yanoll.room.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import yanoll.room.domain.RoomVO;
import yanoll.room.domain.SlideVO;

@Repository
public class RoomDAOImpl implements RoomDAO {

	@Inject
	private SqlSession session;
	
	private String namesapce = "yanoll.mapper.rooms";
	
	@Override
	public List<RoomVO> roomDetail(int h_no) throws Exception {
		System.out.println("roomDAO 체크");
		return session.selectList(namesapce + ".roomDetail",h_no);
	}

	@Override
	public List<SlideVO> slide(int h_no) throws Exception {
		
		return session.selectList(namesapce + ".slide",h_no);
	}


}
