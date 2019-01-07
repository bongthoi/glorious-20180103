package com.glorious.ajax;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.glorious.model.CatgoryModel;
import com.glorious.service.CatgoryInterface;

@RestController
@RequestMapping(value="admin/ajax/news/catgory")
public class CategoryAjax {

	
	@Autowired
	@Qualifier("CatgoryImp")
	CatgoryInterface   CatImp;
	
	@RequestMapping(value="/insert",method = RequestMethod.POST,produces = MediaType.TEXT_PLAIN_VALUE+";charset=UTF-8")
	public String do_insert(@ModelAttribute CatgoryModel c){
		int rs = CatImp.insertCatgory(c);
		return String.valueOf(rs);
	}
	
	@RequestMapping(value="/delete",method=RequestMethod.POST,produces=MediaType.TEXT_PLAIN_VALUE+";charset=UTF-8")
	public String do_delete(@RequestParam(value="ids", required=true ) String ids){
		int rs=0;
		rs=CatImp.DeleteCatgory(ids);
		return String.valueOf(rs);
	}
	
	@RequestMapping(value="/update",method=RequestMethod.POST,produces = MediaType.TEXT_PLAIN_VALUE+";charset=UTF-8")
	public String update_catgory(@ModelAttribute CatgoryModel c){
		return String.valueOf(CatImp.update_catgory(c));
	}

}
