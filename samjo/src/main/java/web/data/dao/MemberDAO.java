package web.data.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import web.data.dto.MemberDTO;


public class MemberDAO extends JdbcDAO{
	private static MemberDAO _dao;
	
	private MemberDAO() {
		
	}
	
	static {
		_dao=new MemberDAO();
	}
	
	public static MemberDAO getDAO() {
		return _dao;
	}
	
	
	/**
	 * 회원정보를 전달받아 MEMBER 테이블에 저장<br>
	 * 
	 * @return
	 */
	public int insertMember(MemberDTO member) {
		Connection con=null;
		PreparedStatement pstmt=null;
		int rows=0;
		
		try {
			con=getConnection();
	
			String sql="INSERT INTO member VALUES(?,?,?,?,?,?,?,?,SYSDATE,null,1,?)";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPasswd());
			pstmt.setString(3, member.getName());
			pstmt.setString(4, member.getEmail());
			pstmt.setString(5, member.getMobile());
			pstmt.setString(6, member.getZipcode());
			pstmt.setString(7, member.getAddress1());
			pstmt.setString(8, member.getAddress2());
			pstmt.setString(9, member.getBirthday());
			
			rows=pstmt.executeUpdate();
			
		} catch (SQLException e) {
			System.out.println("[SQL] insertMember() 메소드의 SQL 오류 = "+e.getMessage());
		} finally {
			close(con, pstmt);
		}
		
		return rows;
	}
	
	/**
	 * 아이디를 전달받아 회원정보를 검색<br> 
	 * - status가 -1이 아닌 회원 (로그인)
	 * 
	 * @return
	 */
	public MemberDTO selectIdMember(String id) {
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs= null;
		MemberDTO member=null;
		
		try {
			con=getConnection();
			
			String sql="SELECT * FROM member WHERE id=? AND status!=-1";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, id);
			
			rs=pstmt.executeQuery();
			if(rs.next()) {
				member=new MemberDTO();
				member.setId(rs.getString("id"));
				member.setPasswd(rs.getString("passwd"));
				member.setName(rs.getString("name"));
				member.setEmail(rs.getString("email"));
				member.setMobile(rs.getString("mobile"));
				member.setZipcode(rs.getString("zipcode"));
				member.setAddress1(rs.getString("address1"));
				member.setAddress2(rs.getString("address2"));
				member.setJoinDate(rs.getString("join_date"));
				member.setLastLogin(rs.getString("last_login"));
				member.setStatus(rs.getInt("status"));
				member.setBirthday(rs.getString("birthday"));
			}
			
		} catch (SQLException e) {
			System.out.println("[SQL] selectIdMember() 메소드의 SQL 오류 = "+e.getMessage());
		} finally {
			close(con, pstmt, rs);
		}
		
		return member;
	}
	
	/**
	 * 입력 id의 존재유무 확인<br>
	 *  - 탈퇴한 회원을 포함한 모든 회원 조회
	 */
	public MemberDTO checkId(String id) {
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs= null;
		MemberDTO member=null;
		
		try {
			con=getConnection();
			
			String sql="SELECT * FROM member WHERE id=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, id);
			
			rs=pstmt.executeQuery();
			if(rs.next()) {
				member=new MemberDTO();
				member.setId(rs.getString("id"));
				member.setPasswd(rs.getString("passwd"));
				member.setName(rs.getString("name"));
				member.setEmail(rs.getString("email"));
				member.setMobile(rs.getString("mobile"));
				member.setZipcode(rs.getString("zipcode"));
				member.setAddress1(rs.getString("address1"));
				member.setAddress2(rs.getString("address2"));
				member.setJoinDate(rs.getString("join_date"));
				member.setLastLogin(rs.getString("last_login"));
				member.setStatus(rs.getInt("status"));
				member.setBirthday(rs.getString("birthday"));
			}
			
		} catch (SQLException e) {
			System.out.println("[SQL] checkId() 메소드의 SQL 오류 = "+e.getMessage());
		} finally {
			close(con, pstmt, rs);
		}
		
		return member;
	}
	
	/**
	 * 이름을 전달받아 회원검색 - status가 -1이 아닌 회원
	 * 
	 * @return
	 */
	public MemberDTO selectNameMember(String name) {
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs= null;
		MemberDTO member=null;
		
		try {
			con=getConnection();
			
			String sql="SELECT * FROM member WHERE name=? AND status!=-1";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, name);
			
			rs=pstmt.executeQuery();
			if(rs.next()) {
				member=new MemberDTO();
				member.setId(rs.getString("id"));
				member.setPasswd(rs.getString("passwd"));
				member.setName(rs.getString("name"));
				member.setEmail(rs.getString("email"));
				member.setMobile(rs.getString("mobile"));
				member.setZipcode(rs.getString("zipcode"));
				member.setAddress1(rs.getString("address1"));
				member.setAddress2(rs.getString("address2"));
				member.setJoinDate(rs.getString("join_date"));
				member.setLastLogin(rs.getString("last_login"));
				member.setStatus(rs.getInt("status"));
				member.setBirthday(rs.getString("birthday"));
			}
			
		} catch (SQLException e) {
			System.out.println("[SQL] selectNameMember() 메소드의 SQL 오류 = "+e.getMessage());
		} finally {
			close(con, pstmt, rs);
		}
		
		return member;
	}
	
	
	/**
	 * 아이디를 전달받아 테이블에 저장된 해당 회원정보의 마지막 로그인 날짜를 변경
	 * 
	 * @return
	 */
	public int updateLastLogin(String id) {
		Connection con=null;
		PreparedStatement pstmt=null;
		int rows=0;
		
		try {
			con=getConnection();
			String sql="UPDATE member SET last_login=sysdate WHERE id=? AND status!=-1";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, id);
			
			rows=pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("[SQL] updateLastLogin() 메소드의 SQL 오류 = "+e.getMessage());
		} finally {
			close(con, pstmt);
		}
		
		return rows;
	}
	
	
	// 회원정보를 전달받아 테이블에 저장된 회원정보를 변경
	public int updateMember(MemberDTO member) {
		Connection con=null;
		PreparedStatement pstmt=null;
		int rows=0;
		
		try {
			con=getConnection();
			
			if(member.getPasswd().equals("")) {
				String sql="UPDATE member SET name=?, email=?, mobile=?, zipcode=?, address1=?, address2=?, birthday=? WHERE id=? AND status!=-1";
				pstmt=con.prepareStatement(sql);
				pstmt.setString(1, member.getName());
				pstmt.setString(2, member.getEmail());
				pstmt.setString(3, member.getMobile());
				pstmt.setString(4, member.getZipcode());
				pstmt.setString(5, member.getAddress1());
				pstmt.setString(6, member.getAddress2());
				pstmt.setString(7, member.getBirthday());
				pstmt.setString(8, member.getId());
				
			} else {
				String sql="UPDATE member SET passwd=?, name=?, email=?, mobile=?, zipcode=?, address1=?, address2=?, birthday=? WHERE id=? AND status!=-1";
				pstmt=con.prepareStatement(sql);
				pstmt.setString(1, member.getPasswd());
				pstmt.setString(2, member.getName());
				pstmt.setString(3, member.getEmail());
				pstmt.setString(4, member.getMobile());
				pstmt.setString(5, member.getZipcode());
				pstmt.setString(6, member.getAddress1());
				pstmt.setString(7, member.getAddress2());
				pstmt.setString(8, member.getBirthday());
				pstmt.setString(9, member.getId());
			}
			
			rows=pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("[SQL] updateMember() 메소드의 SQL 오류 = "+e.getMessage());
		} finally {
			close(con, pstmt);
		}
		
		return rows;
	}
	
	
	/**
	 * 상태정보를 변경하여 탈퇴회원 관리 - status : -1<br>
	 * @return
	 */
	public int deleteMember(String id) {
		Connection con=null;
		PreparedStatement pstmt=null;
		int rows=0;
		
		try {
			con=getConnection();
			String sql="UPDATE member SET status=-1 WHERE id=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, id);
			
			rows=pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("[SQL] deleteMember() 메소드의 SQL 오류 = "+e.getMessage());
		} finally {
			close(con, pstmt);
		}
		
		return rows;
	}
	
	
	// MEMBER 테이블에 저장된 모든 회원정보를 검색하여 반환하는 메소드
	public List<MemberDTO> selectAllMemberList() {
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs= null;
		List<MemberDTO> memberList = new ArrayList<MemberDTO>();
		
		try {
			con=getConnection();
			
			String sql="SELECT * FROM member WHERE status!=-1 ORDER BY id";
			pstmt=con.prepareStatement(sql);
			
			rs=pstmt.executeQuery();

			while(rs.next()) {
				MemberDTO member=new MemberDTO();
				
				member.setId(rs.getString("id"));
				member.setPasswd(rs.getString("passwd"));
				member.setName(rs.getString("name"));
				member.setEmail(rs.getString("email"));
				member.setMobile(rs.getString("mobile"));
				member.setZipcode(rs.getString("zipcode"));
				member.setAddress1(rs.getString("address1"));
				member.setAddress2(rs.getString("address2"));
				member.setJoinDate(rs.getString("join_date"));
				member.setLastLogin(rs.getString("last_login"));
				member.setStatus(rs.getInt("status"));
				member.setBirthday(rs.getString("birthday"));
				
				memberList.add(member);
			}
			
		} catch (SQLException e) {
			System.out.println("[SQL] selectAllMemberList() 메소드의 SQL 오류 = "+e.getMessage());
		} finally {
			close(con, pstmt, rs);
		}
		
		return memberList;
	}
	
	
	// 아이디와 상태를 전달받아 MEMBER 테이블에 저장된 해당 아이디의 회원상태를 변경하고
	// 변경행의 갯수를 반환하는 메소드
	public int updateStatus(String id, int status) {
		Connection con=null;
		PreparedStatement pstmt=null;
		int rows=0;
		
		try {
			con=getConnection();
			String sql="UPDATE member SET status=? WHERE id=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, status);
			pstmt.setString(2, id);
			
			rows=pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("[SQL] updateStatus() 메소드의 SQL 오류 = "+e.getMessage());
		} finally {
			close(con, pstmt);
		}
		return rows;
	}
	
	/**
	 * 비밀번호 찾기 과정에서 비밀번호를 변경하기 위해 사용하는 메소드
	 * 
	 * @return
	 */
	public int updatePasswd(String id, String passwd) {
		Connection con=null;
		PreparedStatement pstmt=null;
		int rows=0;
		
		try {
			con=getConnection();
			String sql="UPDATE member SET passwd=? WHERE id=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, passwd);
			pstmt.setString(2, id);
			
			rows=pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("[SQL] updatePasswd() 메소드의 SQL 오류 = "+e.getMessage());
		} finally {
			close(con, pstmt);
		}
		return rows;
	}
	
	/**
	 * 회원탈퇴한 회원정보 출력
	 * 
	 * @return
	 */
	public List<MemberDTO> selectLeftMember(){
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs= null;
		List<MemberDTO> memberList = new ArrayList<MemberDTO>();
		
		try {
			con=getConnection();
			
			String sql="SELECT * FROM member WHERE status=-1 ORDER BY id";
			pstmt=con.prepareStatement(sql);
			
			rs=pstmt.executeQuery();

			while(rs.next()) {
				MemberDTO member=new MemberDTO();
				
				member.setId(rs.getString("id"));
				member.setPasswd(rs.getString("passwd"));
				member.setName(rs.getString("name"));
				member.setEmail(rs.getString("email"));
				member.setMobile(rs.getString("mobile"));
				member.setZipcode(rs.getString("zipcode"));
				member.setAddress1(rs.getString("address1"));
				member.setAddress2(rs.getString("address2"));
				member.setJoinDate(rs.getString("join_date"));
				member.setLastLogin(rs.getString("last_login"));
				member.setStatus(rs.getInt("status"));
				member.setBirthday(rs.getString("birthday"));
				
				memberList.add(member);
			}
			
		} catch (SQLException e) {
			System.out.println("[SQL] selectLeftMember() 메소드의 SQL 오류 = "+e.getMessage());
		} finally {
			close(con, pstmt, rs);
		}
		
		return memberList;
	}	
}
