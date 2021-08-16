package web.data.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import web.data.dto.NoticeDTO;
import web.data.dto.ProductDTO;

public class NoticeDAO extends JdbcDAO {
	private static NoticeDAO _dao;{
		
	}
	
	private NoticeDAO() {
		// TODO Auto-generated constructor stub
	}
	
	static {
		_dao=new NoticeDAO();
	}
	
	public static NoticeDAO getDao() {
		return _dao;
		
	}
	//공지사항 입력
	//numbering 수정했습니다. - 문재욱
	public int insertNotice(NoticeDTO notice) {
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		int rows=0;
		
		try {
			con=getConnection();
			
			String sql="insert into notice values(notice_seq.nextval, ?, sysdate, ?)";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, notice.getnTitle());
			pstmt.setString(2, notice.getnContent());
			
			rows=pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("[에러]insertNotice() 메소드의 SQL 오류 = "+e.getMessage());
		} finally {
			close(con, pstmt, rs);
		} 
		return rows;
	}
	
	public int updateNotice(NoticeDTO notice) {
		Connection con=null;
		PreparedStatement pstmt=null;
		int rows=0;
		try {
			con=getConnection();
			String sql="update notice set n_title=?, n_content=? where=n_num?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, notice.getnTitle());
			pstmt.setString(2, notice.getnContent());
			pstmt.setInt(3, notice.getnNum());
			
			rows=pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("[에러]updateNotice() 메소드의 SQL 오류 = "+e.getMessage());		
		} finally {
			close(con, pstmt);
		}
		return rows;
	}
	
	public int deleteNotice(int nNum) {
		Connection con=null;
		PreparedStatement pstmt=null;
		int rows=0;
		try {
			con=getConnection();
			
			String sql="delete from notice where n_num=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, nNum);
			
			rows=pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("[에러]deleteNotice() 메소드의 SQL 오류 = "+e.getMessage());
		} finally {
			close(con, pstmt);
		}
		return rows;
	}
	
	/**
	 * 전체 게시글 조회
	 *  
	 * @return
	 */
	public List<NoticeDTO> selectAllNotice() {
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<NoticeDTO> noticeList = new ArrayList<NoticeDTO>();
		
		try {
			con=getConnection();
			String sql="SELECT * FROM notice ORDER BY n_num DESC";
			pstmt=con.prepareStatement(sql);
			
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				NoticeDTO notice=new NoticeDTO();
				notice.setnNum(rs.getInt("n_num"));
				notice.setnTitle(rs.getString("n_title"));
				notice.setnDate(rs.getString("n_date"));
				notice.setnContent(rs.getString("n_content"));
				noticeList.add(notice);
			}
			
		} catch (SQLException e) {
			System.out.println("[에러]selectAllNotice() 메소드의 SQL 오류 = "+e.getMessage());
		} finally {
			close(con, pstmt, rs);
		}
		
		return noticeList;
	}
	
	/**
	 * 전체 공지사항 게시판 게시글 수 조회
	 */
	public int selectNoticeCount() {
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		int count=0;
		
		try {
			con=getConnection();
			String sql="SELECT count(*) FROM notice";
			pstmt=con.prepareStatement(sql);
			
			rs=pstmt.executeQuery();
			if(rs.next()) {
				count=rs.getInt(1);
			}
			
		} catch (SQLException e) {
			System.out.println("[에러]selectAllNotice() 메소드의 SQL 오류 = "+e.getMessage());
		} finally {
			close(con, pstmt, rs);
		}
		
		return count;
	}

}
