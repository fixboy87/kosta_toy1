package yanoll.search.service;

import java.text.SimpleDateFormat;
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

	@Override
	public List<HotelaVO> hotelListBasic() throws Exception {
	
		return dao.hotelList();
	}

	@Override
	public List<HotelaVO> hotelListConditions(HotelaVO vo) throws Exception {
		
		//날짜 비교 
//		String start = vo.getStart_day();
//		String end = vo.getEnd_day();
//		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
//		
//		start = dateFormat.format(new Date(start));
//		end = dateFormat.format(new Date(end));
//		
//		String day = vo.getStart_day();
		
		return dao.hotelListConditions(vo);
	}

	@Override
	public List<HotelaVO> infinityScroll(int h_no) throws Exception {
		
		return dao.infinityScroll(h_no);
	}

	@Override
	public void dataInsert(HotelaVO vo) throws Exception {
		dao.dataInsert(vo);
		
	}

	

}
