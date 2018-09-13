package yanoll.search.service;

import java.util.List;

import yanoll.search.domain.HotelaVO;
//import yanoll.search.dto.HotelDTO;

public interface HotelService {
	
	public List<HotelaVO> hotelListBasic()throws Exception;
//	public List<HotelaVO> hotelListConditions(HotelDTO dto)throws Exception;
	
}
