package com.glorious.ajax;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.glorious.model.ContactModel;
import com.glorious.service.ContactInterface;

@RestController
@RequestMapping(value="admin/ajax/contact")
public class ContactAjax {

	@Autowired
	@Qualifier("ContactImp")
	private ContactInterface contactImp;
	
	@RequestMapping(value="/edit",method = RequestMethod.POST,produces = MediaType.TEXT_PLAIN_VALUE+";charset=UTF-8")
	public String do_edit(@ModelAttribute ContactModel a){
		int rs = contactImp.edit_contact(a);
		return String.valueOf(rs);
	}
	
	@RequestMapping(value="/insert",method = RequestMethod.POST,produces = MediaType.TEXT_PLAIN_VALUE+";charset=UTF-8")
	public String do_insert(@ModelAttribute ContactModel a){
		int rs = contactImp.insertcontact(a);
		return String.valueOf(rs);
	}
	/*@RequestMapping(value="/insert/22",method = RequestMethod.POST,produces = MediaType.TEXT_PLAIN_VALUE+";charset=UTF-8")
	public String do_insert(@ModelAttribute ContactModel a){
		System.out.println(a.toString());
		int rs = contactImp.insertcontact(a);
		return String.valueOf(rs);
	}*/
	@RequestMapping(value="/delete",method = RequestMethod.POST,produces = MediaType.TEXT_PLAIN_VALUE+";charset=UTF-8")
	public String do_delete(@RequestParam(value = "id" ,required=true) int id){
		int rs = contactImp.deletecontact(id);
		return String.valueOf(rs);
	}
}
