package yanoll.managing.service;

import java.util.List;

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
		GetCalendarDTO dto = new GetCalendarDTO();
		dto.setCurrentDate(currentDay);
		dto.setH_id(hotelId);
		
		return dao.getMonthlyBooking(dto);
	}
}
