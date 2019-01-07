package com.glorious.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.glorious.model.ContactModel;
import com.glorious.service.ContactInterface;

@Repository("ContactImp")
public class ContactImp implements ContactInterface{

	
	@Autowired
	@Qualifier("templatejdbc")
	private  JdbcTemplate jdbcTemplateObject;
	
	
	
	@Override
	public List<ContactModel> get_all_contacts() {
		String sql = "SELECT id, location_img, location_name, office_address, show_room_address, phone, fax "
				+ "  FROM tb_contact";
		List<ContactModel> c=jdbcTemplateObject.query(sql, new Object[] {}, BeanPropertyRowMapper.newInstance( ContactModel.class));
		return c;
	}
	
	@Override
	public int insertcontact(ContactModel a) {
		String sql="INSERT INTO `tb_contact`("
				+ "`location_img`,"
				+ "`location_name`,"
				+ "`office_address`,"
				+ "`show_room_address`,"
				+ "`phone`,"
				+ "`fax`)VALUES("
				+ "?,"
				+ "?,"
				+ "?,"
				+ "?,"
				+ "?,"
				+ "?);";
		int result=jdbcTemplateObject.update(sql,new Object[] {
						a.getLocation_img(),a.getLocation_name(),a.getOffice_address(),
						a.getShow_room_address(),a.getPhone(),a.getFax()
		});
			
		System.out.print(result);
		return result;
	}
	
	@Override
	public int edit_contact(String location_img, String location_name,
			String office_address, String show_room_address, String phone,
			String fax,int id) {
		int rs = 0;
		//content=StringHelper.replace_html_origin(content);
		String sql = "UPDATE tb_contact SET location_img='"+location_img+"',location_name='"+location_name+"'"
				+ ",office_address='"+office_address+"',show_room_address='"+ show_room_address +"',phone='"+phone+"',fax='"+fax+"'  WHERE id=1";
		rs = jdbcTemplateObject.update(sql);
		return rs;
	}
	
	@Override
	public int edit_contact(ContactModel a) {
		int rs = 0;
		//content=StringHelper.replace_html_origin(content);
		String sql = "UPDATE tb_contact SET location_img='"+a.getLocation_img()+"',location_name='"+a.getLocation_name()+"'"
				+ ",office_address='"+a.getOffice_address()+"',show_room_address='"+ a.getShow_room_address() +"',phone='"+a.getPhone()+"',fax='"+a.getFax()+"'  WHERE id=" +a.getId();
		rs = jdbcTemplateObject.update(sql);
		return rs;
	}

	@Override
	public int deletecontact(int id) {
		int rs = 0;
		String sql = "delete from tb_contact where id=?";
		rs = jdbcTemplateObject.update(sql,new Object[] {id});
		return rs;
	}
}
