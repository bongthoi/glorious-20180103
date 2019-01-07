package com.glorious.ctrl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.glorious.model.CatgoryModel;
import com.glorious.model.NewsModel;
import com.glorious.service.CatgoryInterface;
import com.glorious.service.INews;


@Controller
public class FE_News {

	@Autowired
	@Qualifier("NewsImp")
	INews   NewsImp;
	
	@Autowired
	@Qualifier("CatgoryImp")
	CatgoryInterface   CateImp;
	
	String activeHeader="none";
	String activeSideBar="none";
	
	 @RequestMapping(value = { "/News/{category}"}, method = RequestMethod.GET)
	    public ModelAndView NewsbyCatgory(@PathVariable("category") int category,
	    				@RequestParam(value="year",required=false,defaultValue="0") int year) {
		 
		 //activeHeader="About-Us";
		 activeSideBar=String.valueOf(category);
		 CatgoryModel cat=CateImp.getcatogoryById(category);
		 List<String> group_year=NewsImp.getGroupYear(category);
		 List<NewsModel> m =null;
		 if(year>0){
			  m = NewsImp.get_Active_bycatgory(category,year);
		 }else{
			 m = NewsImp.get_Active_bycatgory(category);
			 year=NewsImp.get_topYear(3);
			 category=3;
		 }
		 
		 ModelAndView mav=new ModelAndView();
		mav.addObject("title_tag",cat.getName());
		mav.addObject("description_tag",cat.getDescription());
		mav.addObject("keyword", cat.getDescription());
		mav.addObject("activeHeader", activeHeader);
		mav.addObject("activeSidebar", activeSideBar);
		//mav.addObject("slides", sl);
		mav.addObject("catgorynew", category);
		mav.addObject("news", m);
		mav.addObject("year", year);
		mav.addObject("group_year", group_year);
		mav.setViewName("FeNews");
		 return mav;
	    }
	 
	 @RequestMapping(value = { "/News"}, method = RequestMethod.GET)
	    public ModelAndView News(@RequestParam(value="year",required=false,defaultValue="0") int year) {
		 //activeHeader="About-Us";
		 activeSideBar=String.valueOf(3);
		 CatgoryModel cat=CateImp.getcatogoryById(3);
		 List<String> group_year=NewsImp.getGroupYear(3);
		 List<NewsModel> m =null;
		 if(year>0){
			  m = NewsImp.get_Active_bycatgory(3,year);
		 }else{
			 m = NewsImp.get_Active_bycatgory(3);
			 year=NewsImp.get_topYear(3);
			 
		 }
		 ModelAndView mav=new ModelAndView();
		mav.addObject("title_tag",cat.getName());
		mav.addObject("description_tag",cat.getDescription());
		mav.addObject("keyword", cat.getDescription());
		mav.addObject("activeHeader", activeHeader);
		mav.addObject("activeSidebar", activeSideBar);
		//mav.addObject("slides", sl);
		mav.addObject("catgorynew", 3);
		mav.addObject("news", m);
		mav.addObject("year", year);
		mav.addObject("group_year", group_year);
		mav.setViewName("FeNews");
		 return mav;
	    }
	
	
}
