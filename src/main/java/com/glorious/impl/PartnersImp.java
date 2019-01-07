package com.glorious.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.glorious.model.PartnersModel;
import com.glorious.service.IPartners;


@Repository("PartnersImp")
public class PartnersImp implements IPartners {

	@Autowired
	@Qualifier("templatejdbc")
	private  JdbcTemplate jdbcTemplateObject;

	@Override
	public List<PartnersModel> get_l_pPartners(int start, int limit) {
		String sql = "SELECT `id`,`name`,`description`,`link`,`logo` FROM tb_partners "
				+ "   limit ?,? ";
		List<PartnersModel> m=jdbcTemplateObject.query(sql, new Object[] {start,limit}, BeanPropertyRowMapper.newInstance( PartnersModel.class));
		return m;
	}

	@Override
	public int get_total_recore() {
		String sql = "SELECT COUNT(*) FROM tb_partners ";
		int total = jdbcTemplateObject.queryForObject(sql, new Object[] {},  int.class);
		return total;
	}

	@Override
	public int insertclient(PartnersModel a) {
		String sql = "INSERT INTO tb_partners (`name`,`description`,`link`,`logo`)"
				+ " VALUES (?,?,?,?)" ;
			int result=jdbcTemplateObject.update(sql,new Object[] 
					{a.getName(),a.getDescription(),a.getLink(),a.getLogo()});
		return result;
	}

	@Override
	public int updateclient(PartnersModel a) {
		String sql = "UPDATE tb_partners SET "
				+ " name=?,"
				+ " description=?,"
				+ " link=?,"
				+ " logo=? "
				+ " WHERE id =? ";
		int result=jdbcTemplateObject.update(sql, new Object[] {
				a.getName(),a.getDescription(),a.getLink(),
				a.getLogo(),a.getId()});

		return result;
	}

	@Override
	public int deleteclient(String ids) {
		String sql = "DELETE FROM tb_partners WHERE id in ("+ids+")";
		int result=jdbcTemplateObject.update(sql);
		//System.out.println(result);
		return result;
	}

	@Override
	public PartnersModel get_Partnersbyid(int id) {
		String sql ="SELECT`id`,`name`,`description`,`link`,`logo` FROM tb_partners WHERE id=?";
		PartnersModel m=jdbcTemplateObject.queryForObject(sql, new Object[] { id },BeanPropertyRowMapper.newInstance( PartnersModel.class));
		return m;
	}

	@Override
	public List<PartnersModel> get_pPartners_listava() {
		String sql = "SELECT `id`,`name`,`description`,`link`,`logo` FROM tb_partners ";
		List<PartnersModel> m=jdbcTemplateObject.query(sql, new Object[] {}, BeanPropertyRowMapper.newInstance( PartnersModel.class));
		return m;
	}
	
	

}
