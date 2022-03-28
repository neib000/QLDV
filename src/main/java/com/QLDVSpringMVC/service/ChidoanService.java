package com.QLDVSpringMVC.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.QLDVSpringMVC.model.Chidoan;
import com.QLDVSpringMVC.model.Khoa;
import com.QLDVSpringMVC.repository.ChidoanRepository;

@Service
public class ChidoanService {
	@Autowired
	ChidoanRepository cdRepo;
	public List<Chidoan> findAll() {
		return cdRepo.findAllByTrangthai(true);
	}
	public List<Chidoan> findAllMakhoa(int makhoa){
		return cdRepo.findAllByTrangthaiAndKhoaMakhoa(true, makhoa);
	}
	public List<Chidoan> findAllChidoantruong(String chidoantruong){
		return cdRepo.findAllByTrangthaiAndChidoantruong(true, chidoantruong);
	}
}
