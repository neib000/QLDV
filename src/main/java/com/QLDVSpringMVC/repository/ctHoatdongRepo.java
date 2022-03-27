package com.QLDVSpringMVC.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.QLDVSpringMVC.model.CtHoatdong;
import com.QLDVSpringMVC.model.CtHoatdongId;
import com.QLDVSpringMVC.model.Taikhoan;

@Repository
public interface ctHoatdongRepo extends JpaRepository<CtHoatdong, CtHoatdongId>{
	List<CtHoatdong> findAllBytaikhoan(Taikhoan tk);
	List<CtHoatdong> findAllByTaikhoanUsername(String username);
	
}
