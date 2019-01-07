package com.glorious.service;

import java.util.List;

import com.glorious.model.SlideModel;

public interface SlideInterface {

	List<SlideModel> get_all_slides();

	int insert_slide(SlideModel s);

	int edit_slide(SlideModel s);

	int deleteslide(int id);


}
