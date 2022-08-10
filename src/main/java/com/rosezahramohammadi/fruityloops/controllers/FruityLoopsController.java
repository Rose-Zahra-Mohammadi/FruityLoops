package com.rosezahramohammadi.fruityloops.controllers;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rosezahramohammadi.fruityloops.models.FruityLoopsModel;

@Controller
public class FruityLoopsController {
	@RequestMapping("/")
	public String index(Model model) {
		ArrayList<FruityLoopsModel> fruits = new ArrayList<FruityLoopsModel>();
		fruits.add(new FruityLoopsModel("Kiwi", 1.5));
		fruits.add(new FruityLoopsModel("Mango", 2.0));
		fruits.add(new FruityLoopsModel("GojiBerries", 4.0));
		fruits.add(new FruityLoopsModel("Guava", .75));
		model.addAttribute("fruitsFromMyController", fruits);
		return "index.jsp";
	}
}
	