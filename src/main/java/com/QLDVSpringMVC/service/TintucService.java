package com.QLDVSpringMVC.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.QLDVSpringMVC.model.Tintuc;
import com.QLDVSpringMVC.repository.TintucRepository;

@Service
public class TintucService
{
	@Autowired
	TintucRepository tintucRe;
	public List<Tintuc> findAll()
	{
		return tintucRe.findAll();
	}
	public Tintuc find(int id) {
		return tintucRe.findOne(id);
	}
	
	public Tintuc save(Tintuc ld) {
		return tintucRe.save(ld);
	}
	
	public void delete(int id) {
		tintucRe.delete(id);
		
	}
	public long count() {
		return tintucRe.count();
	}
}
