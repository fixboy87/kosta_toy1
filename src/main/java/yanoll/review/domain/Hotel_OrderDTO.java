package yanoll.review.domain;

import yanoll.order.domain.Hotel_Order;

public class Hotel_OrderDTO extends Hotel_Order {
	private String h_name;
	
	

	public Hotel_OrderDTO() {
		
	}
	public Hotel_OrderDTO(String h_name) {
		super();
		this.h_name = h_name;
	}

	public String getH_name() {
		return h_name;
	}

	public void setH_name(String h_name) {
		this.h_name = h_name;
	}
	@Override
	public String toString() {
		return "Hotel_OrderDTO [h_name=" + h_name + ", getOrder_num()=" + getOrder_num() + ", getRoom_num()="
				+ getRoom_num() + ", getH_no()=" + getH_no() + ", getStart_day()=" + getStart_day() + ", getEnd_day()="
				+ getEnd_day() + ", getOrder_price()=" + getOrder_price() + ", getOrder_name()=" + getOrder_name()
				+ ", getUser_no()=" + getUser_no() + ", getNumber_of_stay_days()=" + getNumber_of_stay_days()
				+ ", getP_conition()=" + getP_conition() + ", getOrder_date()=" + getOrder_date() + ", getClass()="
				+ getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}

	
	
	
}
