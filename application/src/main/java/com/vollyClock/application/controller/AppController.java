package com.vollyClock.application.controller;

import java.sql.Timestamp;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.vollyClock.application.WebUtils;
import com.vollyClock.application.model.DateTimeEntity;
import com.vollyClock.application.model.Users;
import com.vollyClock.application.repository.TimeRepository;
import com.vollyClock.application.repository.UserRepository;
import com.vollyClock.dto.RegistrationDto;

@Controller

public class AppController {

	private UserRepository userRepository;
	@Autowired
	private TimeRepository timeRepository;

	@Autowired
	WebUtils webUtils;

	@Autowired
	public AppController(UserRepository userRepository) {
		super();
		this.userRepository = userRepository;
	}

//	@Autowired
//	public AppController(TimeRepository timeRepository) {
//		super();
//		this.timeRepository = timeRepository;
//	}

	@GetMapping({ "index", "/" })
	public String index(Model model) {
		model.addAttribute("msg", "Welcome!");
		model.addAttribute("success", "Time to Party!");
		model.addAttribute("users", userRepository.findAll());
		return "index";
	}

	@GetMapping("loginRegister")
	public String Register(Model model) {
		model.addAttribute("registrationDto", new RegistrationDto());
		model.addAttribute("action", "register");
		return "loginRegister";
	}

	@GetMapping("contact")
	public String contact() {

		return "contact";
	}

	@GetMapping("profile")
	public String profile() {

		return "profile";
	}
	
//	@GetMapping("admin")
//	public String dashboard() {
//
//		return "admin";
//	}
	
	@GetMapping("admin")
	public String users(Model model) {
	model.addAttribute("msg", "Users");
	model.addAttribute("admin", userRepository.findAll());
	return "admin";
	}
	

	@GetMapping("clock")
	public String clock(@SessionAttribute Users loggedInUser, Model model) {
		List<DateTimeEntity> userRecords = timeRepository.findAllByUserId(loggedInUser.getId());
		
		boolean isClockedIn = userRecords.stream()
			.filter(record -> record.getTimeIn() != null && record.getTimeOut() == null)
			.findFirst()
			.orElse(null) != null;
		
		model.addAttribute("loggedInUser", loggedInUser);
		model.addAttribute("isClockedIn", isClockedIn);
		
		return "clock";
	}

	@PostMapping("punch")
	public String punch(@SessionAttribute Users loggedInUser, Model model, @ModelAttribute DateTimeEntity punch,
			RedirectAttributes redirect, WebRequest request) {

		java.sql.Timestamp timePunch = new java.sql.Timestamp(System.currentTimeMillis());
		model.addAttribute("loggedInUser", loggedInUser);
		punch.setUserId(loggedInUser.getId());

		punch.setTimeIn(timePunch);
		timeRepository.save(punch);

		redirect.addFlashAttribute("loggedInUser", WebRequest.SCOPE_SESSION);
		redirect.addFlashAttribute("action", "punch");
		redirect.addFlashAttribute("msg", "You have been clocked IN");
		return "redirect:/clock";
	}
	
	@PostMapping("punchOut")
	public String punchOut(@SessionAttribute Users loggedInUser, Model model, 
			RedirectAttributes redirect, WebRequest request) {

		java.sql.Timestamp timePunchOut = new java.sql.Timestamp(System.currentTimeMillis());
		Optional<DateTimeEntity> punchedInUser = timeRepository.findAllByUserIdAndTimeOut(loggedInUser.getId(), null);
		if(punchedInUser.isPresent()) {
			punchedInUser.get().setTimeOut(timePunchOut);
			timeRepository.save(punchedInUser.get());
		}

		redirect.addFlashAttribute("loggedInUser", WebRequest.SCOPE_SESSION);
		redirect.addFlashAttribute("action", "punchOut");
		redirect.addFlashAttribute("msg", "You have been clocked Out");
		return "redirect:/clock";
	}

}
