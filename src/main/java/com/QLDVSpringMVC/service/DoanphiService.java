package com.QLDVSpringMVC.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.QLDVSpringMVC.model.Doanphi;
import com.QLDVSpringMVC.repository.DoanphiRepository;
@Service
public class DoanphiService{
	@Autowired
	DoanphiRepository repo;
	public List<Doanphi> findAllByNamhoc(String namhoc)
	{
		return repo.findAllByNamhoc(namhoc);
	}
}
