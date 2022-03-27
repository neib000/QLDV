package com.QLDVSpringMVC.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.QLDVSpringMVC.model.Doanphi;
@Repository
public interface DoanphiRepository extends JpaRepository<Doanphi,Integer>{
	List<Doanphi> findAllByNamhoc(String namhoc);
}
