package com.glorious.ctrl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.glorious.helper.Pagination;
import com.glorious.model.ActivitiesCatgoryModel;
import com.glorious.model.ActivitiesPostModel;
import com.glorious.service.ActivitiesService;

@Controller
public class FE_OurActivitiesClt {

	@Autowired
	ActivitiesService activitiesService;
	
	String activeSidebar="none";
	@RequestMapping(value="/getPostByCateID")
	public ModelAndView getAll_News1(@RequestParam(value="category", required = false,defaultValue="0") int category,
				@RequestParam(value="p", required = false,defaultValue="1") int currentpage){
		activeSidebar=String.valueOf(category);
		
	 	int total_recore=0;
	 	Pagination pa=null;
	 	List<ActivitiesPostModel> m=null;
	 	List<ActivitiesCatgoryModel> catgories=activitiesService.getAll_Catgory();
		ModelAndView mav=new ModelAndView();
		
		mav.addObject("activeSidebar", "activeActivitiesPosts");
		mav.addObject("title_tag", "Activities Post");
		mav.addObject("description_tag", "");
		
		if(category>0){//get by catgory
			total_recore=activitiesService.get_total_recore_posts(category);
			pa=new Pagination(currentpage,total_recore);
			m=activitiesService.get_posts(pa.getStart(), pa.getLimit(),category);
			String paramcatgory="category="+category+"&";
			mav.addObject("paramcatgory", paramcatgory);
		}else{//get all
			total_recore=activitiesService.get_total_recore_posts();
			pa=new Pagination(currentpage,total_recore);
			m=activitiesService.get_posts(pa.getStart(), pa.getLimit());
		}
		mav.addObject("categories",catgories);
		mav.addObject("cate_post", m);
		mav.addObject("pag",pa);
		mav.addObject("title_tag", "Our Activities");
		mav.addObject("description_tag", "Activities Posts List");
		mav.addObject("activeHeader", "ouractivities");
		mav.addObject("activeSidebar",activeSidebar);
		mav.setViewName("ouractivities");
		return mav;
	}
	
	
	@RequestMapping(value="/postdetail/{id}")
	public ModelAndView get_postdetail(@PathVariable int id){
		 
		ModelAndView mav=new ModelAndView();
		List<ActivitiesCatgoryModel> categories=null;
		ActivitiesPostModel post=null;
		
		categories = activitiesService.getAll_Catgory();
		post=activitiesService.get_postbyid(id);
		
		mav.addObject("categories", categories);
		mav.addObject("post", post);
		mav.addObject("title_tag", "Post detail");
		mav.addObject("description_tag", "post detail");
		mav.addObject("activeHeader", "ouractivities");
		mav.addObject("activeSidebar", activeSidebar);
		mav.setViewName("postdetail");
				
		return mav;
	}
	
	
	
}
