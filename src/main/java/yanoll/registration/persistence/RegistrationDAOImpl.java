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
	public void insert_hotel(Hotel hotel) throws Exception {
		sqlSession.insert(namespace+".insert_hotel", hotel);
		
	}
	
	@Override
	public String idCheck(String id) throws Exception {
		String userid = sqlSession.selectOne(namespace+".idcheck", id);
		
		if(userid == null) {
			userid = "none";
		}
		return userid;
	}

	@Override
	public Users login(LoginDTO dto) throws Exception {
		
		return sqlSession.selectOne(namespace+".login", dto);
		
	}
	
	@Override
	public Hotel login_hotel(LoginHotelDTO dto) throws Exception {
		return sqlSession.selectOne(namespace+".login_hotel", dto);
	}

	@Override
	public Users getUserDetail(String id) throws Exception {
		return sqlSession.selectOne(namespace+".user_detail", id);
	}

	@Override
	public Hotel getHotelDetail(String id) throws Exception {
		return sqlSession.selectOne(namespace+".hotel_detail", id);
	}

	@Override
	public void updateUser(Users user) throws Exception {
		sqlSession.update(namespace+".update_user", user);
	}

	@Override
	public void updateHotel(Hotel hotel) throws Exception {
		sqlSession.update(namespace+".update_hotel", hotel);
	}


}
