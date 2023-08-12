package com.trungtamjava.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.trungtamjava.interfaces.IKhachHangRepository;
import com.trungtamjava.model.KhachHang;

public class KhachHangDAO implements IKhachHangRepository {

	private Connection connection;

	public KhachHangDAO() {
		connection = JDBCConnection.getConnection();
	}

	@Override
	public List<KhachHang> getAllKhachHang() {
		List<KhachHang> list = new ArrayList();
		String sql = "SELECT Id,Ma,Ten,NgaySinh,Sdt,DiaChi FROM KhachHang";
		try {
			PreparedStatement ps = connection.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				String idKH = rs.getString("Id");
				String maKH = rs.getString("Ma");
				String tenKH = rs.getString("Ten");
				Date ngaySinh = rs.getDate("NgaySinh");
				String sdt = rs.getString("Sdt");
				String diaChi = rs.getString("DiaChi");

				KhachHang kh = new KhachHang(idKH, maKH, tenKH, ngaySinh, sdt, diaChi);
				list.add(kh);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	@Override
	public void insertKhachHang(KhachHang kh) {
		String sql = "INSERT INTO KhachHang(MA,Ten,NgaySinh,Sdt,DiaChi) VALUES (?,?,?,?,?)";

		try {
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setString(1, kh.getMaKH());
			ps.setString(2, kh.getTenKH());
			ps.setDate(3, new java.sql.Date(kh.getNgaySinh().getTime()));
			ps.setString(4, kh.getSoDienThoai());
			ps.setString(5, kh.getDiaChi());
			int resault = ps.executeUpdate();
			System.out.println(resault);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	@Override
	public void updatetKhachHang(KhachHang kh, String id) {
		String sql = "UPDATE KhachHang SET Ma = ?, Ten = ?, NgaySinh = ?,Sdt = ?, DiaChi = ? where Id = ?";

		try {
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setString(1, kh.getMaKH());
			ps.setString(2, kh.getTenKH());
			ps.setDate(3, new java.sql.Date(kh.getNgaySinh().getTime()));
			ps.setString(4, kh.getSoDienThoai());
			ps.setString(5, kh.getDiaChi());
			ps.setString(6, id);
			int resault = ps.executeUpdate();
			System.out.println(resault);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	@Override
	public void deleteKhachHang(String id) {
		String sql = "DELETE KhachHang WHERE ID = ?";

		try {
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setString(1, id);
			int resault = ps.executeUpdate();
			System.out.println(resault);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	@Override
	public KhachHang getKhachHangByID(String id) {

		String sql = "SELECT  Id,Ma,Ten,NgaySinh,Sdt,DiaChi FROM KhachHang where id = ?";
		try {
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setString(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				String idKH = rs.getString("Id");
				String maKH = rs.getString("Ma");
				String tenKH = rs.getString("Ten");
				Date ngaySinh = rs.getDate("NgaySinh");
				String sdt = rs.getString("Sdt");
				String diaChi = rs.getString("DiaChi");

				KhachHang kh = new KhachHang(idKH, maKH, tenKH, ngaySinh, sdt, diaChi);
				return kh;

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;
	}

}
