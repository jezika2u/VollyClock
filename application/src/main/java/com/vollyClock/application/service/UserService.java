package com.vollyClock.application.service;

import java.util.List;
import java.util.Optional;

import com.vollyClock.application.model.Users;



public interface UserService {
	
	Optional<Users> findById(long id);
	void delete(long id);
	void save(Users users);
	void update(Users users);
	List<Users> findAll();
	Optional<Users> findByEmail(String email);
	List<Users> findByLastName(String lname);

}

