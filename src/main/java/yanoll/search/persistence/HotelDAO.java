package yanoll.search.persistence;

import java.util.List;

import org.springframework.stereotype.Repository;

import yanoll.search.domain.HotelVO;


public interface HotelDAO {
	public List<HotelVO> hotelList()	throws Exception;
}
