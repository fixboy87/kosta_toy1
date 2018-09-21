package yanoll.review.domain;

import java.text.SimpleDateFormat;
import java.util.Date;

import yanoll.order.domain.OrderVO;

public class Hotel_OrderDTO extends OrderVO {

	private String h_name;

	private String s_day;

	private String e_day;

	public Hotel_OrderDTO() {

	}

	public Hotel_OrderDTO(String h_name, String s_day, String e_day) {
		super();
		this.h_name = h_name;
		this.s_day = s_day;
		this.e_day = e_day;
	}

	public String getH_name() {
		return h_name;
	}

	public void setH_name(String h_name) {
		this.h_name = h_name;
	}

	public String getS_day() {
		Date start_date = super.getStart_day();
		SimpleDateFormat format = new SimpleDateFormat("yy-MM-dd");
		s_day = format.format(start_date);
		return s_day;
	}

	public void setS_day(String s_day) {
		this.s_day = s_day;
	}

	public String getE_day() {
		Date end_date = super.getEnd_day();
		SimpleDateFormat format = new SimpleDateFormat("yy-MM-dd");
		e_day = format.format(end_date);

		return e_day;
	}

	public void setE_day(String e_day) {
		this.e_day = e_day;
	}

	@Override
	public String toString() {
		return "Hotel_OrderDTO [h_name=" + h_name + ", s_day=" + s_day + ", e_day=" + e_day + ", getUser_phonenumber()="
				+ getUser_phonenumber() + ", getRoom_price()=" + getRoom_price() + ", getOrder_num()=" + getOrder_num()
				+ ", getH_no()=" + getH_no() + ", getStart_day()=" + getStart_day() + ", getEnd_day()=" + getEnd_day()
				+ ", getOrder_price()=" + getOrder_price() + ", getOrder_name()=" + getOrder_name() + ", getUserNo()="
				+ getUserNo() + ", getNumber_of_stay_days()=" + getNumber_of_stay_days() + ", getP_condition()="
				+ getP_condition() + ", getOrder_date()=" + getOrder_date() + ", getPic_room_url()=" + getPic_room_url()
				+ ", getRoom_type()=" + getRoom_type() + ", getH_address()=" + getH_address() + ", getH_phonenum()="
				+ getH_phonenum() + ", getId()=" + getId() + ", toString()=" + super.toString() + ", getClass()="
				+ getClass() + ", hashCode()=" + hashCode() + "]";
	}

}
