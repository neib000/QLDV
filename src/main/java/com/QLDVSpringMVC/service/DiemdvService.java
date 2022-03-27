package com.QLDVSpringMVC.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.QLDVSpringMVC.model.Diemdv;
import com.QLDVSpringMVC.model.Taikhoan;
import com.QLDVSpringMVC.model.TieuchiDiemrenluyen;
import com.QLDVSpringMVC.repository.DiemdvRepository;
@Service
public class DiemdvService {
	@Autowired
	DiemdvRepository ddvres;
	public List<Diemdv> findAllBytaikhoan(Taikhoan k)
	{
//		return ddvres.findAllBytaikhoanAndtieuchiDiemrenluyen(tk,tc);
		return ddvres.findAllBytaikhoan(k);
	}
	public Diemdv save(Diemdv ddv) {
		return ddvres.save(ddv);
	}
	public List<Diemdv> findAll() {
		return ddvres.findAll();
	}
}
