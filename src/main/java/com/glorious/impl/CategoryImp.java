package com.glorious.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.glorious.model.CatgoryModel;
import com.glorious.service.CatgoryInterface;


@Repository("CatgoryImp")
public class CategoryImp implements CatgoryInterface {

	@Autowired
	@Qualifier("templatejdbc")
	private JdbcTemplate jdbcTemplateObject;
	
	
	@Override
	public List<CatgoryModel> getAll_Catgory() {
		// TODO Auto-generated method stub
		String sql="SELECT * FROM news_catgory";
		List<CatgoryModel> ul=jdbcTemplateObject.query(sql,new Object [] {},BeanPropertyRowMapper.newInstance(CatgoryModel.class));
		return ul;
	}


	@Override
	public int insertCatgory(CatgoryModel c) {
		// TODO Auto-generated method stub
		int result=0;
		
		String sql="INSERT INTO `news_catgory`(`name`,`description`) VALUES(?,?);";
		
		 result=jdbcTemplateObject.update(sql,new Object[] {c.getName(),c.getDescription()});
			
		return result;
	}


	@Override
	public int DeleteCatgory(String ids) {
		// TODO Auto-generated method stub
		int result=0;
		String sql = "DELETE FROM news_catgory WHERE id in ("+ids+")";
		result=jdbcTemplateObject.update(sql);
		return result;
	}


	@Override
	public int update_catgory(CatgoryModel c) {
		String sql = "UPDATE `news_catgory` SET `name` = ?,`description` = ? WHERE `id` = ?;";
		int result=jdbcTemplateObject.update(sql,new Object[] {c.getName(),c.getDescription(),c.getId()});
		return result;
	}


	@Override
	public CatgoryModel getcatogoryById(int category) {
		// TODO Auto-generated method stub
		String sql="SELECT * FROM news_catgory where id=?";
		CatgoryModel ul=jdbcTemplateObject.queryForObject(sql,new Object [] {category},BeanPropertyRowMapper.newInstance(CatgoryModel.class));
		return ul;
	}


	

}
