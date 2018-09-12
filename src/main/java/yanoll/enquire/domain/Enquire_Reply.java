package yanoll.enquire.domain;

import java.util.Date;

public class Enquire_Reply {
	
	private int r_seq;
	private String r_contents;
	private String r_write;
	private Date r_date;
	private int h_no;
	private String hotel_name;
	private int e_seq;
	
	public Enquire_Reply() {
		
	}

	public Enquire_Reply(int r_seq, String r_contents, String r_write, Date r_date, int h_no, String hotel_name,
			int e_seq) {
		super();
		this.r_seq = r_seq;
		this.r_contents = r_contents;
		this.r_write = r_write;
		this.r_date = r_date;
		this.h_no = h_no;
		this.hotel_name = hotel_name;
		this.e_seq = e_seq;
	}

	public int getR_seq() {
		return r_seq;
	}

	public void setR_seq(int r_seq) {
		this.r_seq = r_seq;
	}

	public String getR_contents() {
		return r_contents;
	}

	public void setR_contents(String r_contents) {
		this.r_contents = r_contents;
	}

	public String getR_write() {
		return r_write;
	}

	public void setR_write(String r_write) {
		this.r_write = r_write;
	}

	public Date getR_date() {
		return r_date;
	}

	public void setR_date(Date r_date) {
		this.r_date = r_date;
	}

	public int getH_no() {
		return h_no;
	}

	public void setH_no(int h_no) {
		this.h_no = h_no;
	}

	public String getHotel_name() {
		return hotel_name;
	}

	public void setHotel_name(String hotel_name) {
		this.hotel_name = hotel_name;
	}

	public int getE_seq() {
		return e_seq;
	}

	public void setE_seq(int e_seq) {
		this.e_seq = e_seq;
	}

	@Override
	public String toString() {
		return "Enquire_Reply [r_seq=" + r_seq + ", r_contents=" + r_contents + ", r_write=" + r_write + ", r_date="
				+ r_date + ", h_no=" + h_no + ", hotel_name=" + hotel_name + ", e_seq=" + e_seq + "]";
	}
	
	
	
	

}
