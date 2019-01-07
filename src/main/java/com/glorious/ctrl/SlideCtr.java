package com.glorious.ctrl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.glorious.model.SlideModel;
import com.glorious.service.SlideInterface;

@Controller
public class SlideCtr {

	@Autowired
	@Qualifier("SlideImp")
	SlideInterface imp;
	
	final String activeSidebar="activeSlide";

	@RequestMapping(value="admin/slide",method=RequestMethod.GET)	
	public ModelAndView getAllSlides(){
		
		List<SlideModel> sl=null;
		 sl = imp.get_all_slides();
		 ModelAndView mav=new ModelAndView();
		mav.addObject("title_tag", "Slides");
		mav.addObject("description_tag", "Slide List");
		mav.addObject("activeSidebar", activeSidebar);
		
		
		mav.addObject("slides", sl);		
		mav.setViewName("adslide");
		return mav;
		
	}
}
