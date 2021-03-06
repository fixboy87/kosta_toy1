package yanoll.managing.persistence;

import java.util.List;
import java.util.Map;


public interface ManagingDAO{

	public int getTotalRooms(String hotelName) throws Exception; //특정호텔의 방 갯수를 파악
	
	
	
	//특정호텔 에서의 방 갯수를 날짜별로 한달간 파악
	public List<Integer> getMonthlyBooking(Map<String, Object> map) throws Exception;
}
