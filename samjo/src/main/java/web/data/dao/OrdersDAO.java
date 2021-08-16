package web.data.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import web.data.dto.OrdersDTO;

public class OrdersDAO extends JdbcDAO {
	private static OrdersDAO _dao;
	
	private OrdersDAO() {
		// TODO Auto-generated constructor stub
	}
	
	static {
		_dao = new OrdersDAO();
	}
	
	public static OrdersDAO getDAO() {
		return _dao;
	}
	
	//ORDERS_SEQ 시퀀스 객체의 다음값(자동 증가값)을 검색하여 반환하는 메소드
	public int selectNextNum() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int nextNum = 0;
		try {
			con = getConnection();
			
			String sql = "select order_seq.nextval from dual";
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
	public int insertOrder(int orderNo, String memberId, String payMethod) {
		Connection con = null;
		PreparedStatement pstmt = null;
		int rows = 0;
		
		try {
			con = getConnection();
			
			//결제수단이 무통장입금이면 입금대기, 나머지면 결제완료
			if(payMethod.equals("무통장입금")) {
				String sql = "insert into orders values(?,?,SYSDATE,?,0,1)";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, orderNo);
				pstmt.setString(2, memberId);
				pstmt.setString(3, payMethod);
			} else {
				String sql = "insert into orders values(?,?,SYSDATE,?,1,1)";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, orderNo);
				pstmt.setString(2, memberId);
				pstmt.setString(3, payMethod);
			}
			
			rows = pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("[에러]insertOrder() 메소드의 오류 = " + e.getMessage());
		} finally {
			close(con, pstmt);
		}
		return rows;
	}
	
	//전체 주문정보를 검색하여 반환하는 메소드
	public List<OrdersDTO> selectAllOrder() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<OrdersDTO> orderList = new ArrayList<OrdersDTO>();
		
		try {
			con = getConnection();
			
			String sql = "select * from orders order by order_no desc";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				OrdersDTO order = new OrdersDTO();
				order.setOrderNo(rs.getInt("order_no"));
				order.setMemberId(rs.getString("member_id"));
				order.setOrderDate(rs.getString("order_date"));
				order.setPayMethod(rs.getString("pay_method"));
				order.setOrderStatus(rs.getInt("order_status"));
				order.setOrderBoardStatus(rs.getInt("order_board_status"));
				orderList.add(order);
			}
		} catch (SQLException e) {
			System.out.println("[에러]selectAllOrder() 메소드의 오류 = " + e.getMessage());
		} finally {
			close(con, pstmt, rs);
		}
		return orderList;
	}
	
	//주문번호로 주문정보를 검색하여 반환하는 메소드
	public OrdersDTO selectOrder(int orderNo) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		OrdersDTO order = null;
		
		try {
			con = getConnection();
			
			String sql = "select * from orders where order_no=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, orderNo);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				order = new OrdersDTO();
				order.setOrderNo(rs.getInt("order_no"));
				order.setMemberId(rs.getString("member_id"));
				order.setOrderDate(rs.getString("order_date"));
				order.setPayMethod(rs.getString("pay_method"));
				order.setOrderStatus(rs.getInt("order_status"));
				order.setOrderBoardStatus(rs.getInt("order_board_status"));
			}
		} catch (SQLException e) {
			System.out.println("[에러]selectOrder() 메소드의 오류 = " + e.getMessage());
		} finally {
			close(con, pstmt, rs);
		}
		return order;
	}
	
	//주문번호로 주문정보를 검색하여 반환하는 메소드
	public List<OrdersDTO>  selectIdOrder(String memberId) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<OrdersDTO> orderList = new ArrayList<OrdersDTO>();
		
		try {
			con = getConnection();
			
			String sql = "select * from orders where member_id=? order by order_no desc";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, memberId);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				OrdersDTO order = new OrdersDTO();
				order.setOrderNo(rs.getInt("order_no"));
				order.setMemberId(rs.getString("member_id"));
				order.setOrderDate(rs.getString("order_date"));
				order.setPayMethod(rs.getString("pay_method"));
				order.setOrderStatus(rs.getInt("order_status"));
				order.setOrderBoardStatus(rs.getInt("order_board_status"));
				orderList.add(order);
			}
		} catch (SQLException e) {
			System.out.println("[에러]selectIdOrder() 메소드의 오류 = " + e.getMessage());
		} finally {
			close(con, pstmt, rs);
		}
		return orderList;
	}
	
	//관리자페이지 - 주문 상태를 변경하는 메소드
	public int updateOrderStatus(int orderNo, int orderStatus, int orderBoardStatus) {
		Connection con = null;
		PreparedStatement pstmt = null;
		int rows = 0;
		
		try {
			con = getConnection();
			
			if(orderBoardStatus == 9) {
				String sql = "update orders set order_status=? where order_no=?";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, orderStatus);
				pstmt.setInt(2, orderNo);
			} else {
				String sql = "update orders set order_board_status=? where order_no=?";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, orderBoardStatus);
				pstmt.setInt(2, orderNo);
			}
			
			rows = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			System.out.println("[에러]updateOrderStatus() 메소드의 오류 = " + e.getMessage());
		} finally {
			close(con, pstmt);
		}
		return rows;
	}
}
