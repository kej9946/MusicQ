package musicq.vo;

public class TicketPayVO {
	String tkCd; //이용권 코드
	String cpBoxCd; //이용함 번호
	String cpDcrate; // 쿠폰할인률
	String payAmt; // 결제할 금액
	public TicketPayVO(String tkCd, String cpBoxCd, String cpDcrate, String payAmt) {
		super();
		this.tkCd = tkCd;
		this.cpBoxCd = cpBoxCd;
		this.cpDcrate = cpDcrate;
		this.payAmt = payAmt;
	}
	public String getTkCd() {
		return tkCd;
	}
	public void setTkCd(String tkCd) {
		this.tkCd = tkCd;
	}
	public String getCpBoxCd() {
		return cpBoxCd;
	}
	public void setCpBoxCd(String cpBoxCd) {
		this.cpBoxCd = cpBoxCd;
	}
	public String getCpDcrate() {
		return cpDcrate;
	}
	public void setCpDcrate(String cpDcrate) {
		this.cpDcrate = cpDcrate;
	}
	public String getPayAmt() {
		return payAmt;
	}
	public void setPayAmt(String payAmt) {
		this.payAmt = payAmt;
	}
	@Override
	public String toString() {
		return "TicketPayVO [tkCd=" + tkCd + ", cpBoxCd=" + cpBoxCd + ", cpDcrate=" + cpDcrate + ", payAmt=" + payAmt
				+ "]";
	}
	
	
}
