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

import com.glorious.helper.Pagination;
import com.glorious.model.PartnersModel;
import com.glorious.service.IPartners;


@Controller
public class Partners {

	@Autowired
	@Qualifier("PartnersImp")
	private IPartners PartnersImp;
	
	final String activeSidebar="activePartners";
	
	 @RequestMapping(value = { "/admin/Partners","/admin/Partners/"}, method = RequestMethod.GET)
	    public ModelAndView index(@RequestParam(value="p", required = false,defaultValue="1") int currentpage) {
		 int total_recore=PartnersImp.get_total_recore();
		 Pagination pa=new Pagination(currentpage,total_recore);
		 List<PartnersModel> m=PartnersImp.get_l_pPartners(pa.getStart(), pa.getLimit());

		ModelAndView mav=new ModelAndView();
		mav.setViewName("adPartners");
		mav.addObject("title_tag", "Partners");
		mav.addObject("description_tag", "Partners");
		mav.addObject("activeSidebar", activeSidebar);
		mav.addObject("l_pPartners",m);
		mav.addObject("pag",pa);
	        return mav;
	    }
	 
		
	 @RequestMapping(value = { "/admin/Partners/new","/admin/Partners/new/"}, method = RequestMethod.GET)
	    public ModelAndView newPartners() {

		ModelAndView mav=new ModelAndView();
		mav.setViewName("adPartnersnew");
		mav.addObject("title_tag", "New Partners");
		mav.addObject("description_tag", "New Partners");
		mav.addObject("activeSidebar", activeSidebar);
	        return mav;
	    }
	 
	 @RequestMapping(value = { "/admin/Partners/edit/{id}"}, method = RequestMethod.GET)
	    public ModelAndView updateclient(@PathVariable("id") int id) {
		 PartnersModel a=PartnersImp.get_Partnersbyid(id);
		 ModelAndView mav=new ModelAndView();
		mav.setViewName("adPartnersupdate");
		mav.addObject("title_tag", "Edit Partners");
		mav.addObject("description_tag", " Edit Partners");
		mav.addObject("activeSidebar", activeSidebar);
		mav.addObject("Partners", a);
	        return mav;
	    } 
}
