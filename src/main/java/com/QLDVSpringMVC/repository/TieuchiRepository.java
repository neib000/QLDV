package com.QLDVSpringMVC.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.QLDVSpringMVC.model.Tieuchi;


@Repository
public interface TieuchiRepository extends JpaRepository<Tieuchi, Integer> {
	List<Tieuchi> findAllBytrangthai(boolean b);
		
	}

