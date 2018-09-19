package yanoll.order.domain;

import java.util.Date;

public class OrderVO {
	
	private int order_num;//시퀀스
	private int h_no;//step
	private Date start_day;//session
	private Date end_day;//session
	private int order_price;//없으니깐 room_price * 날짜
	private String order_name;//session
	private int userNo;//DB에서 찾아옴
	private int number_of_stay_days;//session
	private int p_condition; //무조건 처음엔 0넣고
	private String order_date;//session
	private String pic_room_url;//step
	private String h_name;//step
	private String room_type;//step
	private String h_address;//step
	private String h_phonenum;//step
	private String id;//session
	private int room_price;//step
	private String user_phonenumber;//step
	
	public String getUser_phonenumber() {
		return user_phonenumber;
	}

	public void setUser_phonenumber(String user_phonenumber) {
		this.user_phonenumber = user_phonenumber;
	}

	public int getRoom_price() {
		return room_price;
	}

	public void setRoom_price(int room_price) {
		this.room_price = room_price;
	}

	public OrderVO() {
	}

	public int getOrder_num() {
		return order_num;
	}

	public void setOrder_num(int order_num) {
		this.order_num = order_num;
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

	public int getP_condition() {
		return p_condition;
	}

	public void setP_condition(int p_condition) {
		this.p_condition = p_condition;
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

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "OrderVO [order_num=" + order_num  + ", h_no=" + h_no + ", start_day="
				+ start_day + ", end_day=" + end_day + ", order_price=" + order_price + ", order_name=" + order_name
				+ ", userNo=" + userNo + ", number_of_stay_days=" + number_of_stay_days + ", p_condition=" + p_condition
				+ ", order_date=" + order_date + ", pic_room_url=" + pic_room_url + ", h_name=" + h_name
				+ ", room_type=" + room_type + ", h_address=" + h_address + ", h_phonenum=" + h_phonenum + ", id=" + id
				+ "]";
	}
	
	
	
	
	
	
}
