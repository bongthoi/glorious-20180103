package com.glorious.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import com.glorious.model.ActivitiesCatgoryModel;
import com.glorious.model.ActivitiesPostModel;
import com.glorious.service.ActivitiesService;

@Service
public class ActivitiesServiceImpl  implements ActivitiesService{
	@Autowired
	@Qualifier("templatejdbc")
	private  JdbcTemplate jdbcTemplateObject;
	@Override
	public List<ActivitiesCatgoryModel> getAll_Catgory() {
		// TODO Auto-generated method stub
		String sql="SELECT * FROM activities_catgory";
		List<ActivitiesCatgoryModel> ul=jdbcTemplateObject.query(sql,new Object [] {},BeanPropertyRowMapper.newInstance(ActivitiesCatgoryModel.class));
		return ul;
	}

	@Override
	public int insertCatgory(ActivitiesCatgoryModel c) {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		int result=0;
		
		String sql="INSERT INTO `activities_catgory`(`name`,`description`) VALUES(?,?);";
		
		 result=jdbcTemplateObject.update(sql,new Object[] {c.getName(),c.getDescription()});
			
		return result;
	}

	@Override
	public int DeleteCatgory(String ids) {
		// TODO Auto-generated method stub
		int result=0;
		String sql = "DELETE FROM activities_catgory WHERE id in ("+ids+")";
		result=jdbcTemplateObject.update(sql);
		return result;
	}

	@Override
	public int update_catgory(ActivitiesCatgoryModel c) {
		// TODO Auto-generated method stub
		String sql = "UPDATE `activities_catgory` SET `name` = ?,`description` = ? WHERE `id` = ?;";
		int result=jdbcTemplateObject.update(sql,new Object[] {c.getName(),c.getDescription(),c.getId()});
		return result;
	}

	@Override
	public ActivitiesPostModel get_postbyid(int id) {
		// TODO Auto-generated method stub
		ActivitiesPostModel n=null;
		String sql = "SELECT * FROM activities_post WHERE id =?";
		n=jdbcTemplateObject.queryForObject(sql,new Object[]{id}, BeanPropertyRowMapper.newInstance(ActivitiesPostModel.class));
		return n;
	}

	@Override
	public int get_total_recore_posts() {
		String sql = "SELECT COUNT(*) FROM activities_post   ";
		int total = jdbcTemplateObject.queryForObject(sql, new Object[] {},  int.class);
		return total;
	}

	@Override
	public List<ActivitiesPostModel> get_posts(int start, int limit) {
		String sql = " SELECT t1.*,"
				+ " t2.name as catgory_name"
				+ " FROM activities_post t1,activities_catgory t2 where  t1.activities_catgory=t2.id  "
				+ "ORDER BY t1.id DESC limit ?,? ";
		List<ActivitiesPostModel> m=jdbcTemplateObject.query(sql, new Object[] {start,limit}, BeanPropertyRowMapper.newInstance( ActivitiesPostModel.class));
		return m;
	}

	@Override
	public int get_total_recore_posts(int catgory) {
		String sql = "SELECT COUNT(*) FROM activities_post where  activities_catgory=?  ";
		int total = jdbcTemplateObject.queryForObject(sql, new Object[] {catgory},  int.class);
		return total;
	}

	@Override
	public List<ActivitiesPostModel> get_posts(int start, int limit, int catgory) {
		String sql = " SELECT t1.*,"
				+ " t2.name as catgory_name"
				+ " FROM activities_post t1,activities_catgory t2 where  t1.activities_catgory=?  and t1.activities_catgory=t2.id  "
				+ "ORDER BY t1.id DESC limit ?,? ";
		List<ActivitiesPostModel> m=jdbcTemplateObject.query(sql, new Object[] {catgory,start,limit}, BeanPropertyRowMapper.newInstance( ActivitiesPostModel.class));
		return m;
	}

	@Override
	public int delete_post(String ids) {
		// TODO Auto-generated method stub
				int result=0;
				String sql = "DELETE FROM activities_post WHERE id in ("+ids+")";
				result=jdbcTemplateObject.update(sql);
				return result;
	}

	@Override
	public int active_post(String ids, int status) {
		// TODO Auto-generated method stub
		String sql = "UPDATE activities_post SET "
				+ " status="+status
				+ " WHERE id in ("+ids+")";
		
		int result=jdbcTemplateObject.update(sql);
		return result;
	}

	@Override
	public int insert_post(ActivitiesPostModel a, String username) {
		String sql ="INSERT INTO `activities_post`"
				+ "(`title`,`feature_image`,`description`,`content`,"
				+ "`activities_catgory`,`status`,`creator`,`createdate`)"
				+ "VALUES"
				+ "(?,?,?,?,"
				+ "?,?,?, now())";

			int result=jdbcTemplateObject.update(sql,new Object[] {
				a.getTitle(),a.getFeature_image(),a.getDescription(),a.getContent(),
				a.getActivities_catgory(),a.getStatus(),username
			});
			return result;
	}

	@Override
	public int update_post(ActivitiesPostModel a) {
		String sql ="UPDATE `activities_post` SET "
				+ " `title` = ?,"
				+ "`feature_image` = ?,"
				+ "`description` = ?,"
				+ "`content` = ?,"
				+ "`activities_catgory` = ?,"
				+ "`status` =?"
				+ " WHERE `id` = ?";

		int result=jdbcTemplateObject.update(sql,new Object[] {
			a.getTitle(),a.getFeature_image(),a.getDescription(),
			a.getContent(),a.getActivities_catgory(),a.getStatus(),
			a.getId()
		});
		//System.out.println(result);
		return result;
	}

	
}
