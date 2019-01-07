package com.glorious.ajax;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.glorious.model.SlideModel;
import com.glorious.service.SlideInterface;


@RestController
@RequestMapping(value="admin/ajax/slide")
public class SlideAjax {

	@Autowired
	@Qualifier("SlideImp")
	private SlideInterface slideImp;
	
	@RequestMapping(value="/insert",method = RequestMethod.POST,produces = MediaType.TEXT_PLAIN_VALUE+";charset=UTF-8")
	public String do_insert(@ModelAttribute SlideModel s){
		//System.out.println("do insert");
		int rs = slideImp.insert_slide(s);
		return String.valueOf(rs);
	}
	
	@RequestMapping(value="/edit",method = RequestMethod.POST,produces = MediaType.TEXT_PLAIN_VALUE+";charset=UTF-8")
	public String do_edit(@RequestParam(value = "id" ,required=true) int id,
					@RequestParam(value = "img_fullname" ,required=true) String img_fullname){
		SlideModel s=new SlideModel();
		s.setId(id);
		s.setImg_fullname(img_fullname);
		int rs = slideImp.edit_slide(s);
		
		return String.valueOf(rs);
	}
	
	@RequestMapping(value="/delete",method = RequestMethod.POST,produces = MediaType.TEXT_PLAIN_VALUE+";charset=UTF-8")
	public String do_delete(@RequestParam(value = "id" ,required=true) int id){
		int rs = slideImp.deleteslide(id);
		return String.valueOf(rs);
	}
}
