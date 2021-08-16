package web.data.dto;
/*
이름         널?       유형           
---------- -------- ------------ 
ORDER_NO   NOT NULL NUMBER(4)     - 주문번호(PK)
MEMBER_ID  NOT NULL VARCHAR2(20)  - 회원아이디(FK : 참조테이블 - MEMBER)
ORDER_DATE NOT NULL DATE          - 주문일자
PAY_METHOD NOT NULL VARCHAR2(20)  - 결제수단
ORDER_STATUS NOT NULL NUMBER  - 주문상태(입금전:0, 배송준비:1, 배송중:2, 배송완료:3)
ORDER_BOARD_STATUS NOT NULL NUMBER  - 마이페이지 주문내역 상태(기본: 1, 삭제:0)     
*/


public class OrdersDTO {
	private int orderNo;
	private String memberId;
	private String orderDate;
	private String payMethod;
	private int orderStatus;
	private int orderBoardStatus;
	
	public OrdersDTO() {
		// TODO Auto-generated constructor stub
	}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}

	public String getPayMethod() {
		return payMethod;
	}

	public void setPayMethod(String payMethod) {
		this.payMethod = payMethod;
	}

	public int getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(int orderStatus) {
		this.orderStatus = orderStatus;
	}

	public int getOrderBoardStatus() {
		return orderBoardStatus;
	}

	public void setOrderBoardStatus(int orderBoardStatus) {
		this.orderBoardStatus = orderBoardStatus;
	}
	
}
