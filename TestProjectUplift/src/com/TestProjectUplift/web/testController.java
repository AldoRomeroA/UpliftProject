package com.TestProjectUplift.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@Controller
public class testController {

	@Autowired

	
	@RequestMapping(value = "/test", method=RequestMethod.GET)
	public ModelAndView test(
		HttpServletRequest request
	) {
		ModelAndView mav = new ModelAndView("testJSP");
		
		return mav;
	}
	
}
