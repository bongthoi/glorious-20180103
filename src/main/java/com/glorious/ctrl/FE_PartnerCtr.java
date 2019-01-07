package com.glorious.ctrl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.glorious.model.PartnersModel;
import com.glorious.service.IPartners;

@Controller
public class FE_PartnerCtr {

	
	@Autowired
	@Qualifier("PartnersImp")
	private IPartners PartnersImp;
	
 	@RequestMapping(value = {"/partners"}, method = RequestMethod.GET)
    public ModelAndView getallcontacts() {
		ModelAndView mav=new ModelAndView();
		List<PartnersModel> pl=PartnersImp.get_pPartners_listava();
		 
		mav.addObject("title_tag", "Partners");
		mav.addObject("description_tag", "Partners");
		mav.addObject("partners",pl);
		mav.addObject("activeHeader", "partners");
		mav.setViewName("partners");
		return mav;
    }
}
