package com.xworkz.ritiapp.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.xworkz.ritiapp.dto.RegistrationDTO;
import com.xworkz.ritiapp.service.RegistrationService;

@Controller
@RequestMapping("/")
public class RegistrationController {
	private static Logger logger;

	@Autowired
	private RegistrationService regService;
	@SuppressWarnings("static-access")
	public RegistrationController() {
		logger = logger.getLogger("RegistrationController");
		logger.info("Created " + this.getClass().getSimpleName());
	}

	@PostMapping("/register.app")
	public ModelAndView onRegister(RegistrationDTO dto) {
		logger.info("Invoked onRegister method in RegistrationController");
		ModelAndView modelAndView = new ModelAndView("register");
		try {
			String msg=this.regService.validateAndSave(dto);
			modelAndView.addObject("msg", "Registration done by " + dto.getFullName());
		} catch (Exception e) {
			logger.error("You have an exception!!",e);
			e.getMessage();
		}
		return modelAndView;
	}
}