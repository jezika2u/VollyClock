package com.vollyClock.application;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.vollyClock.application.model.Users;
import com.vollyClock.application.repository.UserRepository;
import com.vollyClock.dto.RegistrationDto;


@Component
public class DataValidator implements Validator {

	@Autowired
	public UserRepository userRepository;

	String emailRegex = "^[\\w-_\\.+]*[\\w-_\\.]\\@([\\w]+\\.)+[\\w]+[\\w]$";

	String phoneRegex ="\\d{10}|(?:\\d{3}-){2}\\d{4}|\\(\\d{3}\\)\\d{3}-?\\d{4}";

	public boolean supports(Class<?> clazz) {
	return Users.class.equals(clazz);
	}

	public void validate(Object o, Errors errors) {
	RegistrationDto user = (RegistrationDto) o;

	ValidationUtils.rejectIfEmptyOrWhitespace(errors, "lname", "not-empty");
	ValidationUtils.rejectIfEmptyOrWhitespace(errors, "fname", "not-empty");
	ValidationUtils.rejectIfEmptyOrWhitespace(errors, "street", "not-empty");
	ValidationUtils.rejectIfEmptyOrWhitespace(errors, "city", "not-empty");

	ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "not-empty");
	if (userRepository.findByEmail(user.getEmail()) !=null) {
	    errors.rejectValue("email", "size.user.unique");
	    }

	        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "not-empty");
	        if (user.getPassword().length() <=0  ||  user.getPassword().length() < 4) {
	    errors.rejectValue("password", "size.user.password");
	    }
	        
	        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "pass2", "not-empty");
	        if (!user.getPass2().equals(user.getPassword())) {
	    errors.rejectValue("pass2", "match.user.pass2");
	    }
	        
	        if (!user.getEmail().matches(emailRegex)) {
	        errors.rejectValue("email", "size.user.email");
	    }
	        
	        if (!user.getPhone().matches(phoneRegex)) {
	        errors.rejectValue("phone", "size.user.phone");
	    }

	}

	public void validateUpdate(Object o, Errors errors) {
	Users user = (Users) o;

	ValidationUtils.rejectIfEmptyOrWhitespace(errors, "lname", "not-empty");
	ValidationUtils.rejectIfEmptyOrWhitespace(errors, "fname", "not-empty");

	        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "not-empty");
	        if (user.getPassword().length() <=0  ||  user.getPassword().length() < 4) {
	    errors.rejectValue("password", "size.user.password");
	    }
	        
	        if (!user.getPhone().matches(phoneRegex)) {
	        errors.rejectValue("phone", "size.user.phone");
	    }

	}
	
}
