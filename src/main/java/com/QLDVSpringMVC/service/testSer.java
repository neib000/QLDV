package com.QLDVSpringMVC.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.QLDVSpringMVC.model.Loaidiem;
import com.QLDVSpringMVC.repository.testRe;

@Service
public class testSer {
	@Autowired
	testRe tR;
	public List<Loaidiem> findAll(){
		return tR.findAll();
	}
	
	public Loaidiem find(int id) {
		return tR.findOne(id);
	}
	
	public Loaidiem save(Loaidiem ld) {
		return tR.save(ld);
	}
	
	public void delete(int id) {
		 tR.delete(id);
		
	}
	
}
