package yanoll.search.persistence;

import java.util.List;

import org.springframework.stereotype.Repository;

import yanoll.search.domain.HotelaVO;



public interface HotelDAO {
	public List<HotelaVO> hotelList()	throws Exception;
	public List<HotelaVO> hotelListConditions(HotelaVO vo) throws Exception;
	public List<HotelaVO> infinityScroll(int h_no)throws Exception;
	public void dataInsert(HotelaVO vo) throws Exception;
}
