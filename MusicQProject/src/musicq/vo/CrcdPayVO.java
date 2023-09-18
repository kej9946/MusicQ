package musicq.vo;

public class CrcdPayVO {

	String payAprvCd; // 신용카드결제 승인번호
	String crcdPw; // 신용카드비밀번호 앞 두자리
	String crcdVldDt; // 신용카드 유효기간
	String crcdCvc; // CVC
	String crcdNo; // 신용카드 번호
	String payTkCd; // 이용권코드
	String cpBoxCd; // 쿠폰함 번호
	String crcdPayDt; // 신용카드 결제 일시
	
	public CrcdPayVO(String payAprvCd, String crcdPw, String crcdVldDt, String crcdCvc, String crcdNo, String payTkCd,
			String cpBoxCd, String crcdPayDt) {
		super();
		this.payAprvCd = payAprvCd;
		this.crcdPw = crcdPw;
		this.crcdVldDt = crcdVldDt;
		this.crcdCvc = crcdCvc;
		this.crcdNo = crcdNo;
		this.payTkCd = payTkCd;
		this.cpBoxCd = cpBoxCd;
		this.crcdPayDt = crcdPayDt;
	}

	public String getPayAprvCd() {
		return payAprvCd;
	}

	public void setPayAprvCd(String payAprvCd) {
		this.payAprvCd = payAprvCd;
	}

	public String getCrcdPw() {
		return crcdPw;
	}

	public void setCrcdPw(String crcdPw) {
		this.crcdPw = crcdPw;
	}

	public String getCrcdVldDt() {
		return crcdVldDt;
	}

	public void setCrcdVldDt(String crcdVldDt) {
		this.crcdVldDt = crcdVldDt;
	}

	public String getCrcdCvc() {
		return crcdCvc;
	}

	public void setCrcdCvc(String crcdCvc) {
		this.crcdCvc = crcdCvc;
	}

	public String getCrcdNo() {
		return crcdNo;
	}

	public void setCrcdNo(String crcdNo) {
		this.crcdNo = crcdNo;
	}

	public String getPayTkCd() {
		return payTkCd;
	}

	public void setPayTkCd(String payTkCd) {
		this.payTkCd = payTkCd;
	}

	public String getCpBoxCd() {
		return cpBoxCd;
	}

	public void setCpBoxCd(String cpBoxCd) {
		this.cpBoxCd = cpBoxCd;
	}

	public String getCrcdPayDt() {
		return crcdPayDt;
	}

	public void setCrcdPayDt(String crcdPayDt) {
		this.crcdPayDt = crcdPayDt;
	}

	@Override
	public String toString() {
		return "CrcdPayVO [payAprvCd=" + payAprvCd + ", crcdPw=" + crcdPw + ", crcdVldDt=" + crcdVldDt + ", crcdCvc="
				+ crcdCvc + ", crcdNo=" + crcdNo + ", payTkCd=" + payTkCd + ", cpBoxCd=" + cpBoxCd + ", crcdPayDt="
				+ crcdPayDt + "]";
	}
	
	
}
