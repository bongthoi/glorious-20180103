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
import com.glorious.service.INews;
import com.glorious.model.NewsModel;


@Controller
public class FE_Indexctr {

	@Autowired
	@Qualifier("AboutImp")
	AboutInterface AboutImp;
	
	
	@Autowired
	@Qualifier("NewsImp")
	INews   NewsImp;
	
	final String activeHeader="none";
	 @RequestMapping(value = { "/"}, method = RequestMethod.GET)
	    public ModelAndView index() {
		 ModelAndView mav=new ModelAndView();
	
		 
	    AboutModel about=null;
		 about = AboutImp.get_about_contentbyid(1);
		 List<NewsModel> lnews =NewsImp.getnews_Index();//Announcements and Notices
		mav.addObject("title_tag", "Glorious IT Creation Company Limited");
		mav.addObject("description_tag", "Glorious IT Creation Company Limited. All rights reserved.Powered by Glorious Vietnam");
		mav.addObject("keyword", "Glorious,IT,Creation,Company,Limited");
		mav.addObject("activeSidebar", activeHeader);
		//mav.addObject("slides", sl);
		mav.addObject("about", about);
		mav.addObject("news", lnews);
		//System.out.println(lnews.size());
		mav.setViewName("index");
		 return mav;
	    }

}
