package yanoll.search.service;

import java.util.List;

import yanoll.search.domain.HotelaVO;


public interface HotelService {
	
	public List<HotelaVO> hotelListBasic()throws Exception;
	public List<HotelaVO> hotelListConditions(HotelaVO vo)throws Exception;
	public List<HotelaVO> infinityScroll(int h_no)throws Exception;
	
}
