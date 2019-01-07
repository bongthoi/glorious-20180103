package com.glorious.ctrl;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.glorious.helper.Pagination;
import com.glorious.helper.jspHelper;
import com.glorious.model.CatgoryModel;
import com.glorious.model.NewsModel;
import com.glorious.service.CatgoryInterface;
import com.glorious.service.INews;


@Controller
public class NewsCtr {

	
	@Autowired
	@Qualifier("CatgoryImp")
	CatgoryInterface   CateImp;
	
	@Autowired
	@Qualifier("NewsImp")
	INews   NewsImp;
	
	
	final String activeSidebar="activeNews";
	@RequestMapping(value="admin/news")
	public ModelAndView getAll_News(@RequestParam(value="catgory", required = false,defaultValue="0") int catgory,
				@RequestParam(value="p", required = false,defaultValue="1") int currentpage){
		
	 	int total_recore=0;
	 	 Pagination pa=null;
	 	List<NewsModel> m=null;
	 	List<CatgoryModel> catgories=CateImp.getAll_Catgory();
		ModelAndView mav=new ModelAndView();
		mav.addObject("catgories",catgories);
		mav.addObject("activeSidebar", activeSidebar);
		mav.addObject("title_tag", "News");
		mav.addObject("description_tag", "News List");
		
		if(catgory>0){//get by catgory
			total_recore=NewsImp.get_total_recore_news(catgory);
			pa=new Pagination(currentpage,total_recore);
			m=NewsImp.get_posts(pa.getStart(), pa.getLimit(),catgory);
			String paramcatgory="catgory="+catgory+"&";
			mav.addObject("paramcatgory", paramcatgory);
			mav.addObject("_selected", catgory);
		}else{//get all
			total_recore=NewsImp.get_total_recore_news();
			pa=new Pagination(currentpage,total_recore);
			m=NewsImp.get_posts(pa.getStart(), pa.getLimit());
			mav.addObject("_selected", 0);
		}

		mav.addObject("news", m);
		mav.addObject("pag",pa);
		mav.setViewName("adnews");
		return mav;
	}
	 @RequestMapping(value = { "/admin/news/post-new"}, method = RequestMethod.GET)
	 public ModelAndView newpost(){
			List<CatgoryModel> catgories=CateImp.getAll_Catgory();
		
		 	ModelAndView mav=new ModelAndView();
			mav.addObject("catgories",catgories);
			mav.addObject("title_tag", "Add New Post");
			mav.addObject("description_tag", "Add New Post");
			mav.addObject("activeSidebar", activeSidebar);
				mav.setViewName("adnewpost");
		      return mav;
	 }
	 @RequestMapping(value = { "/admin/news/post-edit/{id}",}, method = RequestMethod.GET)
	 public ModelAndView editpost(@PathVariable("id") int id) throws JsonGenerationException, JsonMappingException, IOException{
		 List<CatgoryModel> catgories=CateImp.getAll_Catgory();
			NewsModel a=NewsImp.get_postbyid(id);
		 	ModelAndView mav=new ModelAndView();
			mav.addObject("catgories",catgories);
			mav.addObject("title_tag", "Edit Post");
			mav.addObject("description_tag", "Edit Post");
			mav.addObject("activeSidebar", activeSidebar);
			mav.addObject("newJson", jspHelper.toJson(a));
				mav.setViewName("adnewpost-edit");
			
		      return mav;
	 }
	
	
}
