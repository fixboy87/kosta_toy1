package yanoll.managing.service;

import java.util.List;

import yanoll.managing.domain.Hotel_RoomVO;
import yanoll.managing.domain.TypeVO;

public interface ManagerService {
	
	public List<Hotel_RoomVO> roomList(Integer h_no) throws Exception;
	
	public List<TypeVO> room_price(Integer h_no, String room_type)throws Exception;
	
	public int room_cnt(Integer h_no, String room_type)throws Exception;
	
	public void insert(Hotel_RoomVO vo)throws Exception;
	
	public int type_cnt(Integer h_no, String room_type)throws Exception;
	
	public String hotleNameSearch(Integer h_no)throws Exception;

	public void insertType(TypeVO vo)throws Exception;
}
