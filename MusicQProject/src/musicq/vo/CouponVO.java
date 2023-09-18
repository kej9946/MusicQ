package musicq.vo;

public class CouponVO {

	String cpCd; //쿠폰 코드
	String cpBgn; // 쿠폰 유효기간 시작일
	String cpEnd; // 쿠폰 유효기간 종료일
	String cpDcrate; // 쿠폰할인률
	
	
	public CouponVO() {
		// TODO Auto-generated constructor stub
	}
	public CouponVO(String cpCd, String cpBgn, String cpEnd, String cpDcrate) {
		super();
		this.cpCd = cpCd;
		this.cpBgn = cpBgn;
		this.cpEnd = cpEnd;
		this.cpDcrate = cpDcrate;
	}
	public String getCpCd() {
		return cpCd;
	}
	public void setCpCd(String cpCd) {
		this.cpCd = cpCd;
	}
	public String getCpBgn() {
		return cpBgn;
	}
	public void setCpBgn(String cpBgn) {
		this.cpBgn = cpBgn;
	}
	public String getCpEnd() {
		return cpEnd;
	}
	public void setCpEnd(String cpEnd) {
		this.cpEnd = cpEnd;
	}
	public String getCpDcrate() {
		return cpDcrate;
	}
	public void setCpDcrate(String cpDcrate) {
		this.cpDcrate = cpDcrate;
	}
	@Override
	public String toString() {
		return "CouponVO [cpCd=" + cpCd + ", cpBgn=" + cpBgn + ", cpEnd=" + cpEnd + ", cpDcrate=" + cpDcrate + "]";
	}
	
	
	
	
}
