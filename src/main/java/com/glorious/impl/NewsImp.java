package com.glorious.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;



import com.glorious.model.NewsModel;
import com.glorious.service.INews;

@Repository("NewsImp")
public class NewsImp implements INews {
	@Autowired
	@Qualifier("templatejdbc")
	private  JdbcTemplate jdbcTemplateObject;

	@Override
	public int get_total_recore_news(int catgory) {
		String sql = "SELECT COUNT(*) FROM news where isdelete=0 and news_catgory="+catgory;
		int total = jdbcTemplateObject.queryForObject(sql, new Object[] {},  int.class);
		return total;
	}

	@Override
	public List<NewsModel> get_posts(int start, int limit, int catgory) {
		String sql = " SELECT t1.id,t1.title,t1.feature_image,t1.pdf_report,t1.news_catgory,"
				+ " t1.isdelete,t1.status,t1.creator,t1.createdate,t1.lastmodifier,t1.lastmodify,"
				+ " t2.name as catgory_name"
				+ " FROM news t1,news_catgory t2 where t1.isdelete=0 and t1.news_catgory=?  and t1.news_catgory=t2.id  ORDER BY t1.id DESC limit ?,? ";
		List<NewsModel> m=jdbcTemplateObject.query(sql, new Object[] {catgory,start,limit}, BeanPropertyRowMapper.newInstance( NewsModel.class));
		return m;
	}

	@Override
	public int get_total_recore_news() {
		String sql = "SELECT COUNT(*) FROM news where isdelete=0  ";
		int total = jdbcTemplateObject.queryForObject(sql, new Object[] {},  int.class);
		return total;
	}

	@Override
	public List<NewsModel> get_posts(int start, int limit) {
		String sql = " SELECT t1.id,t1.title,t1.feature_image,t1.pdf_report,t1.news_catgory,"
				+ " t1.isdelete,t1.status,t1.creator,t1.createdate,t1.lastmodifier,t1.lastmodify,"
				+ " t2.name as catgory_name"
				+ " FROM news t1,news_catgory t2 where t1.news_catgory=t2.id and t1.isdelete=0  ORDER BY t1.id DESC limit ?,?";
		List<NewsModel> m=jdbcTemplateObject.query(sql, new Object[] {start,limit}, BeanPropertyRowMapper.newInstance( NewsModel.class));
		return m;
	}

	@Override
	public NewsModel get_postbyid(int id) {
		
		NewsModel n=null;
		String sql = "SELECT * FROM news WHERE id =?";
		n=jdbcTemplateObject.queryForObject(sql,new Object[]{id}, BeanPropertyRowMapper.newInstance(NewsModel.class));
		return n;
	}

	@Override
	public int delete_post(String ids) {
		// TODO Auto-generated method stub
		int result=0;
		String sql = "DELETE FROM news WHERE id in ("+ids+")";
		result=jdbcTemplateObject.update(sql);
		return result;
	}

	@Override
	public int active_post(String ids, int status) {
		// TODO Auto-generated method stub
		String sql = "UPDATE news SET "
				+ " status="+status
				+ " WHERE id in ("+ids+")";
		
		int result=jdbcTemplateObject.update(sql);
		return result;
	}

	@Override
	public int insert_post(NewsModel a, String username) {
		String sql ="INSERT INTO `news` "
						+"(`title`,`feature_image`,`pdf_report`,`news_catgory`,`isdelete`,"
						+ "`status`,`creator`,`createdate`,`lastmodifier`,`lastmodify`)"
						+ " VALUES"
						+ " (?,?,?,?,0,"
						+ " ?,?,now(),?,now());";
		
		int result=jdbcTemplateObject.update(sql,new Object[] {
			a.getTitle(),a.getFeature_image(),a.getPdf_report(),a.getNews_catgory(),
			a.getStatus(),username,username
		});
		return result;
	}

	@Override
	public int update_post(NewsModel a, String username) {
	
		String sql ="UPDATE `news` SET `title` = ?,`feature_image` = ?,`pdf_report` = ?,"
				+ " `news_catgory` = ?,`status` = ?,"
				+ " `lastmodifier` = ?,`lastmodify` =  now()"
				+ " WHERE `id` = ?;";
		int result=jdbcTemplateObject.update(sql,new Object[] {
			a.getTitle(),a.getFeature_image(),a.getPdf_report(),
			a.getNews_catgory(),a.getStatus(),username,
			a.getId()
		});
		System.out.println(result);
		return result;
	}

	@Override
	public List<NewsModel> getnews_Index() {
		String sql = " SELECT * FROM news t1 where t1.isdelete=0 and status=1 ORDER BY t1.id DESC limit 0,5";
		List<NewsModel> m=jdbcTemplateObject.query(sql, new Object[] {}, BeanPropertyRowMapper.newInstance( NewsModel.class));
		return m;
	}

	@Override
	public List<NewsModel> get_Active_bycatgory(int category) {
		String sql = "call sp_news_search_index2(?);";
		List<NewsModel> m=jdbcTemplateObject.query(sql, new Object[] {category}, BeanPropertyRowMapper.newInstance( NewsModel.class));
		return m;
	}

	@Override
	public List<NewsModel> get_Active_bycatgory(int category, int year) {
		String sql = "call sp_news_search_index(?,?);";
		List<NewsModel> m=jdbcTemplateObject.query(sql, new Object[] {category,year}, BeanPropertyRowMapper.newInstance( NewsModel.class));
		return m;
	}

	@Override
	public int get_topYear(int category) {
		String sql="SELECT YEAR(createdate)  as s_year from news where news_catgory =? group by s_year order by s_year desc limit 1;";
		return jdbcTemplateObject.queryForObject(sql, new Object[] {category}, int.class);
	}

	@Override
	public List<String> getGroupYear(int category) {
		String sql="SELECT YEAR(createdate)  as s_year from news where news_catgory =? group by s_year order by s_year desc ";
		return jdbcTemplateObject.queryForList(sql, new Object[] {category}, String.class);
	}

}
