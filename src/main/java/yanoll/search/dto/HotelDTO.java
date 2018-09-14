package yanoll.search.dto;


public class HotelDTO {
	private String h_location;
	private String start_day;
	private String end_day;
	private int low_price;
	private int max_price;
	
	public HotelDTO(){}

	public String getH_location() {
		return h_location;
	}

	public void setH_location(String h_location) {
		this.h_location = h_location;
	}

	public String getStart_day() {
		return start_day;
	}

	public void setStart_day(String start_day) {
		this.start_day = start_day;
	}

	public String getEnd_day() {
		return end_day;
	}

	public void setEnd_day(String end_day) {
		this.end_day = end_day;
	}

	public int getLow_price() {
		return low_price;
	}

	public void setLow_price(int low_price) {
		this.low_price = low_price;
	}

	public int getMax_price() {
		return max_price;
	}

	public void setMax_price(int max_price) {
		this.max_price = max_price;
	}

	public HotelDTO(String h_location, String start_day, String end_day, int low_price, int max_price) {
		super();
		this.h_location = h_location;
		this.start_day = start_day;
		this.end_day = end_day;
		this.low_price = low_price;
		this.max_price = max_price;
	}

	
	
}