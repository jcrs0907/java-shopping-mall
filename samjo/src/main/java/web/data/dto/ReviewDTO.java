package web.data.dto;
/*
이름             널?       유형            
-------------- -------- ------------- 
REVIEW_NO      NOT NULL NUMBER        
REVIEW_SUBJECT          VARCHAR2(20)  
MEMBER_ID               VARCHAR2(20)  
PRODUCT_ID              VARCHAR2(10)  
REVIEW_CONTEXT          VARCHAR2(200) 
REVIEW_DATE             DATE          
*/
public class ReviewDTO{
	private int reviewNo;
	private String reviewSubject;
	private String memberId;
	private String productId;
	private String reviewContext;
	private String reviewDate;
	
	public ReviewDTO() {
		// TODO Auto-generated constructor stub
	}

	public int getReviewNo() {
		return reviewNo;
	}

	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public String getReviewContext() {
		return reviewContext;
	}

	public void setReviewContext(String reviewContext) {
		this.reviewContext = reviewContext;
	}

	public String getReviewDate() {
		return reviewDate;
	}

	public void setReviewDate(String reviewDate) {
		this.reviewDate = reviewDate;
	}

	public String getReviewSubject() {
		return reviewSubject;
	}

	public void setReviewSubject(String reviewSubject) {
		this.reviewSubject = reviewSubject;
	}

	
}
