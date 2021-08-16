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
	 * ȸ�������� ���޹޾� MEMBER ���̺� ����<br>
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
			System.out.println("[SQL] insertMember() �޼ҵ��� SQL ���� = "+e.getMessage());
		} finally {
			close(con, pstmt);
		}
		
		return rows;
	}
	
	/**
	 * ���̵� ���޹޾� ȸ�������� �˻�<br> 
	 * - status�� -1�� �ƴ� ȸ�� (�α���)
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
			System.out.println("[SQL] selectIdMember() �޼ҵ��� SQL ���� = "+e.getMessage());
		} finally {
			close(con, pstmt, rs);
		}
		
		return member;
	}
	
	/**
	 * �Է� id�� �������� Ȯ��<br>
	 *  - Ż���� ȸ���� ������ ��� ȸ�� ��ȸ
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
			System.out.println("[SQL] checkId() �޼ҵ��� SQL ���� = "+e.getMessage());
		} finally {
			close(con, pstmt, rs);
		}
		
		return member;
	}
	
	/**
	 * �̸��� ���޹޾� ȸ���˻� - status�� -1�� �ƴ� ȸ��
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
			System.out.println("[SQL] selectNameMember() �޼ҵ��� SQL ���� = "+e.getMessage());
		} finally {
			close(con, pstmt, rs);
		}
		
		return member;
	}
	
	
	/**
	 * ���̵� ���޹޾� ���̺� ����� �ش� ȸ�������� ������ �α��� ��¥�� ����
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
			System.out.println("[SQL] updateLastLogin() �޼ҵ��� SQL ���� = "+e.getMessage());
		} finally {
			close(con, pstmt);
		}
		
		return rows;
	}
	
	
	// ȸ�������� ���޹޾� ���̺� ����� ȸ�������� ����
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
			System.out.println("[SQL] updateMember() �޼ҵ��� SQL ���� = "+e.getMessage());
		} finally {
			close(con, pstmt);
		}
		
		return rows;
	}
	
	
	/**
	 * ���������� �����Ͽ� Ż��ȸ�� ���� - status : -1<br>
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
			System.out.println("[SQL] deleteMember() �޼ҵ��� SQL ���� = "+e.getMessage());
		} finally {
			close(con, pstmt);
		}
		
		return rows;
	}
	
	
	// MEMBER ���̺� ����� ��� ȸ�������� �˻��Ͽ� ��ȯ�ϴ� �޼ҵ�
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
			System.out.println("[SQL] selectAllMemberList() �޼ҵ��� SQL ���� = "+e.getMessage());
		} finally {
			close(con, pstmt, rs);
		}
		
		return memberList;
	}
	
	
	// ���̵�� ���¸� ���޹޾� MEMBER ���̺� ����� �ش� ���̵��� ȸ�����¸� �����ϰ�
	// �������� ������ ��ȯ�ϴ� �޼ҵ�
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
			System.out.println("[SQL] updateStatus() �޼ҵ��� SQL ���� = "+e.getMessage());
		} finally {
			close(con, pstmt);
		}
		return rows;
	}
	
	/**
	 * ��й�ȣ ã�� �������� ��й�ȣ�� �����ϱ� ���� ����ϴ� �޼ҵ�
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
			System.out.println("[SQL] updatePasswd() �޼ҵ��� SQL ���� = "+e.getMessage());
		} finally {
			close(con, pstmt);
		}
		return rows;
	}
	
	/**
	 * ȸ��Ż���� ȸ������ ���
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
			System.out.println("[SQL] selectLeftMember() �޼ҵ��� SQL ���� = "+e.getMessage());
		} finally {
			close(con, pstmt, rs);
		}
		
		return memberList;
	}	
}
