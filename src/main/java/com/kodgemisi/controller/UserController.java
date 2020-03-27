package com.kodgemisi.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.kodgemisi.service.UserService;
import com.kodgemisi.model.User;

@Controller
public class UserController {

	@Autowired
	UserService userService;

	@RequestMapping(value = "admin/applyList", method = RequestMethod.GET)
	public ModelAndView listApply() {
		ModelAndView model = new ModelAndView("apply_list");
		List<User> applyListAdmin = userService.getAllUsers();
		model.addObject("applyListAdmin", applyListAdmin);
		return model;
	}
	@RequestMapping(value = "form/{id}", method = RequestMethod.GET)
	public ModelAndView detailJob(@PathVariable long id) {
		ModelAndView model = new ModelAndView();
		User user = userService.getUserById(id);
		model.addObject("detailApply", user);
		model.setViewName("apply_detail");
		return model;
	}

	@RequestMapping(value = "form/newApply", method = RequestMethod.GET)
	public ModelAndView addJob() {
		ModelAndView model = new ModelAndView();
		User user = new User();
		model.addObject("applyForm", user);
		model.setViewName("form");
		return model;
	}

	@RequestMapping(value = "form/saveApply", method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("applyForm") User user) {
		userService.saveOrUpdate(user);
		return new ModelAndView("redirect:/"); // redirect after new save the apply
	}


}
