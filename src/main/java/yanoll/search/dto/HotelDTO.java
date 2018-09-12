package yanoll.search.dto;

public class HotelDTO {
	private int low_price;
	private int max_price;
	private String Destination;
	
	public HotelDTO(){}

	public HotelDTO(int low_price, int max_price, String destination) {
		super();
		this.low_price = low_price;
		this.max_price = max_price;
		Destination = destination;
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

	public String getDestination() {
		return Destination;
	}

	public void setDestination(String destination) {
		Destination = destination;
	}
}
