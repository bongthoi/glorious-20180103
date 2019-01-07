package com.glorious.service;

import java.util.List;

import com.glorious.model.DepartmentModel;

public interface DepartmentInterface {

	
	List<DepartmentModel> getAllDepartments() ;

	int insertDepartment(DepartmentModel d);

	int edit_department(DepartmentModel d);

	int delete_department(int id);
}
