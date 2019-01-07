package com.glorious.ctrl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;






import com.glorious.helper.Pagination;
import com.glorious.model.DepartmentModel;
import com.glorious.model.PeopleModel;
import com.glorious.service.DepartmentInterface;
import com.glorious.service.PeopleInterface;

@Controller
public class PeopleCtr {
	
	@Autowired
	@Qualifier("DepartmentImp")
	DepartmentInterface DeparmentImp;
	
	@Autowired
	@Qualifier("PeopleImp")
	PeopleInterface imp;
	
	final String activeSidebar="activePeople";
	@RequestMapping(value="admin/people")
	public ModelAndView get_All_Peoples(@RequestParam(value="p", required = false,defaultValue="1") int currentpage){	
		
		List<PeopleModel> pl=null;
		List<DepartmentModel> departments=null;
		int total_recore=0;
	 	Pagination pa=null;
	 	String findparam1="";

	 	total_recore=imp.get_total_recore();
		pa=new Pagination(currentpage,total_recore);
		pl=imp.find(pa.getStart(),pa.getLimit());
		
//		pl = imp.get_all_peoples();
		departments=DeparmentImp.getAllDepartments();
		 
		 ModelAndView mav=new ModelAndView();
		 
		mav.addObject("title_tag", "Peoples");
		mav.addObject("description_tag", "People List");
		mav.addObject("activeSidebar", activeSidebar);
		mav.addObject("findparam1",findparam1);
		mav.addObject("pag",pa);
		mav.addObject("departments",departments);
		mav.addObject("peoples", pl);
		mav.setViewName("adpeople");
		return mav;
	}
}
