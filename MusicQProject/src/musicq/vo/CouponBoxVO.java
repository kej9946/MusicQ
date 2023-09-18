package musicq.vo;

public class CouponBoxVO {

	String cpBoxCd; //쿠폰함 번호
	String memId; // 회원 아이디
	String cpCd; // 쿠폰코드
	
	public CouponBoxVO(String cpBoxCd, String memId, String cpCd) {
		super();
		this.cpBoxCd = cpBoxCd;
		this.memId = memId;
		this.cpCd = cpCd;
	}

	public String getCpBoxCd() {
		return cpBoxCd;
	}

	public void setCpBoxCd(String cpBoxCd) {
		this.cpBoxCd = cpBoxCd;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getCpCd() {
		return cpCd;
	}

	public void setCpCd(String cpCd) {
		this.cpCd = cpCd;
	}

	@Override
	public String toString() {
		return "CouponBoxVO [cpBoxCd=" + cpBoxCd + ", memId=" + memId + ", cpCd=" + cpCd + "]";
	}
	
	
	
}
