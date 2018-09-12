package yanoll.registration.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import yanoll.registration.persistence.RegistrationDAO;
import yanoll.user.domain.Users;

@Service
public class RegistrationServiceImpl implements RegistrationService {

	@Inject
	private RegistrationDAO dao;
	
	@Override
	public void register(Users user) throws Exception {
		dao.insert(user);
	}

	
}
