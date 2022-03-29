package com.QLDVSpringMVC.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.QLDVSpringMVC.model.Taikhoan;
import com.QLDVSpringMVC.repository.TaikhoanRepository;

@Service
public class TaikhoanService {
	@Autowired
	private TaikhoanRepository repo;

	public Taikhoan findOneByUsernameAndKhaitru(String username, boolean khaitru) {
		return repo.findOneByUsernameAndKhaitru(username, khaitru);
	}

	public Taikhoan findOneByUsernameAndKhaitruAndChidoanMachidoan(String username, boolean khaitru,int machidoan)
	{
			return repo.findOneByUsernameAndKhaitruAndChidoanMachidoan(username, khaitru, machidoan);
	}
	public Taikhoan findOneByUsernameAndKhaitruAndChidoanChidoantruong(String username, boolean khaitru,String machidoan)
	{
			return repo.findOneByUsernameAndKhaitruAndChidoanChidoantruong(username, khaitru, machidoan);
	}
	public List<Taikhoan> findByMaChiDoan(int machidoan) {
		return repo.findAllByChidoanMachidoan(machidoan);
	}

	public Taikhoan findByUsername(String matk) {
		return repo.findOne(matk);
	}

	public Taikhoan save(Taikhoan tk) {
		return repo.save(tk);
	}

	public void delete(String matk) {
		repo.delete(matk);
	}

	public List<Taikhoan> findAllByMachidoanAndChucvuMachucvu(int machidoan, int machucvu) {
		return repo.findAllByChidoanMachidoanAndChucvuMachucvu(machidoan, machucvu);
	}
}
