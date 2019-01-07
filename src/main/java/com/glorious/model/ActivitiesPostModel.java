package com.glorious.model;

import java.sql.Date;

public class ActivitiesPostModel {

	private  int  id;
	private  String  title;
	private  String  feature_image;
	private  String  description;
	private  String  content;
	private  int  activities_catgory;
	private  int  status;
	private  String  creator;
	private  Date  createdate;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getFeature_image() {
		return feature_image;
	}
	public void setFeature_image(String feature_image) {
		this.feature_image = feature_image;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getActivities_catgory() {
		return activities_catgory;
	}
	public void setActivities_catgory(int activities_catgory) {
		this.activities_catgory = activities_catgory;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getCreator() {
		return creator;
	}
	public void setCreator(String creator) {
		this.creator = creator;
	}
	public Date getCreatedate() {
		return createdate;
	}
	public void setCreatedate(Date createdate) {
		this.createdate = createdate;
	}
	
	
	

}
