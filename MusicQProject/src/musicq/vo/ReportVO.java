package musicq.vo;

public class ReportVO {
	String repCd; // 신고번호
	String memId; // 회원 아이디
	String repMemId; // 신고접수회원 아이디
	String repBlackMemId; // 신공당한회원 아이디
	String repDt; // 신고일자
	String repReason; // 신고사유
	String repTreInpo; // 관리자 처리 현황
	public ReportVO(String repCd, String memId, String repMemId, String repBlackMemId, String repDt, String repReason,
			String repTreInpo) {
		super();
		this.repCd = repCd;
		this.memId = memId;
		this.repMemId = repMemId;
		this.repBlackMemId = repBlackMemId;
		this.repDt = repDt;
		this.repReason = repReason;
		this.repTreInpo = repTreInpo;
	}
	public String getRepCd() {
		return repCd;
	}
	public void setRepCd(String repCd) {
		this.repCd = repCd;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getRepMemId() {
		return repMemId;
	}
	public void setRepMemId(String repMemId) {
		this.repMemId = repMemId;
	}
	public String getRepBlackMemId() {
		return repBlackMemId;
	}
	public void setRepBlackMemId(String repBlackMemId) {
		this.repBlackMemId = repBlackMemId;
	}
	public String getRepDt() {
		return repDt;
	}
	public void setRepDt(String repDt) {
		this.repDt = repDt;
	}
	public String getRepReason() {
		return repReason;
	}
	public void setRepReason(String repReason) {
		this.repReason = repReason;
	}
	public String getRepTreInpo() {
		return repTreInpo;
	}
	public void setRepTreInpo(String repTreInpo) {
		this.repTreInpo = repTreInpo;
	}
	@Override
	public String toString() {
		return "ReportVO [repCd=" + repCd + ", memId=" + memId + ", repMemId=" + repMemId + ", repBlackMemId="
				+ repBlackMemId + ", repDt=" + repDt + ", repReason=" + repReason + ", repTreInpo=" + repTreInpo + "]";
	}
	
	
	
	
}
