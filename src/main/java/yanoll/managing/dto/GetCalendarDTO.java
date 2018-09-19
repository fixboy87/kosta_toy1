package yanoll.managing.dto;

import java.io.Serializable;

public class GetCalendarDTO implements Serializable{

	private static final long serialVersionUID = -1295018391263829561L;
	
	private String h_id;
	
	private String currentDate;

	public String getH_id() {
		return h_id;
	}

	public void setH_id(String h_id) {
		this.h_id = h_id;
	}

	public String getCurrentDate() {
		return currentDate;
	}

	public void setCurrentDate(String currentDate) {
		this.currentDate = currentDate;
	}
	
	public GetCalendarDTO() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "GetCalendarDTO [h_id=" + h_id + ", currentDate=" + currentDate + "]";
	}
	
}
