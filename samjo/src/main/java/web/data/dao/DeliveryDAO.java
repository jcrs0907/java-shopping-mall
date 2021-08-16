package web.data.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import web.data.dto.DeliveryDTO;

public class DeliveryDAO extends JdbcDAO {
	private static DeliveryDAO _dao;
	
	private DeliveryDAO() {
		// TODO Auto-generated constructor stub
	}
	
	static {
		_dao = new DeliveryDAO();
	}
	
	public static DeliveryDAO getDAO() {
		return _dao;
	}
	
	//order.jsp에서 주문정보를 매개변수로 받아 삽입하고 삽입행을 반환하는 메소드
	public int insertOrderDetail(int orderNo, String senderName, String senderPhone, String recipientName
			, String recipientPhone, String zipcode, String address1, String address2, String orderMessage) {
		Connection con = null;
		PreparedStatement pstmt = null;
		int rows = 0;
		
		try {
			con = getConnection();
			
			String sql = "insert into delivery values(?,?,?,?,?,?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, orderNo);
			pstmt.setString(2, senderName);
			pstmt.setString(3, senderPhone);
			pstmt.setString(4, recipientName);
			pstmt.setString(5, recipientPhone);
			pstmt.setString(6, zipcode);
			pstmt.setString(7, address1);
			pstmt.setString(8, address2);
			pstmt.setString(9, orderMessage);
			
			rows = pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("[에러]insertOrderDetail() 메소드의 오류 = " + e.getMessage());
		} finally {
			close(con, pstmt);
		}
		return rows;
	}
	
	//주문번호를 매개변수로 받아 배송정보를 반환하는 메소드
	public DeliveryDTO selectDelivery(int orderNo) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DeliveryDTO delivery = null;
		
		try {
			con = getConnection();
			
			String sql = "select * from delivery where order_no=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, orderNo);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				delivery = new DeliveryDTO();
				delivery.setOrderNo(rs.getInt("order_no"));
				delivery.setSenderName(rs.getString("sender_name"));
				delivery.setSenderPhone(rs.getString("sender_phone"));
				delivery.setRecipientName(rs.getString("recipient_name"));
				delivery.setRecipientPhone(rs.getString("recipient_phone"));
				delivery.setZipcode(rs.getString("zipcode"));
				delivery.setAddress1(rs.getString("address1"));
				delivery.setAddress2(rs.getString("address2"));
				delivery.setOrderMessage(rs.getString("order_message"));
			}
		} catch (SQLException e) {
			System.out.println("[에러]selectDelivery() 메소드의 오류 = " + e.getMessage());
		} finally {
			close(con, pstmt, rs);
		}
		return delivery;
	}
}
