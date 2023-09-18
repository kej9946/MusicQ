package musicq.vo;

public class TicketVO {
	String tkCd; //이용권 코드
	String tkNm; // 이용권 이름
	String tkPrice; // 이용권 가격
	String tkPayDt; // 이용권 구매일자
	String memId;
	
	
	public TicketVO() {
		super();
	}
	public TicketVO(String tkCd, String tkNm, String tkPrice, String tkPayDt) {
		super();
		this.tkCd = tkCd;
		this.tkNm = tkNm;
		this.tkPrice = tkPrice;
		this.tkPayDt = tkPayDt;
	}
	public String getTkCd() {
		return tkCd;
	}
	public void setTkCd(String tkCd) {
		this.tkCd = tkCd;
	}
	public String getTkNm() {
		return tkNm;
	}
	public void setTkNm(String tkNm) {
		this.tkNm = tkNm;
	}
	public String getTkPrice() {
		return tkPrice;
	}
	public void setTkPrice(String tkPrice) {
		this.tkPrice = tkPrice;
	}
	public String getTkPayDt() {
		return tkPayDt;
	}
	public void setTkPayDt(String tkPayDt) {
		this.tkPayDt = tkPayDt;
	}
	@Override
	public String toString() {
		return "Ticket [tkCd=" + tkCd + ", tkNm=" + tkNm + ", tkPrice=" + tkPrice + ", tkPayDt=" + tkPayDt + "]";
	}
	
	public String getMemId() {
		return memId;
	}
	
	
	
	
}
