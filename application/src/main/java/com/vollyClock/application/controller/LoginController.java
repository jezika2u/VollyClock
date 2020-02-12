package com.vollyClock.application.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import com.vollyClock.application.DataValidator;
import com.vollyClock.application.model.Address;
import com.vollyClock.application.model.Users;
import com.vollyClock.application.repository.AddressRepository;
import com.vollyClock.application.repository.UserRepository;
import com.vollyClock.application.service.UserService;
import com.vollyClock.dto.RegistrationDto;

@Controller
@SessionAttributes("loggedInUser")
public class LoginController {

	private UserRepository userRepository;
	private DataValidator dataValidator;
	private AddressRepository addressRepository;
	private UserService userService;

	@Autowired
	public LoginController(UserRepository userRepository, DataValidator dataValidator, AddressRepository addressRepository) {
		super();
		this.userRepository = userRepository;
		this.dataValidator = dataValidator;
		this.addressRepository = addressRepository;

	}



	@PostMapping("register")
	public String register(@ModelAttribute RegistrationDto registrationDto, 
			Model model, BindingResult result,
			RedirectAttributes redirect) {

		try {
			dataValidator.validate(registrationDto, result);
			if (result.hasErrors()) {
				model.addAttribute("error2", "Required* fields");
				model.addAttribute("hidden", "");
				model.addAttribute("action", "register");
				
				return "loginRegister";
			}

			
			Address address = new Address();
			address.setStreet(registrationDto.getStreet());
			address.setStreet2(registrationDto.getStreet2());
			address.setCity(registrationDto.getCity());
			address.setState(registrationDto.getState());
			address.setZipcode(registrationDto.getZipcode());

			Address savedAddress = addressRepository.save(address);

			Users user = new Users();
			user.setFname(registrationDto.getFname());
			user.setLname(registrationDto.getLname());
			user.setEmail(registrationDto.getEmail());
			user.setPhone(registrationDto.getPhone());
			user.setPassword(registrationDto.getPassword());
			user.setRole(registrationDto.getRole());
			
			user.setAddress(savedAddress);

			userRepository.save(user);
			model.addAttribute("loggedInUser", user);

			
			//redirect.addFlashAttribute("success", "User " + user.getFname() + " saved");
			

		} catch (Exception e) {
			// TODO Auto-generated catch block
			 e.printStackTrace();
		}
		
		return "redirect:/profile";
	}

	@GetMapping("login")
	public String login(Model model) {
		model.addAttribute("msg", "Login");
		

		return "loginRegister";
	}

	@PostMapping("login")
	public String signin(@RequestParam String email, @RequestParam String password, Model model, RedirectAttributes redirect ) {

		Users user = userRepository.findByEmail(email);
		if (user != null && password.contentEquals(user.getPassword())) {
			if(user.getRole().equals("Admin")) {
				model.addAttribute("msg", "Welcome, " + user.getFname());
				model.addAttribute("loggedInUser", user);
				return "redirect:/admin";
				
			
			} else
			{
				model.addAttribute("msg", "Welcome, " + user.getFname());
				model.addAttribute("loggedInUser", user);
				
			}
		}

		else {
			model.addAttribute("error", "Invalid Credentials");
			model.addAttribute("registrationDto", new RegistrationDto());
			
			return "loginRegister";
		}

		return "profile";
	}
	
	@GetMapping("logout")
	public String logout(Model model, WebRequest request, 
		SessionStatus status, RedirectAttributes redirect) {
		status.setComplete();
		request.removeAttribute("loggedInUser", WebRequest.SCOPE_SESSION);
		redirect.addFlashAttribute("msg", "You have been signed out");
		return "redirect:/index";
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	





@ModelAttribute("user")
Users user() {
return new Users();
}

@GetMapping("delete")
public String deleteuser(@RequestParam long id, RedirectAttributes redirect) {
	
	userRepository.deleteById(id);
	redirect.addFlashAttribute("success", "Delete Success");
	
	return "redirect:/index";
}






@PostMapping("search")
public String search(@RequestParam String name, Model model) {
	model.addAttribute("msg", userRepository.findByName(name).size()+ " Users Found");
	model.addAttribute("users", userRepository.findByName(name));

	
	return "admin";
}

@PostMapping("editrole")
public String giverole(RedirectAttributes model, @RequestParam long id, 
									@RequestParam String role) {
	Users user= userRepository.findById(id).get();
	if(user != null) {
		user.setRole(role);
		userRepository.save(user);
		model.addFlashAttribute("msg", user.getFname()+"Role assigned " +role);
	}
	return "redirect:/admin";
}

}

