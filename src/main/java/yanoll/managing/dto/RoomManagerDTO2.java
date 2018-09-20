package yanoll.managing.dto;

import org.springframework.web.multipart.MultipartFile;

public class RoomManagerDTO2 {
	
	private int room_num;
	private int h_no;
	private String pic_room_url;
	private String room_type;
	private int room_price;
	private int room_cnt;
	
	
	public RoomManagerDTO2() {
	
	}

	
	public RoomManagerDTO2(int h_no, String pic_room_url, String room_type, int room_price, int room_cnt) {
		super();
		this.h_no = h_no;
		this.pic_room_url = pic_room_url;
		this.room_type = room_type;
		this.room_price = room_price;
		this.room_cnt = room_cnt;
	}






	public RoomManagerDTO2(int room_num, int h_no, String pic_room_url, String room_type, int room_price,
			int room_cnt) {
		super();
		this.room_num = room_num;
		this.h_no = h_no;
		this.pic_room_url = pic_room_url;
		this.room_type = room_type;
		this.room_price = room_price;
		this.room_cnt = room_cnt;
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


	public String getPic_room_url() {
		return pic_room_url;
	}


	public void setPic_room_url(String pic_room_url) {
		this.pic_room_url = pic_room_url;
	}


	public String getRoom_type() {
		return room_type;
	}


	public void setRoom_type(String room_type) {
		this.room_type = room_type;
	}


	public int getRoom_price() {
		return room_price;
	}


	public void setRoom_price(int room_price) {
		this.room_price = room_price;
	}


	public int getRoom_cnt() {
		return room_cnt;
	}


	public void setRoom_cnt(int room_cnt) {
		this.room_cnt = room_cnt;
	}


	@Override
	public String toString() {
		return "RoomManagerDTO2 [room_num=" + room_num + ", h_no=" + h_no + ", pic_room_url=" + pic_room_url
				+ ", room_type=" + room_type + ", room_price=" + room_price + ", room_cnt=" + room_cnt + "]";
	}


	
	
}
