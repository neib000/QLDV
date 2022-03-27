package com.QLDVSpringMVC.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

import com.QLDVSpringMVC.model.Tieuchi;
import com.QLDVSpringMVC.repository.TieuchiRepository;



@Service
public class TieuchiService {
@Autowired
TieuchiRepository tcR;
public List<Tieuchi> findAll() 
{
	return	tcR.findAllBytrangthai(true);
}
}
