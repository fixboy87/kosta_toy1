package yanoll.user.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import yanoll.user.domain.Users;

@Repository
public class UserDAOImpl implements UserDAO {
	
	@Inject
	private SqlSession sqlSession;
	
	private String namespace = "yanoll.mapper.userMapper";
	
	@Override
	public List<Users> selectList() throws Exception {
		return sqlSession.selectList(namespace+".selectList");
	}

	@Override
	public void update(Users user) throws Exception {
		sqlSession.update(namespace+".update", user);
	}

	@Override
	public void delete(int userno) throws Exception {
		sqlSession.delete(namespace+".delete", userno);
	}

	@Override
	public Users selectOne(int userno) throws Exception {
		return sqlSession.selectOne(namespace+".selectOne", userno);
	}
}
