package web.data.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import web.data.dto.ReviewDTO;

public class ReviewDAO extends JdbcDAO{
	private static ReviewDAO _dao;
	
	private ReviewDAO() {
		// TODO Auto-generated constructor stub
	}
	
	static {
		_dao = new ReviewDAO();
	}
	
	public static ReviewDAO getDAO() {
		return _dao;
	}
	
	public int selectNextNum() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int nextNum = 0;
		try {
			con = getConnection();
			
			String sql = "select review_seq.nextval from dual";
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
	
	//상품아이디로 리뷰 검색
	public List<ReviewDTO> selectProductIdReview(String productId) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<ReviewDTO> reviewList = new ArrayList<ReviewDTO>();
		
		try {
			con = getConnection();
			
			String sql = "select * from review where product_id=? order by review_no desc";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, productId);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				ReviewDTO review = new ReviewDTO();
				review.setReviewNo(rs.getInt("review_no"));
				review.setReviewSubject(rs.getString("review_subject"));
				review.setMemberId(rs.getString("member_id"));
				review.setProductId(rs.getString("product_id"));
				review.setReviewContext(rs.getString("review_context"));
				review.setReviewDate(rs.getString("review_date"));
				reviewList.add(review);
			}
 		} catch (SQLException e) {
			System.out.println("[에러]selectProductIdReview() 메소드의 SQL 오류 = " + e.getMessage());
		} finally {
			close(con, pstmt, rs);
		}
		return reviewList;
	}
	
	//리뷰번호로 리뷰검색 - 단일행
	public ReviewDTO selectReviewNo(int reviewNo) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ReviewDTO review = null;
		
		try {
			con = getConnection();
			
			String sql = "select * from review where review_no=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, reviewNo);
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				review = new ReviewDTO();
				review.setReviewNo(rs.getInt("review_no"));
				review.setReviewSubject(rs.getString("review_subject"));
				review.setMemberId(rs.getString("member_id"));
				review.setProductId(rs.getString("product_id"));
				review.setReviewContext(rs.getString("review_context"));
				review.setReviewDate(rs.getString("review_date"));
			}
 		} catch (SQLException e) {
			System.out.println("[에러]selectProductIdReview() 메소드의 SQL 오류 = " + e.getMessage());
		} finally {
			close(con, pstmt, rs);
		}
		return review;
	}
	
	//회원아이디로 리뷰 검색
	public List<ReviewDTO> selectMemberIdReview(String memberId) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<ReviewDTO> reviewList = new ArrayList<ReviewDTO>();
		
		try {
			con = getConnection();
			
			String sql = "select * from review where member_id=? order by review_no desc";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, memberId);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				ReviewDTO review = new ReviewDTO();
				review.setReviewNo(rs.getInt("review_no"));
				review.setReviewSubject(rs.getString("review_subject"));
				review.setMemberId(rs.getString("member_id"));
				review.setProductId(rs.getString("product_id"));
				review.setReviewContext(rs.getString("review_context"));
				review.setReviewDate(rs.getString("review_date"));
				reviewList.add(review);
			}
 		} catch (SQLException e) {
			System.out.println("[에러]selectMemberIdReview() 메소드의 SQL 오류 = " + e.getMessage());
		} finally {
			close(con, pstmt, rs);
		}
		return reviewList;
	}
	
	/**
	 * 모든 리뷰 갯수 조회
	 * 
	 */
	public int selectReviewCount() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int count=0;
		
		try {
			con = getConnection();
			
			String sql = "SELECT count(*) FROM review";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();

			if(rs.next()) {
				count=rs.getInt(1);
			}
			
 		} catch (SQLException e) {
			System.out.println("[에러]selectReviewCount() 메소드의 SQL 오류 = " + e.getMessage());
		} finally {
			close(con, pstmt, rs);
		}
		return count;
	}
	
	//전체리뷰 검색
	public List<ReviewDTO> selectAllReview() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<ReviewDTO> reviewList = new ArrayList<ReviewDTO>();
		
		try {
			con = getConnection();
			
			String sql = "select * from review order by review_no desc";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				ReviewDTO review = new ReviewDTO();
				review.setReviewNo(rs.getInt("review_no"));
				review.setReviewSubject(rs.getString("review_subject"));
				review.setMemberId(rs.getString("member_id"));
				review.setProductId(rs.getString("product_id"));
				review.setReviewContext(rs.getString("review_context"));
				review.setReviewDate(rs.getString("review_date"));
				reviewList.add(review);
			}
 		} catch (SQLException e) {
			System.out.println("[에러]selectIdReview() 메소드의 SQL 오류 = " + e.getMessage());
		} finally {
			close(con, pstmt, rs);
		}
		return reviewList;
	}
	
	//리뷰 삽입
	public int insertReview(int reviewNo, String memberId, String productId, String reviewContext, String reviewSubject) {
		Connection con = null;
		PreparedStatement pstmt = null;
		int rows = 0;
		
		try {
			con = getConnection();
			 
			String sql = "insert into review values(?,?,?,?,?,SYSDATE)";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, reviewNo);
			pstmt.setString(2, reviewSubject);
			pstmt.setString(3, memberId);
			pstmt.setString(4, productId);
			pstmt.setString(5, reviewContext);
			
			rows = pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("[에러]insertReview() 메소드의 SQL 오류 = " + e.getMessage());
		} finally {
			close(con, pstmt);
		}
		return rows;
	}
	
	//리뷰 삭제
	public int deleteReview(int reviewNo) {
		Connection con = null;
		PreparedStatement pstmt = null;
		int rows = 0;
		
		try {
			con = getConnection();
			 
			String sql = "delete from review where review_no=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, reviewNo);
			
			rows = pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("[에러]deleteReview() 메소드의 SQL 오류 = " + e.getMessage());
		} finally {
			close(con, pstmt);
		}
		return rows;
	}
	
	//리뷰 변경
	public int updateReview(int reviewNo, String reviewContext, String reviewSubject) {
		Connection con = null;
		PreparedStatement pstmt = null;
		int rows = 0;
		
		try {
			con = getConnection();
			 
			String sql = "update review set review_context=?,review_subject=?,review_date=SYSDATE where review_no=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, reviewContext);
			pstmt.setString(2, reviewSubject);
			pstmt.setInt(3, reviewNo);

			rows = pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("[에러]updateReview() 메소드의 SQL 오류 = " + e.getMessage());
		} finally {
			close(con, pstmt);
		}
		return rows;
	}
	
}
