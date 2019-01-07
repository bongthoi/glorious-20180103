package com.glorious.model;

public class UserModel {

	private String username;
	private String password;
	private String name;
	private String phone;
	private String user_role;
	private int enabled;
	
	
	
	@Override
	public String toString() {
		return "UserModel [username=" + username + ", password=" + password
				+ ", name=" + name + ", phone=" + phone + ", user_role="
				+ user_role + ", enabled=" + enabled + "]";
	}
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getUser_role() {
		return user_role;
	}
	public void setUser_role(String user_role) {
		this.user_role = user_role;
	}
	public int getEnabled() {
		return enabled;
	}
	public void setEnabled(int enabled) {
		this.enabled = enabled;
	}
	
}
