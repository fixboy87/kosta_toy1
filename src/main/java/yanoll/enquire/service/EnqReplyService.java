package yanoll.enquire.service;

import java.util.List;

import yanoll.enquire.domain.Enquire_Reply;

public interface EnqReplyService {
	
	public void insert(Enquire_Reply reply)throws Exception;
	
	public List<Enquire_Reply>listReply(int e_seq)throws Exception;
	
	public void deleteReply(int r_seq)throws Exception;
	
	public void updateReply(Enquire_Reply reply)throws Exception;

}
