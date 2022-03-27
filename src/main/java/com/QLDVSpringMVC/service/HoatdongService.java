package com.QLDVSpringMVC.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.QLDVSpringMVC.model.Hoatdong;
import com.QLDVSpringMVC.repository.HoatdongRepository;

@Service
public class HoatdongService {
	@Autowired
	HoatdongRepository hdres;
	public List<Hoatdong> findAll()
	{
		return hdres.findAllByTrangthai(true);
	}
	
	public List<Hoatdong> findAllL()
	{
		return hdres.findAll();
	}

	public Hoatdong find(int id) {
		return hdres.findOne(id);
	}
	
	public Hoatdong save(Hoatdong ld) {
		return hdres.save(ld);
	}
	
	public void delete(int id) {
		hdres.delete(id);
		
	}
	public long count() {
	    return hdres.count();
	   
	}
	public List<Hoatdong> findDest()
	{
		return hdres.findAllByOrderByMaHdDesc();
	}
}
