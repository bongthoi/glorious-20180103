package com.glorious.service;

import java.util.List;

import com.glorious.model.UserModel;

public interface UserInterface {

	List<UserModel> getAll_Users();

	int insertUser(UserModel u);

	int editUser(UserModel u);

	int doDelete(String username);

	int activestatus(String ids, int status);


}
