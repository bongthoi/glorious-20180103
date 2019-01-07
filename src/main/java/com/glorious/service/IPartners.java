package com.glorious.service;

import java.util.List;

import com.glorious.model.PartnersModel;



public interface IPartners {

	List<PartnersModel> get_l_pPartners(int start ,int limit);
	int get_total_recore();
	int insertclient(PartnersModel m);
	int updateclient(PartnersModel m);
	int deleteclient(String ids);
	PartnersModel get_Partnersbyid(int id);
	List<PartnersModel> get_pPartners_listava();
}
