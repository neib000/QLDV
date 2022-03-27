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
 * Hoatdong generated by hbm2java
 */
@Entity
@Table(name = "hoatdong", catalog = "quanlydoanvien")
public class Hoatdong implements java.io.Serializable {

	private int maHd;
	private String tenHd;
	private String ngaytao;
	private Boolean trangthai;
	private String slug;
	private String hinhanh;
	private Set<CtHoatdong> ctHoatdongs = new HashSet<CtHoatdong>(0);

	public Hoatdong() {
	}

	public Hoatdong(int maHd) {
		this.maHd = maHd;
	}

	public Hoatdong(int maHd, String tenHd, String ngaytao, Boolean trangthai, String slug, String hinhanh,
			Set<CtHoatdong> ctHoatdongs) {
		this.maHd = maHd;
		this.tenHd = tenHd;
		this.ngaytao = ngaytao;
		this.trangthai = trangthai;
		this.slug = slug;
		this.hinhanh = hinhanh;
		this.ctHoatdongs = ctHoatdongs;
	}

	@Id

	@Column(name = "MaHD", unique = true, nullable = false)
	public int getMaHd() {
		return this.maHd;
	}

	public void setMaHd(int maHd) {
		this.maHd = maHd;
	}

	@Column(name = "TenHD", length = 30)
	public String getTenHd() {
		return this.tenHd;
	}

	public void setTenHd(String tenHd) {
		this.tenHd = tenHd;
	}

	@Column(name = "Ngaytao", length = 10)
	public String getNgaytao() {
		return this.ngaytao;
	}

	public void setNgaytao(String ngaytao) {
		this.ngaytao = ngaytao;
	}

	@Column(name = "Trangthai")
	public Boolean getTrangthai() {
		return this.trangthai;
	}

	public void setTrangthai(Boolean trangthai) {
		this.trangthai = trangthai;
	}

	@Column(name = "Slug", length = 30)
	public String getSlug() {
		return this.slug;
	}

	public void setSlug(String slug) {
		this.slug = slug;
	}

	@Column(name = "Hinhanh", length = 30)
	public String getHinhanh() {
		return this.hinhanh;
	}

	public void setHinhanh(String hinhanh) {
		this.hinhanh = hinhanh;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "hoatdong")
	public Set<CtHoatdong> getCtHoatdongs() {
		return this.ctHoatdongs;
	}

	public void setCtHoatdongs(Set<CtHoatdong> ctHoatdongs) {
		this.ctHoatdongs = ctHoatdongs;
	}

}
