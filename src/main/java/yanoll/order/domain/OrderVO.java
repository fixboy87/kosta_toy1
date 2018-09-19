package yanoll.order.domain;

import java.util.Date;

public class OrderVO {
	
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
	private String pic_room_url;
	private String h_name;
	private String room_type;
	private String h_address;
	private String h_phonenum;
	
	public String getUser_phonenumber() {
		return user_phonenumber;
	}

	public void setUser_phonenumber(String user_phonenumber) {
		this.user_phonenumber = user_phonenumber;
	}

	private int room_price;
	private String user_phonenumber;
	
	public int getRoom_price() {
		return room_price;
	}

	public void setRoom_price(int room_price) {
		this.room_price = room_price;
	}

	public OrderVO(){}

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

	public String getPic_room_url() {
		return pic_room_url;
	}

	public void setPic_room_url(String pic_room_url) {
		this.pic_room_url = pic_room_url;
	}

	public String getH_name() {
		return h_name;
	}

	public void setH_name(String h_name) {
		this.h_name = h_name;
	}

	public String getRoom_type() {
		return room_type;
	}

	public void setRoom_type(String room_type) {
		this.room_type = room_type;
	}

	public String getH_address() {
		return h_address;
	}

	public void setH_address(String h_address) {
		this.h_address = h_address;
	}

	public String getH_phonenum() {
		return h_phonenum;
	}

	public void setH_phonenum(String h_phonenum) {
		this.h_phonenum = h_phonenum;
	}

	public OrderVO(int order_num, int room_num, int h_no, Date start_day, Date end_day, int order_price,
			String order_name, int userNo, int number_of_stay_days, int p_conition, String order_date,
			String pic_room_url, String h_name, String room_type, String h_address, String h_phonenum) {
		super();
		this.order_num = order_num;
		this.room_num = room_num;
		this.h_no = h_no;
		this.start_day = start_day;
		this.end_day = end_day;
		this.order_price = order_price;
		this.order_name = order_name;
		this.userNo = userNo;
		this.number_of_stay_days = number_of_stay_days;
		this.p_conition = p_conition;
		this.order_date = order_date;
		this.pic_room_url = pic_room_url;
		this.h_name = h_name;
		this.room_type = room_type;
		this.h_address = h_address;
		this.h_phonenum = h_phonenum;
	}

	@Override
	public String toString() {
		return "Hotel_Order [order_num=" + order_num + ", room_num=" + room_num + ", h_no=" + h_no + ", start_day="
				+ start_day + ", end_day=" + end_day + ", order_price=" + order_price + ", order_name=" + order_name
				+ ", userNo=" + userNo + ", number_of_stay_days=" + number_of_stay_days + ", p_conition=" + p_conition
				+ ", order_date=" + order_date + ", pic_room_url=" + pic_room_url + ", h_name=" + h_name
				+ ", room_type=" + room_type + ", h_address=" + h_address + ", h_phonenum=" + h_phonenum + "]";
	}
	
	
	
	
	
}
