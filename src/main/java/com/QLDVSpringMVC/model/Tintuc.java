package com.QLDVSpringMVC.model;
// Generated 22-May-2021, 2:33:20 pm by Hibernate Tools 5.2.12.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * Tintuc generated by hbm2java
 */
@Entity
@Table(name = "tintuc", catalog = "quanlydoanvien")
public class Tintuc implements java.io.Serializable {

	private int matin;
	private Taikhoan taikhoan;
	private String tenNd;
	private String loai;
	private String ngaytao;
	private String ngaydang;
	private String noidung;
	private String hinhanh;
	private Boolean trangthai;
	private String slug;

	public Tintuc() {
	}

	public Tintuc(int matin) {
		this.matin = matin;
	}

	public Tintuc(int matin, Taikhoan taikhoan, String tenNd, String loai, String ngaytao, String ngaydang,
			String noidung, String hinhanh, Boolean trangthai, String slug) {
		this.matin = matin;
		this.taikhoan = taikhoan;
		this.tenNd = tenNd;
		this.loai = loai;
		this.ngaytao = ngaytao;
		this.ngaydang = ngaydang;
		this.noidung = noidung;
		this.hinhanh = hinhanh;
		this.trangthai = trangthai;
		this.slug = slug;
	}

	@Id

	@Column(name = "Matin", unique = true, nullable = false)
	public int getMatin() {
		return this.matin;
	}

	public void setMatin(int matin) {
		this.matin = matin;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Nguoitao")
	public Taikhoan getTaikhoan() {
		return this.taikhoan;
	}

	public void setTaikhoan(Taikhoan taikhoan) {
		this.taikhoan = taikhoan;
	}

	@Column(name = "TenND", length = 200)
	public String getTenNd() {
		return this.tenNd;
	}

	public void setTenNd(String tenNd) {
		this.tenNd = tenNd;
	}

	@Column(name = "Loai", length = 20)
	public String getLoai() {
		return this.loai;
	}

	public void setLoai(String loai) {
		this.loai = loai;
	}

	@Column(name = "Ngaytao", length = 10)
	public String getNgaytao() {
		return this.ngaytao;
	}

	public void setNgaytao(String ngaytao) {
		this.ngaytao = ngaytao;
	}

	@Column(name = "Ngaydang", length = 10)
	public String getNgaydang() {
		return this.ngaydang;
	}

	public void setNgaydang(String ngaydang) {
		this.ngaydang = ngaydang;
	}

	@Column(name = "Noidung", length = 1000)
	public String getNoidung() {
		return this.noidung;
	}

	public void setNoidung(String noidung) {
		this.noidung = noidung;
	}

	@Column(name = "Hinhanh", length = 30)
	public String getHinhanh() {
		return this.hinhanh;
	}

	public void setHinhanh(String hinhanh) {
		this.hinhanh = hinhanh;
	}

	@Column(name = "Trangthai")
	public Boolean getTrangthai() {
		return this.trangthai;
	}

	public void setTrangthai(Boolean trangthai) {
		this.trangthai = trangthai;
	}

	@Column(name = "slug", length = 30)
	public String getSlug() {
		return this.slug;
	}

	public void setSlug(String slug) {
		this.slug = slug;
	}

}
