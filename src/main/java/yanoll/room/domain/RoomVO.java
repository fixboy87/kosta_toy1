package yanoll.room.domain;

public class RoomVO {

	private int room_num;
	private int h_no;
	private String pic_room_url;
	private String room_type;
	private String h_name;
	private int room_price;
	
	public RoomVO(){
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

	public String getH_name() {
		return h_name;
	}

	public void setH_name(String h_name) {
		this.h_name = h_name;
	}

	public int getRoom_price() {
		return room_price;
	}

	public void setRoom_price(int room_price) {
		this.room_price = room_price;
	}

	public RoomVO(int room_num, int h_no, String pic_room_url, String room_type, String h_name, int room_price) {
		super();
		this.room_num = room_num;
		this.h_no = h_no;
		this.pic_room_url = pic_room_url;
		this.room_type = room_type;
		this.h_name = h_name;
		this.room_price = room_price;
	}

	@Override
	public String toString() {
		return "RoomVO [room_num=" + room_num + ", h_no=" + h_no + ", pic_room_url=" + pic_room_url + ", room_type="
				+ room_type + ", h_name=" + h_name + ", room_price=" + room_price + "]";
	}
	
	
}
