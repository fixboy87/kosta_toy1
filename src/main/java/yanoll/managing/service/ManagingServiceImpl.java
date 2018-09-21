package yanoll.managing.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import yanoll.managing.dto.GetCalendarDTO;
import yanoll.managing.persistence.ManagingDAO;

@Service
public class ManagingServiceImpl implements ManagingService {
	
	@Inject
	private ManagingDAO dao;
	
	@Override
	public List<Integer> getMonthlyCalendar(String currentDay, String hotelId) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("h_id", hotelId);
		map.put("h_day", currentDay);
		
		return dao.getMonthlyBooking(map);
	}
}
