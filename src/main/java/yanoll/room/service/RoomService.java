package yanoll.room.service;

import java.util.List;

import yanoll.room.domain.RoomVO;
import yanoll.room.domain.SlideVO;

public interface RoomService {
	
	public List<RoomVO> roomDetail(int h_no)throws Exception;
	public List<SlideVO> slide(int h_no)throws Exception;

}
