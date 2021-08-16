package web.data.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import web.data.dto.CartDTO;

public class CartDAO extends JdbcDAO{
	private static CartDAO _dao;
	
	public CartDAO() {
		// TODO Auto-generated constructor stub
	}
	
	static {
		_dao=new CartDAO();
	}
	
	public static CartDAO getDAO() {
		return _dao;
	}
	
	//selectNextNum(): next sequence
	public int selectNextNum() {
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		int nextNum=0;
		try {
			con=getConnection();
			
			String sql="select cart_seq.nextval from dual";
			pstmt=con.prepareStatement(sql);
			
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				nextNum=rs.getInt(1);
			}
		} catch (SQLException e) {
			System.out.println("[에러]selectNextNum() 메소드의 SQL 오류 = "+e.getMessage());
		} finally {
			close(con, pstmt, rs);
		}
		return nextNum;
	}
	
	//insertCart()
	public int insertCart(CartDTO cart) {
		Connection con=null;
		PreparedStatement pstmt=null;
		int rows=0;
		try {
			con=getConnection();
			
			String sql="insert into cart values(?,?,?,?,?,?)";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, cart.getcNo());
			pstmt.setString(2, cart.getcMemberId());
			pstmt.setString(3, cart.getcProductId());
			pstmt.setInt(4, cart.getcQuantity());
			pstmt.setInt(5, cart.getcPrice());
			pstmt.setInt(6, cart.getcTotal());
			
			
			rows=pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("[에러]insertCart() 메소드의 SQL 오류 = "+e.getMessage());
		} finally {
			close(con, pstmt);
		}
		return rows;
	}
	
	//deleteCartProduct()
	public int deleteCartProduct(String mId, String pId) {
		Connection con=null;
		PreparedStatement pstmt=null;
		int rows=0;
		try {
			con=getConnection();
			
			String sql="delete from cart where member_id=? and product_id=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, mId);
			pstmt.setString(2, pId);
			
			rows=pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("[에러]deleteCartProduct() 메소드의 SQL 오류 = "+e.getMessage());
		} finally {
			close(con, pstmt);
		}
		return rows;
	}
	
	//clearCart()
	public int clearCartProduct(String mId) {
			Connection con=null;
			PreparedStatement pstmt=null;
			int rows=0;
			try {
				con=getConnection();
				
				String sql="delete from cart where member_id=?";
				pstmt=con.prepareStatement(sql);
				pstmt.setString(1, mId);
				
				rows=pstmt.executeUpdate();
			} catch (SQLException e) {
				System.out.println("[에러]clearCartProduct() 메소드의 SQL 오류 = "+e.getMessage());
			} finally {
				close(con, pstmt);
			}
			return rows;
		}
	
	//updateCart()
	public int updateCart(CartDTO cart) {
		Connection con=null;
		PreparedStatement pstmt=null;
		int rows=0;
		try {
			con=getConnection();
		
			String sql="update cart set cart_price=?, cart_quantity=?, cart_total=? WHERE member_id=? AND product_id=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, cart.getcPrice());
			pstmt.setInt(2, cart.getcQuantity());
			pstmt.setInt(3, cart.getcTotal());
			pstmt.setString(4, cart.getcMemberId());
			pstmt.setString(5, cart.getcProductId());
			
			rows=pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("[에러]updateCart() 메소드의 SQL 오류 = "+e.getMessage());
		} finally {
			close(con, pstmt);
		}
		return rows;
	}
	
	//selectCart()
	public List<CartDTO> selectCart(String mId) {
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<CartDTO> cartList=new ArrayList<CartDTO>();
		try {
			con=getConnection();
			
			String sql = "select * from cart where member_id=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, mId);
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				CartDTO cart =new CartDTO();
				cart.setcNo(rs.getInt("cart_no"));
				cart.setcMemberId(rs.getString("member_id"));
				cart.setcProductId(rs.getString("product_id"));
				cart.setcQuantity(rs.getInt("cart_quantity"));
				cart.setcPrice(rs.getInt("cart_price"));
				cart.setcTotal(rs.getInt("cart_total"));
				cartList.add(cart);
			}
		} catch (SQLException e) {
			System.out.println("[에러]selectCart() 메소드의 SQL 오류 = "+e.getMessage());
		} finally {
			close(con, pstmt, rs);
		}
		return cartList;
	}
}
