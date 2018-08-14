package com.corey.springsecurity.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DemoController {
	
	@GetMapping("/")
	public String showHome() {
		
		return "home";
	}
	
	// Add request mapping for /leaders
	
	@GetMapping("/leaders")
	public String showLeaders() {
		
		return "leaders";
	}

}
