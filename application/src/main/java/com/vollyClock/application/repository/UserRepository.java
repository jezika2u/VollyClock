package com.vollyClock.application.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.vollyClock.application.model.Users;



public interface UserRepository extends JpaRepository<Users, Long> {

	Users findByEmail(String email);
	
	
	@Query("FROM Users WHERE email=?1 ")
	Optional<Users> findEmail(String email);
	
	
	@Query("FROM Users WHERE lname=?1 ")
	List<Users> findByLastName(String lname);
	
	@Query("FROM Users WHERE lname=?1 OR fname=?1")
	List<Users> findByName(String name);

}
