package yanoll.search.service;

import java.util.Date;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import yanoll.search.domain.HotelaVO;
//import yanoll.search.dto.HotelDTO;
import yanoll.search.persistence.HotelDAO;

@Service
public class HotelServiceImpl implements HotelService {

	@Inject 
	private HotelDAO dao;
//	@Inject
//	private HotelDTO dto;
//	
	@Override
	public List<HotelaVO> hotelListBasic() throws Exception {
	
		return dao.hotelList();
	}

//	@Override
//	public List<HotelaVO> hotelListConditions(HotelDTO dto) throws Exception {
//		
//		//dao.hotelListConditions(dto);
//		//날짜 비교 
//		HotelaVO vo = new HotelaVO();
//		
//		Date start = vo.getStart_day();
//		Date end = vo.getEnd_day();
//		
//		
//		
//		return dao.hotelListConditions(dto);
//	}

}
