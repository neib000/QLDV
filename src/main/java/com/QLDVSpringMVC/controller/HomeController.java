package com.QLDVSpringMVC.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.QLDVSpringMVC.model.Taikhoan;
import com.QLDVSpringMVC.service.HoatdongService;
import com.QLDVSpringMVC.service.TaikhoanService;

@Controller
public class HomeController {

	@Autowired
	TaikhoanService tkSer;
	@Autowired
	HoatdongService hdSer;

	@RequestMapping(value = "/Preloading", method = RequestMethod.GET)
	public ModelAndView preloading() {
		ModelAndView mav = new ModelAndView("Preloading");
		return mav;
	}

	@RequestMapping(value = "/Login", method = RequestMethod.GET)
	public ModelAndView homePage() {
		ModelAndView mav = new ModelAndView("Login");
		return mav;
	}
	
	@RequestMapping(value = "/accessDenied", method = RequestMethod.GET)
	public ModelAndView accessDenied() {
		ModelAndView mav = new ModelAndView("redirect:/Login?accessDenied");
		return mav;
	}
	
	@RequestMapping(value = "/Logout", method = RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		return new ModelAndView("redirect:/Login");
	}
}
