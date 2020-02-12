package com.vollyClock.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.vollyClock.application.model.Address;
import com.vollyClock.application.model.Users;

public interface AddressRepository extends JpaRepository<Address, Long> {

}
