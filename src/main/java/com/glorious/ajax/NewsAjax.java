package com.glorious.ajax;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;


import com.glorious.model.NewsModel;
import com.glorious.service.INews;


@RestController
@RequestMapping(value="admin/ajax/news")
public class NewsAjax {
	
	@Autowired
	@Qualifier("NewsImp")
	INews   NewsImp;
	

	@RequestMapping(value="/post/delete",method=RequestMethod.POST,produces = MediaType.TEXT_PLAIN_VALUE+";charset=UTF-8")
	public String postdelete(@RequestParam(value="ids",required=true) String ids){
		System.out.print("delete");
		return String.valueOf(NewsImp.delete_post(ids));
	}
	@RequestMapping(value="/post/active",method=RequestMethod.POST,produces = MediaType.TEXT_PLAIN_VALUE+";charset=UTF-8")
	public String postactive(@RequestParam(value="ids",required=true) String ids,
						@RequestParam(value="status",required=true) int status){
		return String.valueOf(NewsImp.active_post(ids,status));
	}
	@RequestMapping(value="/post/insert",method=RequestMethod.POST,produces = MediaType.TEXT_PLAIN_VALUE+";charset=UTF-8")
	public String postinsert(@ModelAttribute NewsModel a ){
	
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		 String username = auth.getName(); //get logged in username
		return String.valueOf(NewsImp.insert_post(a,username));
	}
	@RequestMapping(value="/post/update",method=RequestMethod.POST,produces = MediaType.TEXT_PLAIN_VALUE+";charset=UTF-8")
	public String postupdate(@ModelAttribute NewsModel a) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		 String username = auth.getName(); //get logged in username
		return String.valueOf(NewsImp.update_post(a,username));
	}
	
	
}
