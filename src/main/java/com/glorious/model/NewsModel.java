package com.glorious.model;

import java.sql.Date;

public class NewsModel {

	private  int  id;
	private  String  title;
	private  String  feature_image;
	private  String  pdf_report;
	private  int  news_catgory;
	private  int  isdelete;
	private  int  status;
	private  String  creator;
	private  Date  createdate;
	private  String lastmodifier;
	private  Date  lastmodify;
	
	private String catgory_name;
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
	public String getPdf_report() {
		return pdf_report;
	}
	public void setPdf_report(String pdf_report) {
		this.pdf_report = pdf_report;
	}
	public int getNews_catgory() {
		return news_catgory;
	}
	public void setNews_catgory(int news_catgory) {
		this.news_catgory = news_catgory;
	}
	public int getIsdelete() {
		return isdelete;
	}
	public void setIsdelete(int isdelete) {
		this.isdelete = isdelete;
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
	public String getLastmodifier() {
		return lastmodifier;
	}
	public void setLastmodifier(String lastmodifier) {
		this.lastmodifier = lastmodifier;
	}
	public Date getLastmodify() {
		return lastmodify;
	}
	public void setLastmodify(Date lastmodify) {
		this.lastmodify = lastmodify;
	}
	public String getCatgory_name() {
		return catgory_name;
	}
	public void setCatgory_name(String catgory_name) {
		this.catgory_name = catgory_name;
	}
	
	
	
}
