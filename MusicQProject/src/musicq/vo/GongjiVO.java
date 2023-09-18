package musicq.vo;

public class GongjiVO {

	String gNo; // 문의글번호
	String aId; // 관리자아이디
	String gTitle; // 공지글제목
	String gContent; // 글내용
	String gDt; // 작성일시

	public GongjiVO() {
		super();
	}

	public GongjiVO(String gNo, String aId, String gTitle, String gContent, String gDt) {
		super();
		this.gNo = gNo;
		this.aId = aId;
		this.gTitle = gTitle;
		this.gContent = gContent;
		this.gDt = gDt;
	}

	/**
	 * @return the gNo
	 */
	public String getgNo() {
		return gNo;
	}

	/**
	 * @param gNo the gNo to set
	 */
	public void setgNo(String gNo) {
		this.gNo = gNo;
	}

	/**
	 * @return the aId
	 */
	public String getaId() {
		return aId;
	}

	/**
	 * @param aId the aId to set
	 */
	public void setaId(String aId) {
		this.aId = aId;
	}

	/**
	 * @return the gTitle
	 */
	public String getgTitle() {
		return gTitle;
	}

	/**
	 * @param gTitle the gTitle to set
	 */
	public void setgTitle(String gTitle) {
		this.gTitle = gTitle;
	}

	/**
	 * @return the gContent
	 */
	public String getgContent() {
		return gContent;
	}

	/**
	 * @param gContent the gContent to set
	 */
	public void setgContent(String gContent) {
		this.gContent = gContent;
	}

	/**
	 * @return the gDt
	 */
	public String getgDt() {
		return gDt;
	}

	/**
	 * @param gDt the gDt to set
	 */
	public void setgDt(String gDt) {
		this.gDt = gDt;
	}

}
