package com.glorious.service;


import java.util.List;

import com.glorious.model.AboutModel;

public interface AboutInterface {


	AboutModel get_about_contentbyid(int id);

	int edit_aboutByobject(AboutModel p);
	
	List<AboutModel> getAllAbouts();

}
