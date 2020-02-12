package com.vollyClock.application.repository;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.vollyClock.application.model.DateTimeEntity;


public interface TimeRepository  extends JpaRepository<DateTimeEntity, Long> {

	
		
	Optional<DateTimeEntity> findAllByUserIdAndTimeOut(long userId, Timestamp timeOut);
	List<DateTimeEntity> findAllByUserId(long userId);
	

}
