package com.glorious.ctrl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.glorious.model.ContactModel;
import com.glorious.service.ContactInterface;


@Controller
public class ContactCtr {

	@Autowired
	@Qualifier("ContactImp")
	ContactInterface imp;

	final String activeSidebar="activeContact";
	 @RequestMapping(value = {"admin/contact"}, method = RequestMethod.GET)
	 
	    public ModelAndView getallcontacts() {
		 List<ContactModel> cl=null;
		 cl = imp.get_all_contacts();
		 ModelAndView mav=new ModelAndView();
		mav.addObject("title_tag", "Contacts");
		mav.addObject("description_tag", "Contact List");
		mav.addObject("activeSidebar", activeSidebar);
		mav.addObject("contacts", cl);
		mav.setViewName("adcontact");
		
	        return mav;
	    }
}
