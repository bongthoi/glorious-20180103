package com.glorious.service;

import java.util.List;

import com.glorious.model.PeopleModel;
import com.glorious.model.angular_people;

public interface PeopleInterface {

	 List<PeopleModel> get_all_peoples();

	int insertPeople(PeopleModel p);

	int deletePeople(int id);

	int editPeople(PeopleModel p);

	int activestatus(String ids, int status);

	int get_total_recore();

	List<PeopleModel> find(int start, int limit);

	List<angular_people> get_all_angular_people();

}
