package musicq.vo;

public class MemQuitVO {

	String quitCd; //탈퇴번호
	String memId; // 회원 아이디
	String quitDt; // 탈퇴일자
	String quitReason; // 탈퇴사유
	public MemQuitVO(String quitCd, String memId, String quitDt, String quitReason) {
		super();
		this.quitCd = quitCd;
		this.memId = memId;
		this.quitDt = quitDt;
		this.quitReason = quitReason;
	}
	public String getQuitCd() {
		return quitCd;
	}
	public void setQuitCd(String quitCd) {
		this.quitCd = quitCd;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getQuitDt() {
		return quitDt;
	}
	public void setQuitDt(String quitDt) {
		this.quitDt = quitDt;
	}
	public String getQuitReason() {
		return quitReason;
	}
	public void setQuitReason(String quitReason) {
		this.quitReason = quitReason;
	}
	@Override
	public String toString() {
		return "MemQuitVO [quitCd=" + quitCd + ", memId=" + memId + ", quitDt=" + quitDt + ", quitReason=" + quitReason
				+ "]";
	}
	
	
	
	
}
