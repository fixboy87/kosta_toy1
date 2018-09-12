package yanoll.review.domain;

import yanoll.search.domain.HotelaVO;

public class ReviewSearchVO {
	private String	hotle_name;
	private String search;
	
	public ReviewSearchVO() {
	}
	public ReviewSearchVO(String hotle_name, String search) {
		super();
		this.hotle_name = hotle_name;
		this.search = search;
	}
	public String getHotle_name() {
		return hotle_name;
	}
	public void setHotle_name(String hotle_name) {
		this.hotle_name = hotle_name;
	}
	public String getSearch() {
		return search;
	}
	public void setSearch(String search) {
		this.search = search;
	}
	@Override
	public String toString() {
		return "ReviewSearchVO [hotle_name=" + hotle_name + ", search=" + search + "]";
	}

	
}
