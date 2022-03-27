package com.QLDVSpringMVC.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.QLDVSpringMVC.model.Diemdv;
import com.QLDVSpringMVC.model.DiemdvId;
import com.QLDVSpringMVC.model.Taikhoan;
import com.QLDVSpringMVC.model.TieuchiDiemrenluyen;
@Repository
public interface DiemdvRepository extends JpaRepository<Diemdv, DiemdvId>{
//	List<Diemdv> findAllBytaikhoanAndtieuchiDiemrenluyen(Taikhoan tk,TieuchiDiemrenluyen tc);
	List<Diemdv> findAllBytaikhoan(Taikhoan k);
	List<Diemdv> findAll();
}
