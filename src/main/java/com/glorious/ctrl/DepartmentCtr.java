package com.glorious.ctrl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.glorious.model.DepartmentModel;
import com.glorious.service.DepartmentInterface;


@Controller
public class DepartmentCtr {
	
	@Autowired
	@Qualifier("DepartmentImp")
	DepartmentInterface imp;
	
	final String activeSidebar="activeDepartment";
	@RequestMapping(value="admin/department",method=RequestMethod.GET)
	public ModelAndView getAll_Department(){
		 
	 	List<DepartmentModel> departments=imp.getAllDepartments();

	
		ModelAndView mav=new ModelAndView();
		mav.addObject("title_tag", "Departments");
		mav.addObject("description_tag", "Department List");
		mav.addObject("activeSidebar", activeSidebar);
		mav.addObject("departments",departments);
		mav.setViewName("addepartment");
		return mav;
	}

}
