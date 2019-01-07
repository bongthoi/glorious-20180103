package com.glorious.ctrl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.glorious.model.ContactModel;
import com.glorious.service.ContactInterface;

@Controller
public class FE_ContactusClt {

	@Autowired
	@Qualifier("ContactImp")
	ContactInterface imp;
	
	
	@RequestMapping(value="/contactus")
	public ModelAndView getContactus(){
		ModelAndView mav=new ModelAndView();
		List<ContactModel> cl=null;
		
		cl = imp.get_all_contacts();

		mav.addObject("contacts", cl);
		mav.addObject("title_tag", "ContactUs");
		mav.addObject("description_tag", "Contact List");
		mav.addObject("activeHeader", "contactus");
		mav.setViewName("cltcontactus");
		
		
		return mav;
	}
}
