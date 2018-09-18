package yanoll.enquire.domain;

import java.util.Date;

public class Enquire_Board {
	
	private int e_seq;
	private String e_title;
	private String e_contents;
	private String id;
	private Date e_date;
	private int userNo;
	private String h_name;
	
	public Enquire_Board() {
	
	}

	public Enquire_Board(int e_seq, String e_title, String e_contents, String id, Date e_date, int userNo,
			String h_name) {
		super();
		this.e_seq = e_seq;
		this.e_title = e_title;
		this.e_contents = e_contents;
		this.id = id;
		this.e_date = e_date;
		this.userNo = userNo;
		this.h_name = h_name;
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

	public int getuserNo() {
		return userNo;
	}

	public void setuserNo(int userNo) {
		this.userNo = userNo;
	}

	public String geth_name() {
		return h_name;
	}

	public void seth_name(String h_name) {
		this.h_name = h_name;
	}

	@Override
	public String toString() {
		return "Enquire_Board [e_seq=" + e_seq + ", e_title=" + e_title + ", e_contents=" + e_contents + ", id="
				+ id + ", e_date=" + e_date + ", userNo=" + userNo + ", h_name=" + h_name + "]";
	}
	
	
    
	
	/*create table enquire_board(
			e_seq number PRIMARY KEY,
			e_title varchar2(150),
			e_contents varchar2(1500),
			e_date date,
			id varchar2(50),
			h_name  varchar2(150),
			userNo number
			);
			
			create sequence enquire_board_e_seq start with 1;
			*/
	
	

}
