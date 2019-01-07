package com.glorious.ajax;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.glorious.model.UserModel;
import com.glorious.service.UserInterface;

@RestController
@RequestMapping(value="admin/ajax/user")
public class UserAjax {

	
	@Autowired
	@Qualifier("UserImp")
	UserInterface   UserImp;
	
	@RequestMapping(value="/insert",method = RequestMethod.POST,produces = MediaType.TEXT_PLAIN_VALUE+";charset=UTF-8")
	public String do_insert(@ModelAttribute UserModel u){
		int rs = UserImp.insertUser(u);
		return String.valueOf(rs);
	}
	
	@RequestMapping(value="/edit",method = RequestMethod.POST,produces = MediaType.TEXT_PLAIN_VALUE+";charset=UTF-8")
	public String do_edit(@ModelAttribute UserModel u){
		int rs = UserImp.editUser(u);
		return String.valueOf(rs);
	}
	
	@RequestMapping(value="/delete",method=RequestMethod.POST,produces=MediaType.TEXT_PLAIN_VALUE+";charset=UTF-8")
	public String do_delete(@RequestParam(value="username", required=true ) String username){
		int rs=0;
		rs=UserImp.doDelete(username);
		return String.valueOf(rs);
	}
	
	@RequestMapping(value="/active",method=RequestMethod.POST,produces = MediaType.TEXT_PLAIN_VALUE+";charset=UTF-8")
	public String postactive(@RequestParam(value="ids",required=true) String ids,
						@RequestParam(value="status",required=true) int status){
		return String.valueOf(UserImp.activestatus(ids,status));
	}
}
