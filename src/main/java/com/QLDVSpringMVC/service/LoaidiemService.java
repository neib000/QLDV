package com.QLDVSpringMVC.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.QLDVSpringMVC.model.Loaidiem;
import com.QLDVSpringMVC.repository.LoaidiemRepository;

@Service
public class LoaidiemService {
@Autowired
LoaidiemRepository ldR;
	public List<Loaidiem> findAll(){
		return ldR.findAll();
	}
	public List<Loaidiem> findASC(){
		return ldR.findAllByOrderByMaloaidiemAsc();
	}
	public List<Loaidiem> findDESC(){
		return ldR.findAllByOrderByMaloaidiemDesc();
	}
}
