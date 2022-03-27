package com.QLDVSpringMVC.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.QLDVSpringMVC.model.Tintuc;

@Repository
public interface TintucRepository extends JpaRepository<Tintuc, Integer>
{
	List<Tintuc> findAll();
}
