package web.data.dao;

public class ProductKindsDAO extends JdbcDAO{
	private static ProductKindsDAO _dao;
	
	private ProductKindsDAO() {
		// TODO Auto-generated constructor stub
	}
	
	static {
		_dao=new ProductKindsDAO();
	}
	
	public static ProductKindsDAO getDao() {
		return _dao;
		
	}
	
}
