package com.user.reg.exception;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;


@Controller
@ControllerAdvice
public class BookAppException {
	@ExceptionHandler(value = { BookWebAppException.class })
	public String error(Model model) {
		model.addAttribute("errMsg", " The Side is Under Maintainace");
		return "error";
	}

}
