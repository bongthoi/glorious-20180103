package com.glorious.ctrl;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.glorious.helper.Pagination;
import com.glorious.model.ActivitiesCatgoryModel;
import com.glorious.model.ActivitiesPostModel;
import com.glorious.service.ActivitiesService;

@Controller
public class ActivitiesCtr {

	@Autowired
	ActivitiesService activitiesService;
	
	
	@RequestMapping(value="admin/activities/catgory")
	public ModelAndView get_All_Category(){
				
		ModelAndView mav=new ModelAndView();
		List<ActivitiesCatgoryModel> cl=null;
		
		cl=activitiesService.getAll_Catgory();
		mav.addObject("title_tag", " Activities Catgory");
		mav.addObject("description_tag", " Activities Catgory List");
		mav.addObject("activeSidebar", "activeActivitiesCategory");
		mav.addObject("catgories",cl);
		mav.setViewName("adActivitiesCategory");
		
		return mav;
	}
	@RequestMapping(value="admin/activities/catgory/insert",method = RequestMethod.POST,produces = MediaType.TEXT_PLAIN_VALUE+";charset=UTF-8")
	@ResponseBody
	public String do_insert(@ModelAttribute ActivitiesCatgoryModel c){
		int rs = activitiesService.insertCatgory(c);
		return String.valueOf(rs);
	}
	
	@RequestMapping(value="admin/activities/catgory/delete",method=RequestMethod.POST,produces=MediaType.TEXT_PLAIN_VALUE+";charset=UTF-8")
	@ResponseBody
	public String do_delete(@RequestParam(value="ids", required=true ) String ids){
		int rs=0;
		rs=activitiesService.DeleteCatgory(ids);
		return String.valueOf(rs);
	}
	
	@RequestMapping(value="admin/activities/catgory/update",method=RequestMethod.POST,produces = MediaType.TEXT_PLAIN_VALUE+";charset=UTF-8")
	@ResponseBody
	public String update_catgory(@ModelAttribute ActivitiesCatgoryModel c){
		return String.valueOf(activitiesService.update_catgory(c));
	}

	@RequestMapping(value="admin/activities/posts")
	public ModelAndView getAll_News(@RequestParam(value="catgory", required = false,defaultValue="0") int catgory,
				@RequestParam(value="p", required = false,defaultValue="1") int currentpage){
		
	 	int total_recore=0;
	 	 Pagination pa=null;
	 	List<ActivitiesPostModel> m=null;
	 	List<ActivitiesCatgoryModel> catgories=activitiesService.getAll_Catgory();
		ModelAndView mav=new ModelAndView();
		mav.addObject("catgories",catgories);
		mav.addObject("activeSidebar", "activeActivitiesPosts");
		mav.addObject("title_tag", "Activities Post");
		mav.addObject("description_tag", "Activities Posts List");
		
		if(catgory>0){//get by catgory
			total_recore=activitiesService.get_total_recore_posts(catgory);
			pa=new Pagination(currentpage,total_recore);
			m=activitiesService.get_posts(pa.getStart(), pa.getLimit(),catgory);
			String paramcatgory=String.valueOf(catgory);
			mav.addObject("paramcatgory", paramcatgory);
			mav.addObject("_selected", catgory);
		}else{//get all
			total_recore=activitiesService.get_total_recore_posts();
			pa=new Pagination(currentpage,total_recore);
			m=activitiesService.get_posts(pa.getStart(), pa.getLimit());
			mav.addObject("_selected", 0);
		}

		mav.addObject("ativities", m);
		mav.addObject("pag",pa);
		mav.setViewName("adActivitiesPosts");
		return mav;
	}
	 @RequestMapping(value = { "/admin/activities/posts/new"}, method = RequestMethod.GET)
	 public ModelAndView newpost(){
			List<ActivitiesCatgoryModel> catgories=activitiesService.getAll_Catgory();
		
		 	ModelAndView mav=new ModelAndView();
			mav.addObject("catgories",catgories);
			mav.addObject("title_tag", "Add Activities Post");
			mav.addObject("description_tag", "Add Activities Post");
			mav.addObject("activeSidebar", "activeActivitiesPosts");
				mav.setViewName("adActivitiesPosts-new");
		      return mav;
	 }
	 @RequestMapping(value = { "/admin/activities/posts/edit/{id}",}, method = RequestMethod.GET)
	 public ModelAndView editpost(@PathVariable("id") int id) throws JsonGenerationException, JsonMappingException, IOException{
		 List<ActivitiesCatgoryModel> catgories=activitiesService.getAll_Catgory();
			ActivitiesPostModel a=activitiesService.get_postbyid(id);
		 	ModelAndView mav=new ModelAndView();
			mav.addObject("catgories",catgories);
			mav.addObject("title_tag", "Edit Activities Post");
			mav.addObject("description_tag", "Edit Activities Post");
			mav.addObject("activeSidebar", "activeActivitiesPosts");
			mav.addObject("activitiesPost", a);
				mav.setViewName("adActivitiesPosts-edit");
			
		      return mav;
	 }
	

		@RequestMapping(value="/admin/activities/posts/delete",method=RequestMethod.POST,produces = MediaType.TEXT_PLAIN_VALUE+";charset=UTF-8")
		@ResponseBody
		public String postdelete(@RequestParam(value="ids",required=true) String ids){
			System.out.print("delete");
			return String.valueOf(activitiesService.delete_post(ids));
		}
		@RequestMapping(value="/admin/activities/posts/active",method=RequestMethod.POST,produces = MediaType.TEXT_PLAIN_VALUE+";charset=UTF-8")
		@ResponseBody
		public String postactive(@RequestParam(value="ids",required=true) String ids,
							@RequestParam(value="status",required=true) int status){
			return String.valueOf(activitiesService.active_post(ids,status));
		}
		@RequestMapping(value="/admin/activities/posts/insert",method=RequestMethod.POST,produces = MediaType.TEXT_PLAIN_VALUE+";charset=UTF-8")
		@ResponseBody
		public String postinsert(@ModelAttribute ActivitiesPostModel a ){
		
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			 String username = auth.getName(); //get logged in username
			return String.valueOf(activitiesService.insert_post(a,username));
		}
		@RequestMapping(value="/admin/activities/posts/update",method=RequestMethod.POST,produces = MediaType.TEXT_PLAIN_VALUE+";charset=UTF-8")
		@ResponseBody
		public String postupdate(@ModelAttribute ActivitiesPostModel a) {
			return String.valueOf(activitiesService.update_post(a));
		}
}
