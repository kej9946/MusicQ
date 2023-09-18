package musicq.vo;

public class MHitVO {
	String mCd; //음악 코드
	String memId; // 회원 아이디
	String memHitDt; // 찜 생성 일자
	public MHitVO(String mCd, String memId, String memHitDt) {
		super();
		this.mCd = mCd;
		this.memId = memId;
		this.memHitDt = memHitDt;
	}
	public String getmCd() {
		return mCd;
	}
	public void setmCd(String mCd) {
		this.mCd = mCd;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getMemHitDt() {
		return memHitDt;
	}
	public void setMemHitDt(String memHitDt) {
		this.memHitDt = memHitDt;
	}
	@Override
	public String toString() {
		return "MHitVO [mCd=" + mCd + ", memId=" + memId + ", memHitDt=" + memHitDt + "]";
	}
	
	
	
	
}
