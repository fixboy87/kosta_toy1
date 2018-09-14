package yanoll.review.dto;

import java.io.Serializable;

import org.springframework.web.multipart.MultipartFile;

public class Review_boardDTO implements Serializable{
	private int r_no;
	private String r_title;
	private int r_grade;
	private String r_content;
	private String r_redate;
	private int r_hitcount;
	private MultipartFile r_fname ;
	private int order_num;
	private String h_name;
	private int number_of_stay_days;
	private int userNo;
	private String id;
	
	public Review_boardDTO() {
	}

	
	
	public Review_boardDTO(int r_no, String r_title, int r_grade, String r_content, String r_redate, int r_hitcount,
			MultipartFile r_fname, int order_num, String h_name, int number_of_stay_days, int userNo, String id) {
		super();
		this.r_no = r_no;
		this.r_title = r_title;
		this.r_grade = r_grade;
		this.r_content = r_content;
		this.r_redate = r_redate;
		this.r_hitcount = r_hitcount;
		this.r_fname = r_fname;
		this.order_num = order_num;
		this.h_name = h_name;
		this.number_of_stay_days = number_of_stay_days;
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

	public MultipartFile getR_fname() {
		return r_fname;
	}

	public void setR_fname(MultipartFile r_fname) {
		this.r_fname = r_fname;
	}

	public int getOrder_num() {
		return order_num;
	}

	public void setOrder_num(int order_num) {
		this.order_num = order_num;
	}

	public String getH_name() {
		return h_name;
	}

	public void setH_name(String h_name) {
		this.h_name = h_name;
	}

	public int getNumber_of_stay_days() {
		return number_of_stay_days;
	}

	public void setNumber_of_stay_days(int number_of_stay_days) {
		this.number_of_stay_days = number_of_stay_days;
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
		return "Review_boardDTO [r_no=" + r_no + ", r_title=" + r_title + ", r_grade=" + r_grade + ", r_content="
				+ r_content + ", r_redate=" + r_redate + ", r_hitcount=" + r_hitcount + ", r_fname=" + r_fname
				+ ", order_num=" + order_num + ", h_name=" + h_name + ", number_of_stay_days=" + number_of_stay_days
				+ ", userNo=" + userNo + ", id=" + id + "]";
	}
	
	
	
}
