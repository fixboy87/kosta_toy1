package yanoll.review.domain;

import java.io.Serializable;

public class Review_Board implements Serializable {
	private int r_no;
	private String r_title;
	private int r_grade;
	private String r_content;
	private String r_redate;
	private int r_hitcount;
	private String r_fname ;
	private int booking_num;
	private String hotle_name;
	private int stay_day;
	private int userNo;
	private String id;
	
	
	public Review_Board() {
		super();
	}


	public Review_Board(int r_no, String r_title, int r_grade, String r_content, String r_redate, int r_hitcount,
			String r_fname, int booking_num, String hotle_name, int stay_day, int userNo, String id) {
		super();
		this.r_no = r_no;
		this.r_title = r_title;
		this.r_grade = r_grade;
		this.r_content = r_content;
		this.r_redate = r_redate;
		this.r_hitcount = r_hitcount;
		this.r_fname = r_fname;
		this.booking_num = booking_num;
		this.hotle_name = hotle_name;
		this.stay_day = stay_day;
		this.userNo = userNo;
		this.id = id;
	}


	public int getR_no() {
		return r_no;
	}


	public void setR_no(int r_no) {
		this.r_no = r_no;
	}


	public String getR_title() {
		return r_title;
	}


	public void setR_title(String r_title) {
		this.r_title = r_title;
	}


	public int getR_grade() {
		return r_grade;
	}


	public void setR_grade(int r_grade) {
		this.r_grade = r_grade;
	}


	public String getR_content() {
		return r_content;
	}


	public void setR_content(String r_content) {
		this.r_content = r_content;
	}


	public String getR_redate() {
		return r_redate;
	}


	public void setR_redate(String r_redate) {
		this.r_redate = r_redate;
	}


	public int getR_hitcount() {
		return r_hitcount;
	}


	public void setR_hitcount(int r_hitcount) {
		this.r_hitcount = r_hitcount;
	}


	public String getR_fname() {
		return r_fname;
	}


	public void setR_fname(String r_fname) {
		this.r_fname = r_fname;
	}


	public int getBooking_num() {
		return booking_num;
	}


	public void setBooking_num(int booking_num) {
		this.booking_num = booking_num;
	}


	public String getHotle_name() {
		return hotle_name;
	}


	public void setHotle_name(String hotle_name) {
		this.hotle_name = hotle_name;
	}


	public int getStay_day() {
		return stay_day;
	}


	public void setStay_day(int stay_day) {
		this.stay_day = stay_day;
	}


	public int getUserNo() {
		return userNo;
	}


	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	@Override
	public String toString() {
		return "Review_Board [r_no=" + r_no + ", r_title=" + r_title + ", r_grade=" + r_grade + ", r_content="
				+ r_content + ", r_redate=" + r_redate + ", r_hitcount=" + r_hitcount + ", r_fname=" + r_fname
				+ ", booking_num=" + booking_num + ", hotle_name=" + hotle_name + ", stay_day=" + stay_day + ", userNo="
				+ userNo + ", id=" + id + "]";
	}

	
}
