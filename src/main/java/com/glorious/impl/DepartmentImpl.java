package com.glorious.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.glorious.model.DepartmentModel;
import com.glorious.service.DepartmentInterface;

@Repository("DepartmentImp")
public class DepartmentImpl implements DepartmentInterface {

	@Autowired
	@Qualifier("templatejdbc")
	private  JdbcTemplate jdbcTemplateObject;
	
	@Override
	public List<DepartmentModel> getAllDepartments() {
		// TODO Auto-generated method stub
		
		String sql = "SELECT * "
				+ "  FROM tb_department";
		List<DepartmentModel> d=jdbcTemplateObject.query(sql, new Object[] {}, BeanPropertyRowMapper.newInstance( DepartmentModel.class));
		return d;
	}

	@Override
	public int insertDepartment(DepartmentModel d) {
		// TODO Auto-generated method stub
		
		String sql="INSERT INTO `tb_department`("
				+ "`name`,"
				+ "`description`)VALUES("
				+ "?,"				
				+ "?);";
		int result=jdbcTemplateObject.update(sql,new Object[] {
						d.getName(),d.getDescription()
		});
			
		//System.out.print(result);
		return result;
	}

	@Override
	public int edit_department(DepartmentModel d) {
		// TODO Auto-generated method stub
		
		int rs = 0;
		//content=StringHelper.replace_html_origin(content);
		String sql = "UPDATE tb_department SET name='"+d.getName()+"',description='"+d.getDescription()+"'  WHERE id=" +d.getId();
		rs = jdbcTemplateObject.update(sql);
		return rs;
	}

	@Override
	public int delete_department(int id) {
		// TODO Auto-generated method stub
		int rs = 0;
		String sql = "delete from tb_department where id=?";
		rs = jdbcTemplateObject.update(sql,new Object[] {id});
		return rs;
	}

	
	

}
