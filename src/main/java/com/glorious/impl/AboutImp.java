package com.glorious.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.glorious.helper.StringHelper;
import com.glorious.model.AboutModel;
import com.glorious.service.AboutInterface;


@Repository("AboutImp")
public class AboutImp implements AboutInterface{
	@Autowired
	@Qualifier("templatejdbc")
	private  JdbcTemplate jdbcTemplateObject;


	@Override
	public AboutModel get_about_contentbyid(int id) {
		try {
		String sql = "SELECT * FROM tb_about WHERE id=?";
		AboutModel item = jdbcTemplateObject.queryForObject(sql,  new Object[] {id},BeanPropertyRowMapper.newInstance(AboutModel.class));
		item.setContent(StringHelper.replace_origin_html(item.getContent()));
		return item;
		} 
		catch (EmptyResultDataAccessException e) {
		   return null;
		}
	
	}

	@Override
	public int edit_aboutByobject(AboutModel p) {
		int rs = 0;
		p.setContent(StringHelper.replace_html_origin(p.getContent()));
		String sql="UPDATE `tb_about`SET "
				+ " `title` = ?,"
				+ "`description` = ?,"
				+ "`key_word` =?,"
				+ "`content` = ?, "
				+ "`feature_image` = ? "
				+ " WHERE `id` = ?";
		rs = jdbcTemplateObject.update(sql,new Object[] {p.getTitle(),p.getDescription(),p.getKey_word()
														,p.getContent(),p.getFeature_image(),p.getId()});
		return rs;
	}

	@Override
	public List<AboutModel> getAllAbouts() {
		// TODO Auto-generated method stub
		List<AboutModel> al=null;
			
		String sql = "SELECT * FROM tb_about";
		al = jdbcTemplateObject.query(sql, new Object[]{},BeanPropertyRowMapper.newInstance(AboutModel.class));
		return al;
		}
}
