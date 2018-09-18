package yanoll.managing.persistence;

public interface ManagingDAO{

	int getTotalRooms(String hotelName) throws Exception; //특정호텔의 방 갯수를 파악
	
	//특정호텔 에서의 방 갯수를 날짜별로 한달간 파악
}
