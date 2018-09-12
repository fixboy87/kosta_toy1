package yanoll.search.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import yanoll.search.domain.HotelaVO;
import yanoll.search.persistence.HotelDAO;

@Service
public class HotelServiceImpl implements HotelService {

	@Inject 
	private HotelDAO dao;
	
	@Override
	public List<HotelaVO> hotelListBasic() throws Exception {
	
		return dao.hotelList();
	}

}
