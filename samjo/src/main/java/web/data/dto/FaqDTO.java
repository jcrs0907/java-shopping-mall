package web.data.dto;

/*
 이름        널?       유형            
--------- -------- ------------- 
F_TYPE    NOT NULL VARCHAR2(20)  
F_TITLE   NOT NULL VARCHAR2(40)  
F_CONTENT NOT NULL VARCHAR2(200) 

 */
public class FaqDTO{
	
	private int fNo;
	private String fType;
	private String fTitle;
	private String fContent;
	
	public FaqDTO() {
		// TODO Auto-generated constructor stub
	}

	public int getfNo() {
		return fNo;
	}

	public void setfNo(int fNo) {
		this.fNo = fNo;
	}

	public String getfType() {
		return fType;
	}

	public void setfType(String fType) {
		this.fType = fType;
	}

	public String getfTitle() {
		return fTitle;
	}

	public void setfTitle(String fTitle) {
		this.fTitle = fTitle;
	}

	public String getfContent() {
		return fContent;
	}

	public void setfContent(String fContent) {
		this.fContent = fContent;
	}
	
	
	
	
}
