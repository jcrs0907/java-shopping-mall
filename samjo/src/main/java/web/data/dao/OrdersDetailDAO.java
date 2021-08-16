package web.data.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import web.data.dto.OrdersDetailDTO;

public class OrdersDetailDAO extends JdbcDAO {
	private static OrdersDetailDAO _dao;
	
	private OrdersDetailDAO() {
		// TODO Auto-generated constructor stub
	}
	
	static {
		_dao = new OrdersDetailDAO();
	}
	
	public static OrdersDetailDAO getDAO() {
		return _dao;
	}
	
	//ORDERS_DETAIL_SEQ 시퀀스 객체의 다음값(자동 증가값)을 검색하여 반환하는 메소드
	public int selectNextNum() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int nextNum = 0;
		try {
			con = getConnection();
			
			String sql = "select order_detail_seq.nextval from dual";
			pstmt = con.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				nextNum = rs.getInt(1);
			}
		} catch (SQLException e) {
			System.out.println("[에러]selectNextNum() 메소드의 SQL 오류 = " + e.getMessage());
		} finally {
			close(con, pstmt, rs);
		}
		return nextNum;
	}
		
	//order.jsp에서 주문정보를 매개변수로 받아 삽입하고 삽입행을 반환하는 메소드
	public int insertOrderDetail(int orderDetailNo, int orderNo, String productId, int productQuantity) {
		Connection con = null;
		PreparedStatement pstmt = null;
		int rows = 0;
		
		try {
			con = getConnection();
			
			String sql = "insert into orders_detail values(?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, orderDetailNo);
			pstmt.setInt(2, orderNo);
			pstmt.setString(3, productId);
			pstmt.setInt(4, productQuantity);
			
			rows = pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("[에러]insertOrderDetail() 메소드의 오류 = " + e.getMessage());
		} finally {
			close(con, pstmt);
		}
		return rows;
	}
	
	//주문번호를 매개변수로 받아 배송상세정보를 반환하는 메소드 - 다중행 반환
	public List<OrdersDetailDTO> selectOrderDetail(int orderNo) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<OrdersDetailDTO> orderDetailList = new ArrayList<OrdersDetailDTO>();
		
		try {
			con = getConnection();
			
			String sql = "select * from orders_detail where order_no=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, orderNo);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				OrdersDetailDTO orderDetail = new OrdersDetailDTO();
				orderDetail.setOrderDetailNo(rs.getInt("order_detail_no"));
				orderDetail.setOrderNo(rs.getInt("order_no"));
				orderDetail.setProductId(rs.getString("product_id"));
				orderDetail.setProductQuantity(rs.getInt("product_quantity"));
				orderDetailList.add(orderDetail);
			}
		} catch (SQLException e) {
			System.out.println("[에러]selectOrderDetail() 메소드의 오류 = " + e.getMessage());
		} finally {
			close(con, pstmt, rs);
		}
		return orderDetailList;
	}
}
