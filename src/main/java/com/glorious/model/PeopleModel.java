package com.glorious.model;

public class PeopleModel {

	public static final String TABLE="tb_people";
	private int		id;
	private String	name;
	private String 	position;
	private String  description;
	private String 	img_profile;
	private String 	img_content;
	private int 	order;
	private int 	department_id;
	private int 	isactive;
	private String dept_name;
	
	@Override
	public String toString() {
		return "PeopleModel [id=" + id + ", name=" + name + ", position="
				+ position + ", description=" + description + ", img_profile="
				+ img_profile + ", img_content=" + img_content + ", order="
				+ order + ", department_id=" + department_id + ", isactive="
				+ isactive + ", dept_name=" + dept_name + "]";
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
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getImg_profile() {
		return img_profile;
	}
	public void setImg_profile(String img_profile) {
		this.img_profile = img_profile;
	}
	public String getImg_content() {
		return img_content;
	}

	public void setImg_content(String img_content) {
		this.img_content = img_content;
	}
	public int getOrder() {
		return order;
	}
	public void setOrder(int order) {
		this.order = order;
	}
	public int getDepartment_id() {
		return department_id;
	}
	public void setDepartment_id(int department_id) {
		this.department_id = department_id;
	}
	public int getIsactive() {
		return isactive;
	}
	public void setIsactive(int isactive) {
		this.isactive = isactive;
	}
	
	public String getDept_name() {
		return dept_name;
	}

	public void setDept_name(String dept_name) {
		this.dept_name = dept_name;
	}	
	
	
	
}
