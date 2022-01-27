package com.common.security;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/secu")
public class SecurityController {

	@RequestMapping(value="/login")
	public String loginPage() throws Exception {
		
		return "/secu/loginPage";
	}
	
	
}
