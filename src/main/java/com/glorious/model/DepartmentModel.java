package com.glorious.model;

public class DepartmentModel {

	public static final String TABLE="tb_department";

	private int id;
	private String name;
	private String description;
	
	
	@Override
	public String toString() {
		return "DepartmentModel [id=" + id + ", name=" + name
				+ ", description=" + description + "]";
	}
	
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
	
	
}
