package org.renu;


import javax.validation.Valid;

import org.renu.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
	@GetMapping("/")
	public ModelAndView home() {
		ModelAndView modelAndView = new ModelAndView("userFormView");
		User user = new User();
		modelAndView.addObject("user", user);
		return modelAndView;
	}

	@PostMapping("/displayUserInfo")
	public ModelAndView displayUserInfo(@Valid @ModelAttribute("user") User user, BindingResult result) {
		ModelAndView modelAndView = new ModelAndView("displayUserInfo");
		modelAndView.addObject("user", user);
		if (result.hasErrors()) {
			ModelAndView repopulatingModelAndView = new ModelAndView("userFormView");
			repopulatingModelAndView.addObject("user", user);
			System.out.println("Has errors");
			return repopulatingModelAndView;
		
		} else {
			System.out.println("All good!");
			return modelAndView;
		}

	}

}
