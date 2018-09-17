package yanoll.enquire.persistence;

import java.util.List;

import yanoll.enquire.domain.Enquire_Reply;

public interface EnqReplyDao {
	
	public void create(Enquire_Reply reply)throws Exception;
	
	public List<Enquire_Reply> list(int e_seq)throws Exception;
	
	public void delete(int r_seq)throws Exception;
	
	public void update(Enquire_Reply reply)throws Exception;
	
	

}
