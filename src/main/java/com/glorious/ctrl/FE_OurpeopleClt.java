package com.glorious.ctrl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.glorious.service.PeopleInterface;


@Controller
public class FE_OurpeopleClt {

	
	@Autowired
	@Qualifier("PeopleImp")
	PeopleInterface PeopleImp;
	
	@RequestMapping(value="/ourpeople")
	public ModelAndView getContactus(){
		ModelAndView mav=new ModelAndView();
		mav.addObject("title_tag", "OurPeoples");
		mav.addObject("description_tag", "OurPeople List");
		mav.addObject("activeHeader", "ourpeople");
		mav.setViewName("cltourpeople");
		return mav;
	}
}
