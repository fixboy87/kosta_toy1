package yanoll.registration.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import yanoll.user.domain.Users;

@Repository
public class RegistrationDAOImpl implements RegistrationDAO {

	@Inject
	private SqlSession sqlSession;
	
	private String namespace = "yanoll.mapper.registrationMapper";
	
	@Override
	public void insert(Users user) throws Exception {
		sqlSession.insert(namespace+".insert", user);
	}


}
