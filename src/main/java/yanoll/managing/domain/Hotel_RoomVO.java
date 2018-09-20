package yanoll.managing.domain;

public class Hotel_RoomVO {
	
	private int room_num;
	private int h_no;
	private String pic_room_url;
	private String room_type;
	
	public Hotel_RoomVO() {

	}
	
	
	
	public Hotel_RoomVO(int room_num, int h_no, String pic_room_url, String room_type) {
		super();
		this.room_num = room_num;
		this.h_no = h_no;
		this.pic_room_url = pic_room_url;
		this.room_type = room_type;
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
	@Override
	public String toString() {
		return "Hotel_RoomVO [room_num=" + room_num + ", h_no=" + h_no + ", pic_room_url=" + pic_room_url
				+ ", room_type=" + room_type + "]";
	}
	
	
}
