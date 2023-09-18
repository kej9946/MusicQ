package musicq.vo;

public class DjpCmntVO {
	String cmntNo; // 댓글 번호
	String cmntDt; // 댓글 내용
	String cmntMdfcnDt; // 작성일자
	String cmntCn; // 수정일자
	String memId; // 회원아이디
	String djId; // 회원아이디

	public DjpCmntVO() {}

	
	public DjpCmntVO(String cmntNo, String cmntDt, String cmntMdfcnDt, String cmntCn, String memId, String djId) {
	super();
	this.cmntNo = cmntNo;
	this.cmntDt = cmntDt;
	this.cmntMdfcnDt = cmntMdfcnDt;
	this.cmntCn = cmntCn;
	this.memId = memId;
	this.djId = djId;
}
	public DjpCmntVO(String cmntcm) {
		super();	
		this.cmntNo = cmntNo;
		this.cmntDt = cmntDt;
		this.cmntMdfcnDt = cmntMdfcnDt;
		this.cmntCn = cmntCn;
		this.memId = memId;
		this.djId = djId;
	}

	public DjpCmntVO(String memId, String cmntDt, String cmntCn) {
		super();
		this.cmntDt = cmntDt;
		this.cmntCn = cmntCn;
		this.memId = memId;
		this.djId = djId;
	}

		
	public String getCmntNo() {
		return cmntNo;
	}
	

	public String getDjId() {
		return djId;
	}


	public void setDjId(String djId) {
		this.djId = djId;
	}



	public void setCmntNo(String cmntNo) {
		this.cmntNo = cmntNo;
	}

	public String getCmntDt() {
		return cmntDt;
	}

	public void setCmntDt(String cmntDt) {
		this.cmntDt = cmntDt;
	}

	public String getCmntMdfcnDt() {
		return cmntMdfcnDt;
	}

	public void setCmntMdfcnDt(String cmntMdfcnDt) {
		this.cmntMdfcnDt = cmntMdfcnDt;
	}

	public String getCmntCn() {
		return cmntCn;
	}

	public void setCmntCn(String cmntCn) {
		this.cmntCn = cmntCn;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	@Override
	public String toString() {
		return "djpCmntVO [cmntNo=" + cmntNo + ", cmntDt=" + cmntDt + ", cmntMdfcnDt=" + cmntMdfcnDt + ", cmntCn="
				+ cmntCn + ", memId=" + memId + "]";
	}

}
