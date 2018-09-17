package yanoll.room.domain;

public class SlideVO {
	
	private String slide_pic_url;
	private int h_no;
	
	public SlideVO(){}

	public String getSlide_pic_url() {
		return slide_pic_url;
	}

	public void setSlide_pic_url(String slide_pic_url) {
		this.slide_pic_url = slide_pic_url;
	}

	public int getH_no() {
		return h_no;
	}

	public void setH_no(int h_no) {
		this.h_no = h_no;
	}

	public SlideVO(String slide_pic_url, int h_no) {
		super();
		this.slide_pic_url = slide_pic_url;
		this.h_no = h_no;
	}

	@Override
	public String toString() {
		return "SlideVO [slide_pic_url=" + slide_pic_url + ", h_no=" + h_no + "]";
	}
	
	
	
}
