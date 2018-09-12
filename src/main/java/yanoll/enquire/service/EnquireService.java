package yanoll.enquire.service;

import java.util.List;

import yanoll.enquire.domain.Enquire_Board;
import yanoll.enquire.domain.SearchCriteria;

public interface EnquireService {
	
	public void regist(Enquire_Board board)throws Exception;
	
	public List<Enquire_Board> list(SearchCriteria cri)throws Exception;
	
	public int count(SearchCriteria cri)throws Exception;
	
	public Enquire_Board read(int e_seq)throws Exception;
	
	public void delete(int e_seq)throws Exception;

}
