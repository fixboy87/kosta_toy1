package yanoll.order.domain;

import java.util.Date;

public class Hotel_Order {
	
	private int order_num;
	private int room_num;
	private int h_no;
	private Date start_day;
	private Date end_day;
	private int order_price;
	private String order_name;
	private int userNo;
	private int number_of_stay_days;
	private int p_conition;
	private String order_date;
	//zzzz
	public Hotel_Order(){}

	public int getOrder_num() {
		return order_num;
	}

	public void setOrder_num(int order_num) {
		this.order_num = order_num;
	}

	public int getRoom_num() {
		return room_num;
	}

	public void setRoom_num(int room_num) {
		this.room_num = room_num;
	}

	public int getH_no() {
		return h_no;
	}

	public void setH_no(int h_no) {
		this.h_no = h_no;
	}

	public Date getStart_day() {
		return start_day;
	}

	public void setStart_day(Date start_day) {
		this.start_day = start_day;
	}

	public Date getEnd_day() {
		return end_day;
	}

	public void setEnd_day(Date end_day) {
		this.end_day = end_day;
	}

	public int getOrder_price() {
		return order_price;
	}

	public void setOrder_price(int order_price) {
		this.order_price = order_price;
	}

	public String getOrder_name() {
		return order_name;
	}

	public void setOrder_name(String order_name) {
		this.order_name = order_name;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getNumber_of_stay_days() {
		return number_of_stay_days;
	}

	public void setNumber_of_stay_days(int number_of_stay_days) {
		this.number_of_stay_days = number_of_stay_days;
	}

	public int getP_conition() {
		return p_conition;
	}

	public void setP_conition(int p_conition) {
		this.p_conition = p_conition;
	}

	public String getOrder_date() {
		return order_date;
	}

	public void setOrder_date(String order_date) {
		this.order_date = order_date;
	}

	@Override
	public String toString() {
		return "Hotel_Order [order_num=" + order_num + ", room_num=" + room_num + ", h_no=" + h_no + ", start_day="
				+ start_day + ", end_day=" + end_day + ", order_price=" + order_price + ", order_name=" + order_name
				+ ", userNo=" + userNo + ", number_of_stay_days=" + number_of_stay_days + ", p_conition=" + p_conition
				+ ", order_date=" + order_date + "]";
	}
	
	
	
}
