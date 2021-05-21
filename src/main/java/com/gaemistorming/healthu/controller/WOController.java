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

	// choice 운동 mapping
	@RequestMapping("/backwardLunge")
	public String showBackwardLunge(Model model) {
		return "choice/backwardLunge";
	}

	@RequestMapping("/bentKneePushCrunch")
	public String showbBentKneePushCrunch(Model model) {
		return "choice/bentKneePushCrunch";
	}

	@RequestMapping("/chairLunge")
	public String showChairLunge(Model model) {
		return "choice/chairLunge";
	}

	@RequestMapping("/chairSquat")
	public String showChairSquat(Model model) {
		return "choice/chairSquat";
	}

	@RequestMapping("/dumbbellDeadlift")
	public String showDumbbellDeadlift(Model model) {
		return "choice/dumbbellDeadlift";
	}

	@RequestMapping("/dumbbellThruster")
	public String showDumbbellThruster(Model model) {
		return "choice/dumbbellThruster";
	}

	@RequestMapping("/frontRaise")
	public String showFrontRaise(Model model) {
		return "choice/frontRaise";
	}

	@RequestMapping("/goodMorning")
	public String showGoodMorning(Model model) {
		return "choice/goodMorning";
	}

	@RequestMapping("/hipBridge")
	public String showHipBridge(Model model) {
		return "choice/hipBridge";
	}

	@RequestMapping("/kickAlternateToeTouch")
	public String showKickAlternateToeTouch(Model model) {
		return "choice/kickAlternateToeTouch";
	}

	@RequestMapping("/kneePushUp")
	public String showKneePushUp(Model model) {
		return "choice/kneePushUp";
	}

	@RequestMapping("/lunge")
	public String showLunge(Model model) {
		return "choice/lunge";
	}

	@RequestMapping("/lyingHipExtension")
	public String showLyingHipExtension(Model model) {
		return "choice/lyingHipExtension";
	}

	@RequestMapping("/quarterSquat")
	public String showQuarterSquat(Model model) {
		return "choice/querterSquat";
	}

	@RequestMapping("/sideKick")
	public String showSideKick(Model model) {
		return "choice/sideKick";
	}

	@RequestMapping("/sideKneeUp")
	public String showSideKneeUp(Model model) {
		return "choice/sideKneeUp";
	}

	@RequestMapping("/sideLateralRaise")
	public String showSideLateralRaise(Model model) {
		return "choice/sideLateralRaise";
	}

	@RequestMapping("/sideLunge")
	public String showSideLunge(Model model) {
		return "choice/sideLunge";
	}

	@RequestMapping("/squat")
	public String showSquat(Model model) {
		return "choice/squat";
	}

	@RequestMapping("/standingPulldown")
	public String showStandingPulldown(Model model) {
		return "choice/standingPulldown";
	}

	@RequestMapping("/standingShoulderPress")
	public String showStandingShoulderPress(Model model) {
		return "choice/standingShoulderPress";
	}

	@RequestMapping("/standingSideLegRaises")
	public String showStandingSideLegRaises(Model model) {
		return "choice/standingSideLegRaises";
	}

	@RequestMapping("/stepUp")
	public String showStepUp(Model model) {
		return "choice/stepUp";
	}

	@RequestMapping("/wideSquat")
	public String showStandingWideSquat(Model model) {
		return "choice/wideSquat";
	}

	@RequestMapping("/choice2")
	public String showChoice2(Model model) {
		return "choice2";
	}
	
}
