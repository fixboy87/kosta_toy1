package yanoll.registration.dto;

public class LoginHotelDTO {
	
	private String h_id;
	private String h_password;
	
	
	public LoginHotelDTO() {
		// TODO Auto-generated constructor stub
	}


	public String getH_id() {
		return h_id;
	}


	public void setH_id(String h_id) {
		this.h_id = h_id;
	}


	public String getH_password() {
		return h_password;
	}


	public void setH_password(String h_password) {
		this.h_password = h_password;
	}


	@Override
	public String toString() {
		return "LoginHotelDTO [h_id=" + h_id + ", h_password=" + h_password + "]";
	}
	
	
}
