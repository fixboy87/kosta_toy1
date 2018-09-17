package yanoll.review.dto;

import yanoll.search.domain.HotelaVO;

public class ReviewSearchDTO {
	private boolean photo;
	private String sortTerms ;

	
	public ReviewSearchDTO() {
	
	}


	public ReviewSearchDTO(boolean photo, String sortTerms) {
		super();
		this.photo = photo;
		this.sortTerms = sortTerms;
	}


	public boolean isPhoto() {
		return photo;
	}


	public void setPhoto(boolean photo) {
		this.photo = photo;
	}


	public String getSortTerms() {
		return sortTerms;
	}


	public void setSortTerms(String sortTerms) {
		this.sortTerms = sortTerms;
	}


	@Override
	public String toString() {
		return "ReviewSearchDTO [photo=" + photo + ", sortTerms=" + sortTerms + "]";
	}

	
	
	
	
}
