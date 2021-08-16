package web.data.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import web.data.dto.FaqDTO;

public class FaqDAO extends JdbcDAO{
	private static FaqDAO _dao;
	public FaqDAO() {
		// TODO Auto-generated constructor stub
	}
	
	static {
		_dao=new FaqDAO();
	}
	
	public static FaqDAO getDAO() {
		return _dao;
	}
	
	//selectNextNum(): faq_seq
	public int selectNextNum() {
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		int nextNum=0;
		try {
			con=getConnection();
			
			String sql="select faq_seq.nextval from dual";
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
	
	//insertFaq()
	public int insertFaq(FaqDTO faq) {
		Connection con=null;
		PreparedStatement pstmt=null;
		int rows=0;
		try {
			con=getConnection();
			
			String sql="insert into faq values(?,?,?,?)";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, faq.getfType());
			pstmt.setString(2, faq.getfTitle());
			pstmt.setString(3, faq.getfContent());
			pstmt.setInt(4, faq.getfNo());
			
			rows=pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("[에러]insertFaq() 메소드의 SQL 오류 = "+e.getMessage());
		} finally {
			close(con, pstmt);
		}
		return rows;
	}

	
	//deleteFaq()
	public int deleteFaq(int fNo) {
		Connection con=null;
		PreparedStatement pstmt=null;
		int rows=0;
		try {
			con=getConnection();
			
			String sql="delete from faq where f_no=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, fNo);
			rows=pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("[에러]deleteFaq() 메소드의 SQL 오류 = "+e.getMessage());
		} finally {
			close(con, pstmt);
		}
		return rows;
	}
	//updateFaq()
	public int updateFaq(FaqDTO faq) {
		Connection con=null;
		PreparedStatement pstmt=null;
		int rows=0;
		try {
			con=getConnection();
			
			String sql="update faq set f_type=?,f_title=?,f_content=? where f_no=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, faq.getfType());
			pstmt.setString(2, faq.getfTitle());
			pstmt.setString(3, faq.getfContent());
			pstmt.setInt(4, faq.getfNo());
			
			
			rows=pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("[에러]updateFaq() 메소드의 SQL 오류 = "+e.getMessage());
		} finally {
			close(con, pstmt);
		}
		return rows;
	}
	
	//selectFaq()
	public List<FaqDTO> selectFaq(String keyword) {
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<FaqDTO> faqList=new ArrayList<FaqDTO>();
		try {
			con=getConnection();
			
			if(keyword.equals("all")) {
				String sql = "select * from faq order by f_no";
				pstmt=con.prepareStatement(sql);
				
			} else {
				String sql = "select * from faq where f_type=?";
				pstmt=con.prepareStatement(sql);
				pstmt.setString(1, keyword);
			}
			
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				FaqDTO faq=new FaqDTO();
				faq.setfContent(rs.getString("f_content"));
				faq.setfNo(rs.getInt("f_no"));
				faq.setfTitle(rs.getString("f_title"));
				faq.setfType(rs.getString("f_type"));
				
				faqList.add(faq);
			}
		} catch (SQLException e) {
			System.out.println("[에러]selectBoardList() 메소드의 SQL 오류 = "+e.getMessage());
		} finally {
			close(con, pstmt, rs);
		}
		return faqList;
	}
	
	//selectTypeFaq();
	public List<FaqDTO> selectTypeFaq() {
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<FaqDTO> faqList=new ArrayList<FaqDTO>();
		try {
			con=getConnection();
			
			String sql="select distinct f_type from faq";
			pstmt=con.prepareStatement(sql);
			
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				FaqDTO faq=new FaqDTO();
				faq.setfType(rs.getString("f_type"));
				faqList.add(faq);
			}
		} catch (SQLException e) {
			System.out.println("[에러]selectTypeFaq() 메소드의 SQL 오류 = "+e.getMessage());
		} finally {
			close(con, pstmt, rs);
		}
		return faqList;
	}
	
}
