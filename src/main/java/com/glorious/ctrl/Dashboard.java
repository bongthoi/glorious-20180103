package com.glorious.ctrl;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class Dashboard {

	final String activeSidebar="activeDashboard";
	 @RequestMapping(value = { "/admin","admin/dashboard"}, method = RequestMethod.GET)
	    public ModelAndView dashboard() {
		 ModelAndView mav=new ModelAndView();
		mav.setViewName("dashboard");
		mav.addObject("title_tag", "Welcom to dashboard");
		mav.addObject("description_tag", "Welcom to dashboard");
		mav.addObject("activeSidebar", activeSidebar);
	        return mav;
	    }

}
