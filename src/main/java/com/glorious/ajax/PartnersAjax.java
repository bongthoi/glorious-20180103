package com.glorious.ajax;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.glorious.model.PartnersModel;
import com.glorious.service.IPartners;


@RestController
@RequestMapping(value="admin/ajax/Partners")
public class PartnersAjax {

	@Autowired
	@Qualifier("PartnersImp")
	private IPartners PartnersImp;
	
	@RequestMapping(value="/insert",method=RequestMethod.POST,produces = MediaType.TEXT_PLAIN_VALUE+";charset=UTF-8")
	public String insert(@ModelAttribute PartnersModel m){
		return String.valueOf(PartnersImp.insertclient(m));
	}
	@RequestMapping(value="/update",method=RequestMethod.POST,produces = MediaType.TEXT_PLAIN_VALUE+";charset=UTF-8")
	public String update(@ModelAttribute PartnersModel m){
		return String.valueOf(PartnersImp.updateclient(m));
	}
	@RequestMapping(value="/delete",method=RequestMethod.POST,produces = MediaType.TEXT_PLAIN_VALUE+";charset=UTF-8")
	public String update(@RequestParam(value="ids",required=true) String ids){
		return String.valueOf(PartnersImp.deleteclient(ids));
	}
	

	@RequestMapping(value="/test",method=RequestMethod.GET,produces = MediaType.TEXT_PLAIN_VALUE+";charset=UTF-8")
	public String test(){
		return "aaa hello";
	}
}
