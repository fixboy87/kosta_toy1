package yanoll.enquire.domain;

import java.util.Date;

public class Enquire_Board {
	
	private int e_seq;
	private String e_title;
	private String e_contents;
	private String id;
	private Date e_date;
	private int user_no;
	private String hotel_name;
	
	public Enquire_Board() {
	
	}

	public Enquire_Board(int e_seq, String e_title, String e_contents, String id, Date e_date, int user_no,
			String hotel_name) {
		super();
		this.e_seq = e_seq;
		this.e_title = e_title;
		this.e_contents = e_contents;
		this.id = id;
		this.e_date = e_date;
		this.user_no = user_no;
		this.hotel_name = hotel_name;
	}

	public int getE_seq() {
		return e_seq;
	}

	public void setE_seq(int e_seq) {
		this.e_seq = e_seq;
	}

	public String getE_title() {
		return e_title;
	}

	public void setE_title(String e_title) {
		this.e_title = e_title;
	}

	public String getE_contents() {
		return e_contents;
	}

	public void setE_contents(String e_contents) {
		this.e_contents = e_contents;
	}

	public String getid() {
		return id;
	}

	public void setid(String id) {
		this.id = id;
	}

	public Date getE_date() {
		return e_date;
	}

	public void setE_date(Date e_date) {
		this.e_date = e_date;
	}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public String getHotel_name() {
		return hotel_name;
	}

	public void setHotel_name(String hotel_name) {
		this.hotel_name = hotel_name;
	}

	@Override
	public String toString() {
		return "Enquire_Board [e_seq=" + e_seq + ", e_title=" + e_title + ", e_contents=" + e_contents + ", id="
				+ id + ", e_date=" + e_date + ", user_no=" + user_no + ", hotel_name=" + hotel_name + "]";
	}
	
	
    
	
	/*create table enquire_board(
			e_seq number PRIMARY KEY,
			e_title varchar2(150),
			e_contents varchar2(1500),
			e_date date,
			id varchar2(50),
			hotel_name  varchar2(150),
			user_no number
			);
			
			create sequence enquire_board_e_seq start with 1;
			*/
	
	

}
