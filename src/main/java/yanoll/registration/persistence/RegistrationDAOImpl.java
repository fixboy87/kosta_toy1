package yanoll.registration.persistence;


import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import yanoll.registration.dto.LoginDTO;
import yanoll.registration.dto.LoginHotelDTO;
import yanoll.user.domain.Hotel;
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

	@Override
	public void insert_hotel(Hotel hotel) {
		sqlSession.insert(namespace+".insert_hotel", hotel);
		
	}
	
	@Override
	public String idCheck(String id) {
		String userid = sqlSession.selectOne(namespace+".idcheck", id);
		
		if(userid == null) {
			userid = "none";
		}
		return userid;
	}

	@Override
	public Users login(LoginDTO dto) {
		
		return sqlSession.selectOne(namespace+".login", dto);
		
	}
	
	@Override
	public Hotel login_hotel(LoginHotelDTO dto) {
		return sqlSession.selectOne(namespace+".login_hotel", dto);
	}


}
