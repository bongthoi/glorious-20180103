package com.glorious.model;

import java.io.Serializable;
public class PartnersModel implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 7451865551699308332L;
	private int id;
	private String name;
	private String description;
		private String link;
		private String logo;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	

	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	public String getLogo() {
		return logo;
	}
	public void setLogo(String logo) {
		this.logo = logo;
	}
	
}
