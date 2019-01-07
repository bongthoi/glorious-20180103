package com.glorious.ctrl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;




import com.glorious.model.angular_people;
import com.glorious.service.PeopleInterface;


@RestController
@RequestMapping(value="people/api")
public class PeopleAPI {
	
	@Autowired
	@Qualifier("PeopleImp")	
	private PeopleInterface peopleImp;
	
	
	@RequestMapping(value="/get_all",method = RequestMethod.GET,produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public List<angular_people> get_all(){
		
		System.out.print(peopleImp.get_all_angular_people().get(1).getImg_content());
		return peopleImp.get_all_angular_people();
	}
	
	
}