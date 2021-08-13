package com.Santana.dodosandninjas.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.Santana.dodosandninjas.models.Dojo;
import com.Santana.dodosandninjas.models.Ninja;
import com.Santana.dodosandninjas.services.DojoService;
import com.Santana.dodosandninjas.services.NinjaService;

@Controller
public class DojoNinjaController {
	
	private final DojoService dojoService;
	private final NinjaService ninjaService;
	
	public DojoNinjaController(DojoService dojoService, NinjaService ninjaService) {
		this.dojoService = dojoService;
		this.ninjaService = ninjaService;
	}
	
	@GetMapping("/")
	public String dashboard() {
		return "index.jsp";
	}
	
	@GetMapping("/dojo")
	public String dojo(@ModelAttribute ("dojo") Dojo dojo) {
		return "newDojo.jsp";
	}
	
	@PostMapping("/newDojo")
	public String newDojo(@Valid @ModelAttribute ("dojo") Dojo dojo, BindingResult result) {
		if(result.hasErrors()) {
			return "newDojo.jsp";
		}
		this.dojoService.createDojo(dojo);
		return"redirect:/dojos";
	}
	
	@GetMapping("/ninja")
	public String ninja(@ModelAttribute ("ninja") Ninja ninja, Model model) {
		List<Dojo> allDojos = this.dojoService.getAllDojos();
		model.addAttribute("allDojos", allDojos);
		return "ninja.jsp";
	}
	
	@PostMapping("/newNinja")
	public String newNinja(@Valid @ModelAttribute ("ninja") Ninja ninja, BindingResult result, Model model) {
		if(result.hasErrors()) {
			List<Dojo> allDojos = this.dojoService.getAllDojos();
			model.addAttribute("allDojos", allDojos);
			return "ninja.jsp";
		}
		Ninja newNinja = this.ninjaService.createNinja(ninja);
		return "redirect:/dojos/";
	}
	
	@GetMapping("/dojos")
	public String alldojos(Model model) {
		List<Dojo> allDojos = this.dojoService.getAllDojos();
		model.addAttribute("allDojos", allDojos);
		return "alldojos.jsp";
	}
	
	@GetMapping("/dojos/{id}")
	public String singleDojo(@PathVariable("id") Long id, Model model){
		Dojo singleDojo = this.dojoService.dojoById(id);
		model.addAttribute("singleDojo", singleDojo);
		return "viewDojo.jsp";
	}
	

	

}
