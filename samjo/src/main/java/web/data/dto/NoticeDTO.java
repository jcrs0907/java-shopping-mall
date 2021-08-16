package web.data.dto;

/*
 *  
N_NUM        NUMBER(4)      
N_TITLE      VARCHAR2(100)  
N_DATE       DATE           
N_CONTENT    VARCHAR2(4000) 
 */
public class NoticeDTO {
	private int nNum;
	private String nTitle;
	private String nDate;
	private String nContent;
	
	public NoticeDTO() {
		// TODO Auto-generated constructor stub
	}

	public int getnNum() {
		return nNum;
	}

	public void setnNum(int nNum) {
		this.nNum = nNum;
	}

	public String getnTitle() {
		return nTitle;
	}

	public void setnTitle(String nTitle) {
		this.nTitle = nTitle;
	}

	public String getnDate() {
		return nDate;
	}

	public void setnDate(String nDate) {
		this.nDate = nDate;
	}

	public String getnContent() {
		return nContent;
	}

	public void setnContent(String nContent) {
		this.nContent = nContent;
	}
	
	
}
