package yanoll.order.dto;

public class OrderDTO {
	private String room_type;
	private String pic_room_url;
	private String h_name;
	private int room_price;
	private String h_address;
	private String h_phonenum;
	
	public OrderDTO(){}
	
	
	
	@Override
	public String toString() {
		return "OrderDTO [room_type=" + room_type + ", pic_room_url=" + pic_room_url + ", h_name=" + h_name
				+ ", room_price=" + room_price + ", h_address=" + h_address + ", h_phonenum=" + h_phonenum + "]";
	}



	public String getRoom_type() {
		return room_type;
	}
	public void setRoom_type(String room_type) {
		this.room_type = room_type;
	}
	public String getPic_room_url() {
		return pic_room_url;
	}
	public void setPic_room_url(String pic_room_url) {
		this.pic_room_url = pic_room_url;
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
	public String getH_address() {
		return h_address;
	}
	public void setH_address(String h_address) {
		this.h_address = h_address;
	}
	public String getH_phonenum() {
		return h_phonenum;
	}
	public void setH_phonenum(String h_phonenum) {
		this.h_phonenum = h_phonenum;
	}
	
	

}
