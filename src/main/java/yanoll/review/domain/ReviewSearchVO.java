package yanoll.review.domain;

import yanoll.search.domain.HotelaVO;

public class ReviewSearchVO {
	private boolean search;

	
	public ReviewSearchVO() {
	
	}
	public ReviewSearchVO(boolean search) {
		super();
		this.search = search;
	}

	public boolean isSearch() {
		return search;
	}

	public void setSearch(boolean search) {
		this.search = search;
	}
	@Override
	public String toString() {
		return "ReviewSearchVO [search=" + search + "]";
	}
	
	
	
}
