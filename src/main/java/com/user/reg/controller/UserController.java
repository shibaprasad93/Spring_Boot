package com.user.reg.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.user.reg.model.LoginModel;
import com.user.reg.model.RegistrationModel;
import com.user.reg.service.UserService;
@Controller
public class UserController {
	@Autowired
	private UserService userService;
	 @GetMapping("/home")
    public String home(Model model) {
		return "home";
		
	}
	@RequestMapping(value = "/registration",method = RequestMethod.GET)
	public String registration(Model model) {
		model.addAttribute("register",new RegistrationModel());

		return "registration";
	}

	@PostMapping("/doregistration")
	public String registration(@ModelAttribute("register") RegistrationModel userForm,Model model,RedirectAttributes attribute) {
		

		boolean isSaves=userService.save(userForm);
		//userForm=null;
		//model.addAttribute("register", userForm);
		if (isSaves) {
			
			
			attribute.addFlashAttribute("msg", "Registration scucessful");
		}
		else {
			attribute.addFlashAttribute("msg", "Registration failed");
		}

		return "redirect:/registration";
	}
	@GetMapping("/login")
    public String login(Model model) {
        model.addAttribute("login", new LoginModel());

        return "login";
	}
	
	@PostMapping("/dologin")
	public String doLogin(@ModelAttribute("login") LoginModel login,Model model,RedirectAttributes att) {
	String msg=	userService.findByUsername(login);
//	model.addAttribute("msg",msg);
	if (msg.equalsIgnoreCase("valid creadentials")) {
		return "welcome";
	}
	else {
		att.addFlashAttribute("msg",msg);
		return "redirect:/login";
	}
		
	}

}
