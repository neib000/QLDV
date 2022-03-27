package com.QLDVSpringMVC.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.QLDVSpringMVC.model.Loaidiem;

@Repository
public interface testRe extends JpaRepository<Loaidiem, Integer>{
	List<Loaidiem> findAll();
//	Loaidiem deleteBymaloaidiem(int i);
}
