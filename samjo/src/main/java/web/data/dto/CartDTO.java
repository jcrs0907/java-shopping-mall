package web.data.dto;

/*
 이름            널?       유형           
------------- -------- ------------ 
CART_NO       NOT NULL NUMBER(10)   
MEMBER_ID              VARCHAR2(20) 
PRODUCT_ID             VARCHAR2(10) 
CART_QUANTITY NOT NULL NUMBER(10)   
CART_PRICE             NUMBER(10)   
CART_TOTAL            NUMBER(10)  
 */

public class CartDTO {
	private int cNo;
	private String cMemberId;
	private String cProductId;
	private int cQuantity;
	private int cPrice;
	private int cTotal;
	
	public CartDTO() {
		// TODO Auto-generated constructor stub
	}
	
	public int getcNo() {
		return cNo;
	}
	
	public void setcNo(int cNo) {
		this.cNo = cNo;
	}
	
	public String getcMemberId() {
		return cMemberId;
	}
	
	public void setcMemberId(String cMemberId) {
		this.cMemberId = cMemberId;
	}
	
	public String getcProductId() {
		return cProductId;
	}
	
	public void setcProductId(String cProductId) {
		this.cProductId = cProductId;
	}
	
	public int getcQuantity() {
		return cQuantity;
	}
	
	public void setcQuantity(int cQuantity) {
		this.cQuantity = cQuantity;
	}
	
	public int getcPrice() {
		return cPrice;
	}
	
	public void setcPrice(int cPrice) {
		this.cPrice = cPrice;
	}
	
	public int getcTotal() {
		return cTotal;
	}
	
	public void setcTotal(int cTotal) {
		this.cTotal = cTotal;
	}
	
	
}
