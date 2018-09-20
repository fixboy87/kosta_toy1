package yanoll.managing.domain;

public class TypeVO {
	
	private String room_type;
	private int room_num;
	private int h_no;
	private int room_price;
	
	public TypeVO() {

	}
	public TypeVO(String room_type, int room_num, int h_no, int room_price) {
		super();
		this.room_type = room_type;
		this.room_num = room_num;
		this.h_no = h_no;
		this.room_price = room_price;
	}
	public String getRoom_type() {
		return room_type;
	}
	public void setRoom_type(String room_type) {
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
	public int getRoom_price() {
		return room_price;
	}
	public void setRoom_price(int room_price) {
		this.room_price = room_price;
	}
	@Override
	public String toString() {
		return "TypeVO [room_type=" + room_type + ", room_num=" + room_num + ", h_no=" + h_no + ", room_price="
				+ room_price + ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}
	
	
	
}
