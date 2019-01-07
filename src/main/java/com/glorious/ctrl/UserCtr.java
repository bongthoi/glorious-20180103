package com.glorious.ctrl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.glorious.model.UserModel;
import com.glorious.service.UserInterface;


@Controller
public class UserCtr {

	
	@Autowired
	@Qualifier("UserImp")
	UserInterface   Imp;
	
	
	final String activeSidebar="activeUser";
	
	@RequestMapping(value="admin/user")
	public ModelAndView get_All_Users(){
				
		ModelAndView mav=new ModelAndView();
		List<UserModel> ul=null;
		
		ul=Imp.getAll_Users();
		mav.addObject("title_tag", "Users");
		mav.addObject("description_tag", "User List");
		mav.addObject("activeSidebar", activeSidebar);
		mav.addObject("users",ul);
		mav.setViewName("aduser");
		
		return mav;
	}
}
