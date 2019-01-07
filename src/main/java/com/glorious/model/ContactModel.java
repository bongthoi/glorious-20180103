package com.glorious.model;

public class ContactModel {

	private int id;
	private String location_img;
	private String location_name;
	private String office_address;
	private String show_room_address;
	private String phone;
	private String fax;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getLocation_img() {
		return location_img;
	}
	public void setLocation_img(String location_img) {
		this.location_img = location_img;
	}
	public String getLocation_name() {
		return location_name;
	}
	public void setLocation_name(String location_name) {
		this.location_name = location_name;
	}
	public String getOffice_address() {
		return office_address;
	}
	public void setOffice_address(String office_address) {
		this.office_address = office_address;
	}
	public String getShow_room_address() {
		return show_room_address;
	}
	public void setShow_room_address(String show_room_address) {
		this.show_room_address = show_room_address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getFax() {
		return fax;
	}
	public void setFax(String fax) {
		this.fax = fax;
	}
	@Override
	public String toString() {
		return "ContactModel [id=" + id + ", location_img=" + location_img
				+ ", location_name=" + location_name + ", office_address="
				+ office_address + ", show_room_address=" + show_room_address
				+ ", phone=" + phone + ", fax=" + fax + "]";
	}
	

	
}
