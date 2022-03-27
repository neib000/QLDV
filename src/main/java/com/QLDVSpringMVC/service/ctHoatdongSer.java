package com.QLDVSpringMVC.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.QLDVSpringMVC.model.CtHoatdong;
import com.QLDVSpringMVC.model.Taikhoan;
import com.QLDVSpringMVC.repository.ctHoatdongRepo;

@Service
public class ctHoatdongSer{
	@Autowired
	ctHoatdongRepo cthdRepo;
//	@SuppressWarnings("unchecked")
//	public List<CtHoatdong> findAllByIdMaTk(String matk)
//	{
//		return (List<CtHoatdong>)cthdRepo.findAllByIdMaTk(matk);
//	}
	public List<CtHoatdong> findAllBytaikhoan(Taikhoan tk)
	{
		return (List<CtHoatdong>)cthdRepo.findAllBytaikhoan(tk);
	}
	public List<CtHoatdong> findAllByTaikhoanUsername(String username)
	{
		return (List<CtHoatdong>)cthdRepo.findAllByTaikhoanUsername(username);
	}
}
