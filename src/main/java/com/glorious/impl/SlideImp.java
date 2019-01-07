package com.glorious.impl;


import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.glorious.model.SlideModel;
import com.glorious.service.SlideInterface;

@Repository("SlideImp")
public class SlideImp implements SlideInterface {

	
	@Autowired
	@Qualifier("templatejdbc")
	private  JdbcTemplate jdbcTemplateObject;
	
	
	
	@Override
	public List<SlideModel> get_all_slides() {
		String sql = "SELECT id, img_fullname, create_date"
				+ "  FROM tb_slide";
		List<SlideModel> s=jdbcTemplateObject.query(sql, new Object[] {}, BeanPropertyRowMapper.newInstance( SlideModel.class));
		return s;
	}
	
	@Override
	public int insert_slide(SlideModel s) {
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date = new Date();
		
		
		String sql="INSERT INTO `tb_slide`("
				+ "`img_fullname`,"							
				+ "`create_date`)VALUES("
				+ "?,"
				+ "?);";
		int result=jdbcTemplateObject.update(sql,new Object[] {
				s.getImg_fullname(),dateFormat.format(date)
						});
			
	//	System.out.print(s.getImg_fullname());
		return result;
	}

	@Override
	public int edit_slide(SlideModel s) {
		// TODO Auto-generated method stub		
		//System.out.print("edit slide");

		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date = new Date();
		int rs = 0;
		//content=StringHelper.replace_html_origin(content);
		String sql = "UPDATE tb_slide SET img_fullname='"+s.getImg_fullname()+"',create_date='" + dateFormat.format(date) + "'  WHERE id=" +s.getId();
		rs = jdbcTemplateObject.update(sql);
		return rs;
		
	}

	@Override
	public int deleteslide(int id) {
		// TODO Auto-generated method stub
		//System.out.print(id);
		int rs = 0;
		String sql = "delete from tb_slide where id=?";
		rs = jdbcTemplateObject.update(sql,new Object[] {id});
		return rs;
	}
}
