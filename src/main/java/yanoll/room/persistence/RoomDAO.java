package yanoll.room.persistence;

import java.util.List;

import yanoll.room.domain.RoomVO;
import yanoll.room.domain.SlideVO;

public interface RoomDAO {

	public List<RoomVO> roomDetail(int h_no)throws Exception;
	public List<SlideVO> slide(int h_no) throws Exception;
}
