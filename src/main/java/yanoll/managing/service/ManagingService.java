package yanoll.managing.service;

import java.util.List;

public interface ManagingService {

	public List<Integer> getMonthlyCalendar(String currentDay, String hotelName) throws Exception;
}
