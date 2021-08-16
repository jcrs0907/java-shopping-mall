package web.data.dto;
/*
이름              널?       유형            
--------------- -------- ------------- 
ORDER_NO                 NUMBER(4)      - 주문번호(FK)
SENDER_NAME     NOT NULL VARCHAR2(20)   - 보내는사람 이름
SENDER_PHONE    NOT NULL VARCHAR2(50)   - 보내는사람 휴대폰번호
RECIPIENT_NAME  NOT NULL VARCHAR2(20)   - 받는사람 이름
RECIPIENT_PHONE NOT NULL VARCHAR2(50)   - 받는사람 휴대폰번호
ZIPCODE         NOT NULL VARCHAR2(10)   - 우편번호
ADDRESS1        NOT NULL VARCHAR2(200)  - 주소
ADDRESS2        NOT NULL VARCHAR2(50)   - 상세주소
ORDER_MESSAGE            VARCHAR2(200)  - 배송 메세지
*/
public class DeliveryDTO {
	private int orderNo;
	private String senderName;
	private String senderPhone;
	private String recipientName;
	private String recipientPhone;
	private String zipcode;
	private String address1;
	private String address2;
	private String orderMessage;
	
	public DeliveryDTO() {
		// TODO Auto-generated constructor stub
	}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	public String getSenderName() {
		return senderName;
	}

	public void setSenderName(String senderName) {
		this.senderName = senderName;
	}

	public String getSenderPhone() {
		return senderPhone;
	}

	public void setSenderPhone(String senderPhone) {
		this.senderPhone = senderPhone;
	}

	public String getRecipientName() {
		return recipientName;
	}

	public void setRecipientName(String recipientName) {
		this.recipientName = recipientName;
	}

	public String getRecipientPhone() {
		return recipientPhone;
	}

	public void setRecipientPhone(String recipientPhone) {
		this.recipientPhone = recipientPhone;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getOrderMessage() {
		return orderMessage;
	}

	public void setOrderMessage(String orderMessage) {
		this.orderMessage = orderMessage;
	}
	
}
