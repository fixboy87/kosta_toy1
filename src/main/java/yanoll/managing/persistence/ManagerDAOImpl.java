package yanoll.managing.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import yanoll.managing.domain.Hotel_RoomVO;
import yanoll.managing.domain.TypeVO;
import yanoll.managing.dto.RoomManagerDTO2;

@Repository
public class ManagerDAOImpl implements ManagerDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace ="yanoll.mapper.ManagerMapper";
	
	@Override
	public List<Hotel_RoomVO> roomList(Integer h_no) throws Exception{
		return session.selectList(namespace+".roomList", h_no);
	}

	@Override
	public List<TypeVO> room_price(Integer h_no, String room_type) throws Exception {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("h_no", h_no);
		paramMap.put("room_type", room_type);
		return session.selectList(namespace+".room_price", paramMap);
	}

	@Override
	public int room_cnt(Integer h_no, String room_type) throws Exception {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("h_no", h_no);
		paramMap.put("room_type", room_type);
		return session.selectOne(namespace+".room_cnt", paramMap);
	}

	@Override
	public void insert(Hotel_RoomVO vo) throws Exception {
		session.insert(namespace+".insert", vo);
	}

	@Override
	public int type_cnt(Integer h_no, String room_type) throws Exception {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("h_no", h_no);
		paramMap.put("room_type", room_type);
		return session.selectOne(namespace+".type_cnt", paramMap);
	}

	@Override
	public String hotleNameSearch(Integer h_no) throws Exception {
		return session.selectOne(namespace+".hotleNameSearch", h_no);
	}

	@Override
	public void insertType(TypeVO vo) throws Exception {
		session.insert(namespace+".insertType", vo);
	}

	@Override
	public int getRoom_num(Integer h_no, String room_type) throws Exception {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("h_no", h_no);
		paramMap.put("room_type", room_type);
		return session.selectOne(namespace+".getRoom_num", paramMap);
	}

	@Override
	public Hotel_RoomVO roomOne(Integer h_no, String room_type) throws Exception {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("h_no", h_no);
		paramMap.put("room_type", room_type);
		return session.selectOne(namespace+".roomOne", paramMap);
	}

	@Override
	public void roomUpdate(RoomManagerDTO2 dto) throws Exception {
		System.out.println("dto비포");
		System.out.println(dto.toString());
		session.update(namespace+".roomUpdate", dto);
		System.out.println("dto애프터");
	}

	@Override
	public void priceUpdate(RoomManagerDTO2 dto) throws Exception {
		session.update(namespace+".priceUpdate", dto);
	}

	@Override
	public void typeDelete(RoomManagerDTO2 dto) throws Exception {
		session.delete(namespace+".typeDelete", dto);
	}

}
