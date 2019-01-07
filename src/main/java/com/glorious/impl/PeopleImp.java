package com.glorious.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;







import com.glorious.model.DepartmentModel;
import com.glorious.model.PeopleModel;
import com.glorious.model.angular_people;
import com.glorious.service.PeopleInterface;

@Repository("PeopleImp")
public class PeopleImp implements PeopleInterface {

	
	@Autowired
	@Qualifier("templatejdbc")
	private  JdbcTemplate jdbcTemplateObject;
	
	@Override
	public List<PeopleModel> get_all_peoples() {
		// TODO Auto-generated method stub
		
		String sql = "SELECT  tb1.id,tb1.name,tb1.position,tb1.description,tb1.img_profile,tb1.img_content,tb1.order,tb1.department_id,tb1.isactive,tb2.name as dept_name"
				+ "  FROM tb_people tb1 ,tb_department tb2 where tb1.department_id=tb2.id";
		List<PeopleModel> pl=jdbcTemplateObject.query(sql, new Object[] {}, BeanPropertyRowMapper.newInstance( PeopleModel.class));
		return pl;
		
	}

	@Override
	public int insertPeople(PeopleModel p) {
		// TODO Auto-generated method stub
		String sql="INSERT INTO `tb_people`("
				+ "`name`,"
				+ "`position`,"
				+ "`description`,"
				+ "`img_profile`,"
				+ "`img_content`,"
				+ "`order`,"
				+ "`department_id`,"
				+ "`isactive`)VALUES("
				+ "?,"
				+ "?,"
				+ "?,"
				+ "?,"
				+ "?,"
				+ "?,"
				+ "?,"
				+ "?);";
		int result=jdbcTemplateObject.update(sql,new Object[] {p.getName(),p.getPosition(),p.getDescription(),p.getImg_profile(),p.getImg_content(),p.getOrder(),p.getDepartment_id(),p.getIsactive()	});
			
		return result;
	}

	@Override
	public int deletePeople(int id) {
		// TODO Auto-generated method stub
		
		int rs = 0;
		String sql = "delete from tb_people where id=?";
		rs = jdbcTemplateObject.update(sql,new Object[] {id});
		return rs;
	}

	@Override
	public int editPeople(PeopleModel p) {
		// TODO Auto-generated method stub
		int rs = 0;
		//content=StringHelper.replace_html_origin(content);
		String sql = "UPDATE tb_people SET "
				+ "name = '"+p.getName()+"',"
				+ "position = '"+p.getPosition()+"',"
				+ "description = '"+p.getDescription()+"',"
				+ "img_profile = '"+p.getImg_profile()+"',"
				+ "img_content = '"+p.getImg_content()+"',"
				+ "`order` = "+p.getOrder()+","
				+ "department_id = "+p.getDepartment_id()+","
				+ "isactive = "+p.getIsactive() + " WHERE id ="+p.getId();
		rs = jdbcTemplateObject.update(sql);
		return rs;
	}

	@Override
	public int activestatus(String ids, int status) {
		// TODO Auto-generated method stub
		String sql = "UPDATE tb_people SET "
				+ " isactive="+status
				+ " WHERE id in ("+ids+")";
		
		int result=jdbcTemplateObject.update(sql);
		return result;
	}

	@Override
	public int get_total_recore() {
		// TODO Auto-generated method stub
		String sql= new StringBuilder("")
		.append("SELECT COUNT(*) FROM ")
		.append(PeopleModel.TABLE +" tb2 ")
		.toString();
		int total = jdbcTemplateObject.queryForObject(sql, new Object[] {},  int.class);
		return total;
	}

	@Override
	public List<PeopleModel> find(int start, int limit) {
		// TODO Auto-generated method stub
		
		String sql=new StringBuilder("SELECT tb1.id,tb1.name,tb1.position,tb1.description,tb1.img_profile,tb1.img_content,tb1.order,tb1.department_id,tb1.isactive,tb2.name as dept_name FROM ")
		.append(PeopleModel.TABLE +" tb1 ,")
		.append(DepartmentModel.TABLE + " tb2 ")
		.append("WHERE tb1.department_id=tb2.id")
		.append(" ORDER BY tb1.order ASC limit ?,? ")
		.toString();
		List<PeopleModel> m=jdbcTemplateObject.query(sql, new Object[] {start,limit}, 
			BeanPropertyRowMapper.newInstance( PeopleModel.class));
		return m;
	}

	@Override
	public List<angular_people> get_all_angular_people() {
		String sql="SELECT t1.id, t1.name, t1.position as posittion, "
				+ " t1.description as story, t1.img_profile as img, t1.img_content as img_content, t1.order,"
				+ " t2.id as department_id, t2.name as department_name"
				+ " FROM tb_people t1,tb_department t2"
				+ " where t1.department_id=t2.id and t1.isactive=1 ORDER BY t1.order ASC";
		List<angular_people> m=jdbcTemplateObject.query(sql, new Object[] {}, 
				BeanPropertyRowMapper.newInstance( angular_people.class));
			return m;
	}

	
}
