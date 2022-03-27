package com.QLDVSpringMVC.model;
// Generated 22-May-2021, 2:33:20 pm by Hibernate Tools 5.2.12.Final

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Khoa generated by hbm2java
 */
@Entity
@Table(name = "khoa", catalog = "quanlydoanvien")
public class Khoa implements java.io.Serializable {

	private int makhoa;
	private String tenKhoa;
	private String sdt;
	private Boolean trangthai;
	private Set<Chidoan> chidoans = new HashSet<Chidoan>(0);

	public Khoa() {
	}

	public Khoa(int makhoa) {
		this.makhoa = makhoa;
	}

	public Khoa(int makhoa, String tenKhoa, String sdt, Boolean trangthai, Set<Chidoan> chidoans) {
		this.makhoa = makhoa;
		this.tenKhoa = tenKhoa;
		this.sdt = sdt;
		this.trangthai = trangthai;
		this.chidoans = chidoans;
	}

	@Id

	@Column(name = "Makhoa", unique = true, nullable = false)
	public int getMakhoa() {
		return this.makhoa;
	}

	public void setMakhoa(int makhoa) {
		this.makhoa = makhoa;
	}

	@Column(name = "TenKhoa", length = 40)
	public String getTenKhoa() {
		return this.tenKhoa;
	}

	public void setTenKhoa(String tenKhoa) {
		this.tenKhoa = tenKhoa;
	}

	@Column(name = "SDT", length = 13)
	public String getSdt() {
		return this.sdt;
	}

	public void setSdt(String sdt) {
		this.sdt = sdt;
	}

	@Column(name = "Trangthai")
	public Boolean getTrangthai() {
		return this.trangthai;
	}

	public void setTrangthai(Boolean trangthai) {
		this.trangthai = trangthai;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "khoa")
	public Set<Chidoan> getChidoans() {
		return this.chidoans;
	}

	public void setChidoans(Set<Chidoan> chidoans) {
		this.chidoans = chidoans;
	}

}