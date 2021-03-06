package yanoll.enquire.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import yanoll.enquire.domain.Enquire_Board;
import yanoll.enquire.domain.SearchCriteria;
import yanoll.enquire.persistence.EnquireDao;

@Service
public class EnquireServiceImpl implements EnquireService {
	
	@Inject
	private EnquireDao dao;

	@Override
	public void regist(Enquire_Board board) throws Exception {
	  
	    board.setuserNo(dao.userNo(board.getid()));
	  	
		dao.create(board);

	}

	@Override
	public List<Enquire_Board> list(String id,String hotel_name,SearchCriteria cri) throws Exception {
		
		return dao.list(id, hotel_name, cri);
	}

	@Override
	public int count(SearchCriteria cri) throws Exception {
		
		return dao.Count(cri);
	}

	@Override
	public Enquire_Board read(int e_seq) throws Exception {
		
		return dao.read(e_seq);
	}

	@Override
	public void delete(int e_seq) throws Exception {
		dao.delete(e_seq);
		
	}

	@Override
	public void modify(Enquire_Board board) throws Exception {
		
		dao.update(board);
		
	}
	
    	
	
	
	
	

}
