package com.kodgemisi.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kodgemisi.model.Job;
import com.kodgemisi.service.JobService;

@Controller
public class JobController {

	@Autowired
	JobService jobService;
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView listForUser() {
		ModelAndView model = new ModelAndView("job_list_for_user");
		List<Job> jobListUser = jobService.getAllJob();
		model.addObject("jobListUser", jobListUser);
		return model;
	}
	@RequestMapping(value = "detail/{id}", method = RequestMethod.GET)
	public ModelAndView detailJob(@PathVariable long id) {
		ModelAndView model = new ModelAndView();
		Job job = jobService.getJobById(id);
		model.addObject("detailJob", job);
		model.setViewName("job_detail");
		return model;
	}
	@RequestMapping(value = "admin/addList", method = RequestMethod.GET)
	public ModelAndView listForAdmin() {
		ModelAndView model = new ModelAndView("job_list");
		List<Job> jobListAdmin = jobService.getAllJob();
		model.addObject("jobListAdmin", jobListAdmin);
		return model;
	}

	@RequestMapping(value = "admin/addJob", method = RequestMethod.GET)
	public ModelAndView addJob() {
		ModelAndView model = new ModelAndView();
		Job job = new Job();
		model.addObject("jobForm", job);
		model.setViewName("job_form");
		return model;
	}

	@RequestMapping(value = "admin/updateJob/{id}", method = RequestMethod.GET)
	public ModelAndView editJob(@PathVariable long id) {
		ModelAndView model = new ModelAndView();
		Job job = jobService.getJobById(id);
		model.addObject("jobForm", job);
		model.setViewName("job_form");
		return model;
	}

	@RequestMapping(value = "admin/saveJob", method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("jobForm") Job job) {
		jobService.saveOrUpdate(job);
		return new ModelAndView("redirect:/admin/addList");//redirect after save the job
	}

	@RequestMapping(value = "admin/deleteJob/{id}", method = RequestMethod.GET)
	public ModelAndView delete(@PathVariable("id") long id) {
		jobService.deleteJob(id);
		return new ModelAndView("redirect:/admin/addList");// redirect after delete the job
	}

}
