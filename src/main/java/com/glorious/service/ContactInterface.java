package com.glorious.service;


import java.util.List;

import com.glorious.model.ContactModel;

public interface ContactInterface {
	
	List<ContactModel> get_all_contacts();

	int edit_contact(String location_img, String location_name,
			String office_address, String show_room_address, String phone,
			String fax,int id);

	int insertcontact(ContactModel a);
	
	int edit_contact(ContactModel a);

	int deletecontact(int id);

	

}
