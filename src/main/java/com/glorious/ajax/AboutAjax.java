/**
 * 
 */
/**
 * @author Administrator
 *
 */
package com.glorious.ajax;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.bind.annotation.RestController;

import com.glorious.model.AboutModel;
import com.glorious.service.AboutInterface;



@RestController
@RequestMapping(value="admin/ajax/about")
public class AboutAjax {
	@Autowired
	@Qualifier("AboutImp")
	private AboutInterface aboutImp;
	

	@RequestMapping(value="/edit_info",method = RequestMethod.POST,produces = MediaType.TEXT_PLAIN_VALUE+";charset=UTF-8")
	public String edit_info(@ModelAttribute AboutModel p){
		int rs = aboutImp.edit_aboutByobject(p);
		return String.valueOf(rs);
	}
	
}
