package yanoll.enquire.persistence;

import java.util.List;

import yanoll.enquire.domain.Enquire_Board;
import yanoll.enquire.domain.SearchCriteria;

public interface EnquireDao {
	
	public void create(Enquire_Board board)throws Exception;
	
	public List<Enquire_Board> list(SearchCriteria cri)throws Exception;
	
	public int Count(SearchCriteria cri)throws Exception;
	
	public Enquire_Board read(int e_seq)throws Exception;
	
	public void delete(int e_seq)throws Exception;
	
	public void update(Enquire_Board board)throws Exception;
	
	public int userNo(String id)throws Exception;

}
