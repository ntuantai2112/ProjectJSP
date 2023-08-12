package com.trungtamjava.service;

import java.util.List;

import com.trungtamjava.dao.KhachHangDAO;
import com.trungtamjava.interfaces.IKhachHangService;
import com.trungtamjava.model.KhachHang;

public class KhachHangService implements IKhachHangService {

	private KhachHangDAO khDAO;

	public KhachHangService() {
		khDAO = new KhachHangDAO();
	}

	@Override
	public List<KhachHang> getAllKhachHang() {
		List<KhachHang> listKH = khDAO.getAllKhachHang();
		return listKH;
	}

	@Override
	public KhachHang getKhachHangByID(String id) {
		KhachHang kh = khDAO.getKhachHangByID(id);
		return kh;
	}

	@Override
	public void insertKhachHang(KhachHang kh) {
		khDAO.insertKhachHang(kh);

	}

	@Override
	public void updatetKhachHang(KhachHang kh, String id) {
		khDAO.updatetKhachHang(kh, id);

	}

	@Override
	public void deleteKhachHang(String id) {
		khDAO.deleteKhachHang(id);

	}

}
