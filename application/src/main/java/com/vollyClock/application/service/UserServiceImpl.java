package com.vollyClock.application.service;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vollyClock.application.model.Users;
import com.vollyClock.application.repository.UserRepository;

@Service
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	private UserRepository repository;
	
	@Override
	public Optional<Users> findByEmail(String email) {
		// TODO Auto-generated method stub
		return repository.findEmail(email);
	}

	@Override
	public List<Users> findByLastName(String lname) {
		// TODO Auto-generated method stub
		return repository.findByLastName(lname);
	}

	@Override
	public Optional<Users> findById(long id) {
		// TODO Auto-generated method stub
		return repository.findById(id);
	}

	@Override
	public void delete(long id) {
		repository.deleteById(id);
		
	}

	@Override
	public void save(Users users) {
		repository.save(users);
		
	}

	@Override
	public void update(Users users) {
		Users user=findById(users.getId()).get();
		if(user!=null) {
			user.setFname(users.getFname());
			user.setLname(users.getLname());
			user.setPhone(users.getPhone());
			
		}
		
	}

	@Override
	public List<Users> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

}
