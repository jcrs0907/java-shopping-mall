package web.data.dto;
/*
 * 	이름        널?       유형            
	--------- -------- ------------- 
	TYPE_NO   NOT NULL NUMBER(10)    
	TYPE_INFO          VARCHAR2(500) 
 */
public class ProductKindsDTO {
	private int typeNo;
	private String typeInfo;
	
	public ProductKindsDTO() {
		// TODO Auto-generated constructor stub
	}

	public int getTypeNo() {
		return typeNo;
	}

	public void setTypeNo(int typeNo) {
		this.typeNo = typeNo;
	}

	public String getTypeInfo() {
		return typeInfo;
	}

	public void setTypeInfo(String typeInfo) {
		this.typeInfo = typeInfo;
	}
	
	
}
