package com.glorious.ctrl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.glorious.model.AboutModel;
import com.glorious.service.AboutInterface;


@Controller
public class FE_AboutCtr {

	@Autowired
	@Qualifier("AboutImp")
	AboutInterface AboutImp;
	String activeHeader="none";
	String activeSideBar="none";
	 @RequestMapping(value = { "/Corporate-Profile"}, method = RequestMethod.GET)
	    public ModelAndView aboutus() {
		 
		 activeHeader="Corporate-Profile";
		 activeSideBar=activeHeader;
		 AboutModel about = AboutImp.get_about_contentbyid(1);
		 List<AboutModel> abouts=AboutImp.getAllAbouts();
		 
		 ModelAndView mav=new ModelAndView();
		mav.addObject("title_tag",about.getTitle());
		mav.addObject("description_tag", about.getDescription());
		mav.addObject("keyword", about.getKey_word());
		mav.addObject("activeHeader", activeHeader);
		mav.addObject("activeSidebar", activeSideBar);
		mav.addObject("abouts", abouts);
		mav.addObject("about", about);
		mav.setViewName("AboutUs");
		 return mav;
	    }
	 @RequestMapping(value = { "/Business-Operations","/Business-Commerce"}, method = RequestMethod.GET)
	    public ModelAndView aboutus2() {
		 
		 activeHeader="Business-Commerce";
		 activeSideBar=activeHeader;
		 AboutModel about = AboutImp.get_about_contentbyid(2);
		 List<AboutModel> abouts=AboutImp.getAllAbouts();
		 
		 ModelAndView mav=new ModelAndView();
		mav.addObject("title_tag", about.getTitle());
		mav.addObject("description_tag", about.getDescription());
		mav.addObject("keyword", about.getKey_word());
		mav.addObject("activeHeader", activeHeader);
		mav.addObject("activeSidebar", activeSideBar);
		mav.addObject("abouts", abouts);
		mav.addObject("about", about);
		mav.setViewName("AboutUs");
		 return mav;
	    } 
	 @RequestMapping(value = { "/Subsidiaries"}, method = RequestMethod.GET)
	    public ModelAndView aboutus3() {
		 
		 activeHeader="Subsidiaries";
		 activeSideBar=activeHeader;
		 AboutModel about = AboutImp.get_about_contentbyid(3);
		 List<AboutModel> abouts=AboutImp.getAllAbouts();
		 
		 ModelAndView mav=new ModelAndView();
		mav.addObject("title_tag", about.getTitle());
		mav.addObject("description_tag", about.getDescription());
		mav.addObject("keyword", about.getKey_word());
		mav.addObject("activeHeader", activeHeader);
		mav.addObject("activeSidebar", activeSideBar);
		mav.addObject("abouts", abouts);
		mav.addObject("about", about);
		mav.setViewName("AboutUs");
		 return mav;
	    } 
	
}
