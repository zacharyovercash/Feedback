package com.hcl.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hcl.dao.FeedbackRepo;
import com.hcl.model.Feedback;

@Controller
public class FeedbackController {

	@Autowired
	private FeedbackRepo repo;
	
	@PostMapping("/newFeedback")
	public String addFeedback(Feedback f) {
		repo.save(f);
		return "redirect:/list";
	}
	
	@GetMapping("/newFeedback")
	public ModelAndView newFeedback() {
		Feedback f = new Feedback();
		return new ModelAndView("add","form",f);
	}
	
	@GetMapping("/list")
	public ModelAndView allFeedback() {
		List<Feedback> lst = (List<Feedback>) repo.findAll();
		return new ModelAndView("list","feedback",lst);
	}
}
