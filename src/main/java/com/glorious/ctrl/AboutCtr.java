package com.glorious.ctrl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.glorious.model.AboutModel;
import com.glorious.service.AboutInterface;




@Controller
public class AboutCtr {
	@Autowired
	@Qualifier("AboutImp")
	AboutInterface imp;

	final String activeSidebar="activeAbout";
	 @RequestMapping(value = {"admin/about/{id}"}, method = RequestMethod.GET)
	    public ModelAndView about2(@PathVariable("id") int id) {
		
		 AboutModel m=null;
		 m = imp.get_about_contentbyid(id);
		 if(m==null){
			 return new ErrorPage().handleIOExceptioncode404();
		 }
		 ModelAndView mav=new ModelAndView();
		mav.addObject("title_tag", "Edit "+ m.getAbout_name());
		mav.addObject("description_tag", "Edit " + m.getAbout_name());
		mav.addObject("activeSidebar", activeSidebar);
		mav.addObject("about", m);
		mav.setViewName("adabout");
	        return mav;
	    }
}
