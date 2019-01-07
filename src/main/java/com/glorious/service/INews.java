package com.glorious.service;

import java.util.List;

import com.glorious.model.NewsModel;

public interface INews {

	int get_total_recore_news(int catgory);

	List<NewsModel> get_posts(int start, int limit, int catgory);

	
	
	int get_total_recore_news();

	List<NewsModel> get_posts(int start, int limit);

	NewsModel get_postbyid(int id);

	int delete_post(String ids);

	int active_post(String ids, int status);

	int insert_post(NewsModel a, String username);

	int update_post(NewsModel a, String username);

	List<NewsModel> getnews_Index();

	List<NewsModel> get_Active_bycatgory(int category);

	List<NewsModel> get_Active_bycatgory(int category, int year);

	int get_topYear(int category);

	List<String> getGroupYear(int category);



}
