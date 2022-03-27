package com.QLDVSpringMVC.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.QLDVSpringMVC.model.Hoatdong;

@Repository
public interface HoatdongRepository extends JpaRepository<Hoatdong, Integer>{
	List<Hoatdong> findAllByTrangthai(boolean b);
	
	List<Hoatdong> findAllByOrderByMaHdDesc();
}
