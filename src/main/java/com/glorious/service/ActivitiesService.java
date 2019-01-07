package com.glorious.service;

import java.util.List;

import com.glorious.model.ActivitiesCatgoryModel;
import com.glorious.model.ActivitiesPostModel;

public interface  ActivitiesService {

	List<ActivitiesCatgoryModel> getAll_Catgory();

	int insertCatgory(ActivitiesCatgoryModel c);

	int DeleteCatgory(String ids);

	int update_catgory(ActivitiesCatgoryModel c);

	ActivitiesPostModel get_postbyid(int id);

	int get_total_recore_posts();

	List<ActivitiesPostModel> get_posts(int start, int limit);

	int get_total_recore_posts(int catgory);

	List<ActivitiesPostModel> get_posts(int start, int limit, int catgory);

	int delete_post(String ids);

	int active_post(String ids, int status);

	int insert_post(ActivitiesPostModel a, String username);

	int update_post(ActivitiesPostModel a);

}
