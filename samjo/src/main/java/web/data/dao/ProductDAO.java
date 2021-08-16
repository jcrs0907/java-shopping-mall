package web.data.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import web.data.dto.ProductDTO;

public class ProductDAO extends JdbcDAO{
	private static ProductDAO _dao;
	
	
	private ProductDAO() {
		// TODO Auto-generated constructor stub
	}
	
	static {
		_dao=new ProductDAO();
		
	}
	
	public static ProductDAO getDao(){
		return _dao;
	}
	
	//��ǰ���� ���
	public int insertProduct(ProductDTO product) {
		Connection con=null;
		PreparedStatement pstmt=null;
		int rows=0;
		
		try {
			con=getConnection();
			
			String sql="insert into product values(?,?,?,?,?,?,?)";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, product.getpId());
			pstmt.setString(2, product.getpName());
			pstmt.setString(3, product.getpImg());
			pstmt.setString(4, product.getpInfo());
			pstmt.setInt(5, product.getpPrice());
			pstmt.setInt(6, product.getpKinds());
			pstmt.setInt(7, product.getpStock());
			
			rows=pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("[����]insertProduct()�޼ҵ��� SQL ����"+e.getMessage());
		} finally {
			close(con, pstmt);
		} 
		return rows;
	}
		
	//��ǰ ID�� �ش� ��ǰ���� �˻�
	public ProductDTO selectIdProduct(String pId) {
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		ProductDTO product=null;
		try {
			con=getConnection();
			String sql="select * from product where p_id=? and p_kinds != -1";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, pId);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				product=new ProductDTO();
				product.setpId(rs.getString("p_id"));
				product.setpName(rs.getString("p_name"));
				product.setpImg(rs.getString("p_img"));
				product.setpInfo(rs.getString("p_info"));
				product.setpPrice(rs.getInt("p_price"));
				product.setpKinds(rs.getInt("p_kinds"));
				product.setpStock(rs.getInt("p_stock"));
			}
			
		} catch (SQLException e) {
			System.out.println("[����]selectIdProduct()�޼ҵ��� SQL ����"+e.getMessage());
		} finally {
			close(con, pstmt, rs);
		}
		return product;
	}
		
	//ī�װ��� ��ǰ�� �˻�
	public List<ProductDTO> selectKindsProduct(int pKinds) {
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<ProductDTO> productList=new ArrayList<ProductDTO>();
		try {
			con=getConnection();
			
			if(pKinds==0) {
				String sql="select * from product order by p_id";
				
				pstmt=con.prepareStatement(sql);
			} else if(pKinds>=1 && pKinds<=6) {
				String sql="select * from product where p_kinds=?";
				pstmt=con.prepareStatement(sql);
				pstmt.setInt(1, pKinds);
			} 
			rs=pstmt.executeQuery();
			while(rs.next()) {
				ProductDTO product=new ProductDTO();
				product.setpId(rs.getString("p_id"));
				product.setpName(rs.getString("p_name"));
				product.setpPrice(rs.getInt("p_price"));
				product.setpStock(rs.getInt("p_stock"));
				productList.add(product);
			}
		} catch (SQLException e) {
			System.out.println("[����]selectKindsProduct()�޼ҵ��� SQL ���� = "+e.getMessage());
		} finally {
			close(con, pstmt, rs);
		}
		return productList;
	}
	
	
	/**
	 * ��ǰ ���̺� ��ϵ� ��ǰ ���� ���� ��ȯ - totalProduct
	 * 
	 * pKindsArray�� null�� ��� - return ��ü ��� ��ǰ ����
	 * pKindsArray�� null�� �ƴ� ��� - return ������ ���� ��� ��ǰ ���� ��ȯ
	 */
	public int selectProductCount(List<Integer> pKindsArray) {
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		int rows=0;
		
		try {
			con=getConnection();
			String sql="";
			
			if(pKindsArray==null) {
				sql="SELECT count(*) FROM product";
				pstmt=con.prepareStatement(sql);
			} else {
				if(pKindsArray.size()==1) {
					sql="SELECT count(*) FROM product WHERE p_kinds=?";
					pstmt=con.prepareStatement(sql);
					pstmt.setInt(1, pKindsArray.get(0));
					
				} else if(pKindsArray.size()==2) {
					sql="SELECT count(*) FROM product WHERE p_kinds IN(?, ?)";
					pstmt=con.prepareStatement(sql);
					pstmt.setInt(1, pKindsArray.get(0));
					pstmt.setInt(2, pKindsArray.get(1));
					
				} else {
					sql="SELECT count(*) FROM product WHERE p_kinds IN(?, ?, ?)";
					pstmt=con.prepareStatement(sql);
					pstmt.setInt(1, pKindsArray.get(0));
					pstmt.setInt(2, pKindsArray.get(1));
					pstmt.setInt(3, pKindsArray.get(2));
					
				}
			}

			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				rows=rs.getInt(1);
			}
			
		} catch (SQLException e) {
			System.out.println("[����]selectProductCount()�޼ҵ��� SQL ���� = "+e.getMessage());
		} finally {
			close(con, pstmt, rs);
		}
		return rows;
	}
	
	
	
	
	/**
	 * ��ǰ ī�װ����� ī�װ��� ���� ��ǰ�� ���õ� ���
	 */
	public List<ProductDTO> selectAllProduct(List<Integer> pKindsArray, int startRow, int endRow) {
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<ProductDTO> productList=new ArrayList<ProductDTO>();
		
		try {
			con=getConnection();
			String sql=null;
			
			if(pKindsArray==null) {
				sql="SELECT * FROM(SELECT rownum rn, temp.* FROM "
						+ "(SELECT * FROM product WHERE p_kinds!=-1 ORDER BY p_id) temp)"
						+ "WHERE rn BETWEEN ? AND ?";
				
				pstmt=con.prepareStatement(sql);
				pstmt.setInt(1, startRow);
				pstmt.setInt(2, endRow);
			} else {
				if(pKindsArray.size()==1) {
					sql="SELECT * FROM (SELECT rownum rn, temp.* FROM (SELECT * FROM product WHERE p_kinds=?) temp)"
							+ "WHERE rn BETWEEN ? AND ?";
					pstmt=con.prepareStatement(sql);
					pstmt.setInt(1, pKindsArray.get(0));
					pstmt.setInt(2, startRow);
					pstmt.setInt(3, endRow);
				} else if(pKindsArray.size()==2) {
					sql="SELECT * FROM (SELECT rownum rn, temp.* FROM (SELECT * FROM product WHERE p_kinds IN(?, ?)) temp)"
							+ "WHERE rn BETWEEN ? AND ?";
					pstmt=con.prepareStatement(sql);
					pstmt.setInt(1, pKindsArray.get(0));
					pstmt.setInt(2, pKindsArray.get(1));
					pstmt.setInt(3, startRow);
					pstmt.setInt(4, endRow);
				} else {
					sql="SELECT * FROM (SELECT rownum rn, temp.* FROM (SELECT * FROM product WHERE p_kinds IN(?, ?, ?)) temp)"
							+ "WHERE rn BETWEEN ? AND ?";
					pstmt=con.prepareStatement(sql);
					pstmt.setInt(1, pKindsArray.get(0));
					pstmt.setInt(2, pKindsArray.get(1));
					pstmt.setInt(3, pKindsArray.get(2));
					pstmt.setInt(4, startRow);
					pstmt.setInt(5, endRow);
					
				}
			}
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				ProductDTO product=new ProductDTO();
				product.setpId(rs.getString("p_id"));
				product.setpName(rs.getString("p_name"));
				product.setpImg(rs.getString("p_img"));
				product.setpInfo(rs.getString("p_info"));
				product.setpPrice(rs.getInt("p_price"));
				product.setpKinds(rs.getInt("p_kinds"));
				product.setpStock(rs.getInt("p_stock"));
				productList.add(product);
			}
		} catch (SQLException e) {
			System.out.println("[����]selectKindsProduct()�޼ҵ��� SQL ���� = "+e.getMessage());
		} finally {
			close(con, pstmt, rs);
		}
		return productList;
	}
	
	
	//��ǰ ID�� �ش��ϴ� ��ǰ���� ����
	public int updateProduct(ProductDTO product) {
		Connection con=null;
		PreparedStatement pstmt=null;
		int rows=0;
		
		try {
			con=getConnection();
			String sql="update product set p_name=?,p_img=?,p_info=?,p_price=?,p_kinds=?,p_stock=? where p_id=?";
			
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1,product.getpName());
			pstmt.setString(2,product.getpImg());
			pstmt.setString(3,product.getpInfo());
			pstmt.setInt(4,product.getpPrice());
			pstmt.setInt(5,product.getpKinds());
			pstmt.setInt(6,product.getpStock());
			pstmt.setString(7,product.getpId());
			
			rows=pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("[����]updateProduct()�޼ҵ��� SQL ����"+e.getMessage());
		} finally {
			close(con, pstmt);
		}
		return rows;
	}
	/*
	//ID�� �ش��ϴ� ��ǰ���� ����
	public int deleteProduct(String pId) {
		Connection con=null;
		PreparedStatement pstmt=null;
		int rows=0;
		try {
			con=getConnection();
			
			String sql="delete from product where id=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, pId);
			
			rows=pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("[����]deleteProduct()�޼ҵ��� SQL ����"+e.getMessage());
		} finally {
			close(con, pstmt);
		}
		return rows;
	}
	*/
	
	/**
	 * id�� �ش��ϴ� ��ǰ ���� ����� ����ó�� - p_kinds ���� -1�� ó��
	 */
	public int deleteProduct(String pId) {
		Connection con=null;
		PreparedStatement pstmt=null;
		int rows=0;
		
		try {
			con=getConnection();
			
			String sql="delete from product where p_id=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, pId);
			
			rows=pstmt.executeUpdate();
			
		} catch (SQLException e) {
			System.out.println("[����]deleteProduct()�޼ҵ��� SQL ����"+e.getMessage());
		} finally {
			close(con, pstmt);
		}
		
		return rows;
	}
}

