package com.glorious.ajax;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.glorious.model.DepartmentModel;
import com.glorious.service.DepartmentInterface;

@RestController
@RequestMapping(value="admin/ajax/department")
public class DepartmentAjax {

	@Autowired
	@Qualifier("DepartmentImp")
	private DepartmentInterface departmentImp;
	
	@RequestMapping(value="/insert",method = RequestMethod.POST,produces = MediaType.TEXT_PLAIN_VALUE+";charset=UTF-8")
	public String do_insert(@RequestParam(value = "name" ,required=false) String name,
			@RequestParam(value = "description" ,required=false) String description){
		//System.out.print("insert function");
		DepartmentModel d=new DepartmentModel();
		d.setName(name);
		d.setDescription(description);
		int rs = departmentImp.insertDepartment(d);
		return String.valueOf(rs);
	}
	
	@RequestMapping(value="/edit",method = RequestMethod.POST,produces = MediaType.TEXT_PLAIN_VALUE+";charset=UTF-8")
	public String do_edit(@ModelAttribute DepartmentModel d){
		int rs = departmentImp.edit_department(d);
		return String.valueOf(rs);
	}
	
	@RequestMapping(value="/delete",method = RequestMethod.POST,produces = MediaType.TEXT_PLAIN_VALUE+";charset=UTF-8")
	public String do_delete(@RequestParam(value = "id" ,required=true) int id){
		int rs = departmentImp.delete_department(id);
		return String.valueOf(rs);
	}
}
