package com.jonathandimawea.dojosandninjas.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.jonathandimawea.dojosandninjas.models.Dojo;
import com.jonathandimawea.dojosandninjas.models.Ninja;
import com.jonathandimawea.dojosandninjas.services.MainService;

@Controller
public class HomeController {

	@Autowired
	private MainService mainService;
	
	// Create a dojo (1. render the form, 2. process the form)
	@GetMapping("/dojos/new") // this renders the form
	public String createDojoForm(@ModelAttribute("dojo")Dojo dojo) {
		return "createDojo.jsp";
	}
	
	@PostMapping("/dojos/new")
	public String createDojoProcess(
			@Valid
			@ModelAttribute("dojo")Dojo dojo,
			BindingResult result
			) {
		if(result.hasErrors()) {
			return "createDojo.jsp";
		}else {
			mainService.saveDojo(dojo);
			return "redirect:/dojos/new";
		}
	}
	
	// create a ninja (render the form, process the form)
	@GetMapping("/ninjas/new")
	public String createNinjaForm(@ModelAttribute("ninja")Ninja ninja, Model model) {
		List<Dojo> dojos = mainService.allDojos();
		model.addAttribute("dojos", dojos);
		return "createNinja.jsp";
	}
	
	@PostMapping("/ninjas/new")
	public String createNinjaProcess(
			@Valid
			@ModelAttribute("ninja")Ninja ninja,
			BindingResult result,
			Model model
			) {
		if(result.hasErrors()) {
			List<Dojo> dojos = mainService.allDojos();
			model.addAttribute("dojos", dojos);
			return "createNinja.jsp";
		}else {
			mainService.saveNinja(ninja);
			return "redirect:/ninjas/new";
		}
	}
	
	@GetMapping("/dojos/{dojoId}")
	public String showOneDojo(@PathVariable("dojoId")Long dojoId, Model model) {
		Dojo dojo = mainService.oneDojo(dojoId);
		model.addAttribute("dojo", dojo);
		return "oneDojo.jsp";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
