package com.trungtamjava.interfaces;

import java.util.List;

import com.trungtamjava.model.KhachHang;

public interface IKhachHangService {
	public List<KhachHang> getAllKhachHang();

	public KhachHang getKhachHangByID(String id);

	public void insertKhachHang(KhachHang kh);

	public void updatetKhachHang(KhachHang kh,String id);

	public void deleteKhachHang(String id);
}
