package com.glorious.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.glorious.model.UserModel;
import com.glorious.service.UserInterface;

@Repository("UserImp")
public class UserImp implements UserInterface {

	@Autowired
	@Qualifier("templatejdbc")
	private JdbcTemplate jdbcTemplateObject;
	
	
	@Override
	public List<UserModel> getAll_Users() {
		// TODO Auto-generated method stub
		String sql="SELECT * FROM tb_user";
		
		List<UserModel> ul=jdbcTemplateObject.query(sql,new Object [] {},BeanPropertyRowMapper.newInstance(UserModel.class));
		
		return ul;
	}


	@Override
	public int insertUser(UserModel u) {
		// TODO Auto-generated method stub
		int result=0;
		
		String sql="INSERT INTO `tb_user`(`username`,`password`,`name`,`phone`,`user_role`,`enabled`) VALUES(?,?,?,?,?,?);";
		
		 result=jdbcTemplateObject.update(sql,new Object[] {u.getUsername(),u.getPassword(),u.getName(),u.getPhone(),u.getUser_role(),u.getEnabled()});
			
		return result;
	}


	@Override
	public int editUser(UserModel u) {
		// TODO Auto-generated method stub
		int result = 0;
		
		String sql = "UPDATE `tb_user` SET `username` = ?,`password` = ?,`name` = ?,`phone` = ?,`user_role` = ?,`enabled` = ? WHERE `username` = ?;";
		
		result = jdbcTemplateObject.update(sql,new Object[]{u.getUsername(),u.getPassword(),u.getName(),u.getPhone(),u.getUser_role(),u.getEnabled(),u.getUsername()});
		return result;
	}


	@Override
	public int doDelete(String username) {
		// TODO Auto-generated method stub
		int result=0;
		String sql="DELETE FROM `tb_user` WHERE username=?;";
		
		result=jdbcTemplateObject.update(sql,new Object[]{username});
		
		return result;
	}


	@Override
	public int activestatus(String ids, int status) {
		// TODO Auto-generated method stub
		String sql = "UPDATE tb_user SET "
				+ " enabled="+status
				+ " WHERE username in ("+ids+")";
		
		int result=jdbcTemplateObject.update(sql);
		return result;
	}

}
