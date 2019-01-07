package com.glorious.ctrl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.glorious.model.CatgoryModel;
import com.glorious.service.CatgoryInterface;



@Controller
public class CategoryCtr {

	
	@Autowired
	@Qualifier("CatgoryImp")
	CatgoryInterface   CateImp;
	
	
	final String activeSidebar="activeCatgory";
	
	@RequestMapping(value="admin/catgory")
	public ModelAndView get_All_Category(){
				
		ModelAndView mav=new ModelAndView();
		List<CatgoryModel> cl=null;
		
		cl=CateImp.getAll_Catgory();
		mav.addObject("title_tag", "Catgory");
		mav.addObject("description_tag", "Catgory List");
		mav.addObject("activeSidebar", activeSidebar);
		mav.addObject("catgories",cl);
		mav.setViewName("adCatgory");
		
		return mav;
	}
}
