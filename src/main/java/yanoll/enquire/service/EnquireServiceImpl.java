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
		dao.create(board);

	}

	@Override
	public List<Enquire_Board> list(SearchCriteria cri) throws Exception {
		
		return dao.list(cri);
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
	
	
	
	

}
