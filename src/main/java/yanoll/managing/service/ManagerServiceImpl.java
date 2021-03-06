package yanoll.managing.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import yanoll.managing.domain.Hotel_RoomVO;
import yanoll.managing.domain.TypeVO;
import yanoll.managing.dto.RoomManagerDTO2;
import yanoll.managing.persistence.ManagerDAO;

@Service
public class ManagerServiceImpl implements ManagerService {
	
	@Inject
	private ManagerDAO dao;

	@Override
	public List<Hotel_RoomVO> roomList(Integer h_no) throws Exception {
		return dao.roomList(h_no);
	}

	@Override
	public List<TypeVO> room_price(Integer h_no, String room_type) throws Exception {
		return dao.room_price(h_no, room_type);
	}

	@Override
	public int room_cnt(Integer h_no, String room_type) throws Exception {
		return dao.room_cnt(h_no, room_type);
	}

	@Override
	public void insert(Hotel_RoomVO vo) throws Exception {
		dao.insert(vo);
	}

	@Override
	public int type_cnt(Integer h_no,String room_type) throws Exception {
		return dao.type_cnt(h_no, room_type);
	}

	@Override
	public String hotleNameSearch(Integer h_no) throws Exception {
		return dao.hotleNameSearch(h_no);
	}

	@Override
	public void insertType(TypeVO vo) throws Exception {
		dao.insertType(vo);
	}

	@Override
	public int getRoom_num(Integer h_no, String room_type) throws Exception {
		return dao.getRoom_num(h_no, room_type);
	}

	@Override
	public Hotel_RoomVO roomOne(Integer h_no, String room_type) throws Exception {
		return dao.roomOne(h_no, room_type);
	}

	@Override
	public void roomUpdate(RoomManagerDTO2 dto) throws Exception {
		System.out.println("비포");
		dao.roomUpdate(dto);
		System.out.println("에프터");
	}

	@Override
	public void priceUpdate(RoomManagerDTO2 dto) throws Exception {
		dao.priceUpdate(dto);
	}

	@Override
	public void typeDelete(RoomManagerDTO2 dto) throws Exception {
		dao.typeDelete(dto);
	}

	@Override
	public int getH_no(String h_id) throws Exception {
		return dao.getH_no(h_id);
	}

}
