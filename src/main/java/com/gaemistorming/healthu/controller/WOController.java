package com.gaemistorming.healthu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gaemistorming.healthu.model.Workout;
import com.gaemistorming.healthu.service.WOService;

@Controller
public class WOController {
	
	@Autowired
	private WOService woService;
	
//	@RequestMapping("/offers")
//	public String showOffers(Model model) {
//			List<Offer> offers = offerService.getCurrent();
//			model.addAttribute("offers",offers);
//			
//			return "offers";
//	}
	
	@RequestMapping("/home")
	public String showHome(Model model) {
//			List<Offer> offers = offerService.getCurrent();
//			model.addAttribute("offers",offers);
			
			return "home";
	}
	
	@RequestMapping("/about")
	public String showAbout(Model model) {
//			List<Offer> offers = offerService.getCurrent();
//			model.addAttribute("offers",offers);
			
			return "about";
	}
	
	@RequestMapping("/workout")
	public String showWorkout(Model model) {
//			List<Offer> offers = offerService.getCurrent();
//			model.addAttribute("offers",offers);
			
			return "workout";
	}
	
	
	@RequestMapping("/choice")
	public String showChoice(Model model) {
//			List<Offer> offers = offerService.getCurrent();
//			model.addAttribute("offers",offers);
			
			return "choice";
	}
	
	@RequestMapping("/pt")
			public String showPersonal(Model model) {
//					List<Offer> offers = offerService.getCurrent();
//					model.addAttribute("offers",offers);
					
					return "pt";
			}
	
	@RequestMapping("/mypage")
	public String showMypage(Model model) {
//			List<Offer> offers = offerService.getCurrent();
//			model.addAttribute("offers",offers);
			
			return "mypage";
	}
	
	@RequestMapping("/shop")
	public String showShop(Model model) {
//			List<Offer> offers = offerService.getCurrent();
//			model.addAttribute("offers",offers);
			
			return "shop";
	}
	
	@RequestMapping("/settings")
	public String showSettings(Model model) {
//			List<Offer> offers = offerService.getCurrent();
//			model.addAttribute("offers",offers);
			
			return "settings";
	}
	
	@RequestMapping("/signin")
	public String showSignin(Model model) {
//			List<Offer> offers = offerService.getCurrent();
//			model.addAttribute("offers",offers);
			
			return "signin";
	}
	
	@RequestMapping("/signup")
	public String showSignup(Model model) {
//			List<Offer> offers = offerService.getCurrent();
//			model.addAttribute("offers",offers);
			
			return "signup";
	}

	
	
}
