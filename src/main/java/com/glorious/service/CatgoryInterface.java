package com.glorious.service;

import java.util.List;

import com.glorious.model.CatgoryModel;

public interface CatgoryInterface {

	public List<CatgoryModel> getAll_Catgory();

	public int insertCatgory(CatgoryModel c);

	public int DeleteCatgory(String ids);

	public int update_catgory(CatgoryModel c);

	public CatgoryModel getcatogoryById(int category);

}
