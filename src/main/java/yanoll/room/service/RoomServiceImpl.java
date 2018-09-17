package yanoll.room.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import yanoll.room.domain.RoomVO;
import yanoll.room.domain.SlideVO;
import yanoll.room.persistence.RoomDAO;

@Service
public class RoomServiceImpl implements RoomService {

	@Inject
	private RoomDAO dao;
	
	@Override
	public List<RoomVO> roomDetail(int h_no) throws Exception {
		
		System.out.println("roomService 체크 : h_no : "+ h_no);
		
		return dao.roomDetail(h_no);
		
	}

	@Override
	public List<SlideVO> slide(int h_no) throws Exception {
		
		return dao.slide(h_no);
	}



}
