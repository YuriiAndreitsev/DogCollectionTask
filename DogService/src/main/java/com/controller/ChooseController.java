package com.controller;

import java.util.List;
import org.springframework.lang.NonNull;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.dataSource.GeniusDataSourceDataBase;
import com.model.Dog;
import com.service.DogCollectionManager;

@Controller
public class ChooseController {

	@RequestMapping(value = "/show", method = RequestMethod.GET)
	public String showChoosePage() {

		return "choosingPrioritiesView";
	}

	@RequestMapping(value = "/result", method = RequestMethod.POST)
	public String result(ModelMap model, @RequestParam(value = "priority", required = true) @NonNull String priority,
			@RequestParam(name = "uniqueness", required = false) String[] uniqueness,
			@RequestParam(name = "breedToUniquelize", required = false) String[] breedToUniquelize) {
		GeniusDataSourceDataBase s = new GeniusDataSourceDataBase();
		List<Dog> dogCollection = s.getDogCollection();

		DogCollectionManager manager = new DogCollectionManager();
		if (uniqueness != null && breedToUniquelize == null || breedToUniquelize != null && uniqueness == null) {
			model.addAttribute("unselectedParameters", "Both Breed to Uniquelize and Breed must be selected!");
			model.addAttribute("redColor", "#FF0000");
			return "choosingPrioritiesView";
		} else {
			manager.getExtractedDogCollection(dogCollection, breedToUniquelize, uniqueness, priority);
		}
		model.addAttribute("dogCollection", dogCollection);
		return "resultView";

	}
}
