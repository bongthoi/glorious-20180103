package com.glorious.ajax;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.glorious.model.PeopleModel;
import com.glorious.service.PeopleInterface;


@RestController
@RequestMapping(value="admin/ajax/people")
public class PeopleAjax {

	
	@Autowired
	@Qualifier("PeopleImp")	
	private PeopleInterface peopleImp;
	
	@RequestMapping(value="/insert",method = RequestMethod.POST,produces = MediaType.TEXT_PLAIN_VALUE+";charset=UTF-8")
	public String do_insert(@ModelAttribute PeopleModel p){
		//System.out.println("do insert");
		int rs = peopleImp.insertPeople(p);

		return String.valueOf(rs);
	}
	
	@RequestMapping(value="/delete",method = RequestMethod.POST,produces = MediaType.TEXT_PLAIN_VALUE+";charset=UTF-8")
	public String do_delete(@RequestParam(value = "id" ,required=true) int id){
		System.out.print("do delete");
		int rs = peopleImp.deletePeople(id);
		return String.valueOf(rs);
	}
	
	@RequestMapping(value="/edit",method = RequestMethod.POST,produces = MediaType.TEXT_PLAIN_VALUE+";charset=UTF-8")
	public String do_edit(@ModelAttribute PeopleModel p){
		int rs = peopleImp.editPeople(p);
		return String.valueOf(rs);
	}
	
	@RequestMapping(value="/active",method=RequestMethod.POST,produces = MediaType.TEXT_PLAIN_VALUE+";charset=UTF-8")
	public String postactive(@RequestParam(value="ids",required=true) String ids,
						@RequestParam(value="status",required=true) int status){
		return String.valueOf(peopleImp.activestatus(ids,status));
	}
}
