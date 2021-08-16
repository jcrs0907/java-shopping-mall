package web.data.dto;
/*
이름               널?       유형           
---------------- -------- ------------ 
ORDER_DETAIL_NO  NOT NULL NUMBER(4)     - 주문상세번호(PK)
ORDER_NO                  NUMBER(4)     - 주문번호(FK)
PRODUCT_ID       NOT NULL VARCHAR2(10)  - 상품아이디(FK)
PRODUCT_QUANTITY NOT NULL NUMBER(4)     - 상품갯수
 */
public class OrdersDetailDTO {
	private int orderDetailNo;
	private int orderNo;
	private String productId;
	private int productQuantity;
	
	public OrdersDetailDTO() {
		// TODO Auto-generated constructor stub
	}

	public int getOrderDetailNo() {
		return orderDetailNo;
	}

	public void setOrderDetailNo(int orderDetailNo) {
		this.orderDetailNo = orderDetailNo;
	}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public int getProductQuantity() {
		return productQuantity;
	}

	public void setProductQuantity(int productQuantity) {
		this.productQuantity = productQuantity;
	}
	
}
