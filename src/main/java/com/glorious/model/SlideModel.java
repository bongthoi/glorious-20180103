package com.glorious.model;

import java.sql.Date;

public class SlideModel {

	private int id;
	private String img_fullname;
	private Date create_date;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getImg_fullname() {
		return img_fullname;
	}
	public void setImg_fullname(String img_fullname) {
		this.img_fullname = img_fullname;
	}
	public Date getCreate_date() {
		return create_date;
	}
	public void setCreate_date(Date create_date) {
		this.create_date = create_date;
	}
	
	
	@Override
	public String toString() {
		return "SlideModel [img_fullname=" + img_fullname + ", create_date="
				+ create_date + "]";
	}
	
}
