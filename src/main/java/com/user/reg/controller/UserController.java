package com.user.reg.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.user.reg.entity.model.User;
import com.user.reg.service.UserService;
@Controller
public class UserController {
	@Autowired
	private UserService userService;

	@RequestMapping(value = "/login",method = RequestMethod.GET)
	public String registration(Model model) {
		System.out.println("Inside Login method");
		model.addAttribute("userForm", new User());

		return "registration";
	}

	@PostMapping("/doregistration")
	public String registration(@ModelAttribute("userForm") User userForm) {

		userService.save(userForm);

		return "welcome";
	}

}
