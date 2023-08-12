package com.trungtamjava.model;

import java.util.Date;

public class KhachHang {
	private String idKH;
	private String maKH;
	private String tenKH;
	private Date ngaySinh;
	private String soDienThoai;
	private String diaChi;

	public KhachHang() {
		// TODO Auto-generated constructor stub
	}

	public KhachHang(String idKH, String maKH, String tenKH, Date ngaySinh, String soDienThoai, String diaChi) {
		super();
		this.idKH = idKH;
		this.maKH = maKH;
		this.tenKH = tenKH;
		this.ngaySinh = ngaySinh;
		this.soDienThoai = soDienThoai;
		this.diaChi = diaChi;
	}

	public String getIdKH() {
		return idKH;
	}

	public void setIdKH(String idKH) {
		this.idKH = idKH;
	}

	public String getMaKH() {
		return maKH;
	}

	public void setMaKH(String maKH) {
		this.maKH = maKH;
	}

	public String getTenKH() {
		return tenKH;
	}

	public void setTenKH(String tenKH) {
		this.tenKH = tenKH;
	}

	public Date getNgaySinh() {
		return ngaySinh;
	}

	public void setNgaySinh(Date ngaySinh) {
		this.ngaySinh = ngaySinh;
	}

	public String getSoDienThoai() {
		return soDienThoai;
	}

	public void setSoDienThoai(String soDienThoai) {
		this.soDienThoai = soDienThoai;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

}
