package web.data.dto;
/*
 * 이름      널?       유형            
------- -------- ------------- 
P_ID    NOT NULL VARCHAR2(10)  id
P_NAME  NOT NULL VARCHAR2(100) 이름
P_IMG   NOT NULL VARCHAR2(500) 이미지
P_INFO           VARCHAR2(500) 정보
P_PRICE NOT NULL NUMBER        가격
P_KINDS          NUMBER        카테고리
P_STOCK          NUMBER   	   수량	
 */
public class ProductDTO {
	private String pId;
	private String pName;
	private String pImg;
	private String pInfo;
	private int pPrice;
	private int pKinds;
	private int pStock;
	
	public ProductDTO() {
		// TODO Auto-generated constructor stub
	}

	public String getpId() {
		return pId;
	}

	public void setpId(String pId) {
		this.pId = pId;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public String getpImg() {
		return pImg;
	}

	public void setpImg(String pImg) {
		this.pImg = pImg;
	}

	public String getpInfo() {
		return pInfo;
	}

	public void setpInfo(String pInfo) {
		this.pInfo = pInfo;
	}

	public int getpPrice() {
		return pPrice;
	}

	public void setpPrice(int pPrice) {
		this.pPrice = pPrice;
	}

	public int getpKinds() {
		return pKinds;
	}

	public void setpKinds(int pKinds) {
		this.pKinds = pKinds;
	}

	public int getpStock() {
		return pStock;
	}

	public void setpStock(int pStock) {
		this.pStock = pStock;
	}
	
	
}
