package musicq.vo;

public class MemPlayDataVO {
	String mCd; //음악 코드
	String memId; // 회원 ID
	String playMDt; // 재생일시
	String playWether; // 재생시점 날씨
	String playSeason; // 재생시점 계절
	public MemPlayDataVO(String mCd, String memId, String playMDt, String playWether, String playSeason) {
		super();
		this.mCd = mCd;
		this.memId = memId;
		this.playMDt = playMDt;
		this.playWether = playWether;
		this.playSeason = playSeason;
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
	public String getPlayMDt() {
		return playMDt;
	}
	public void setPlayMDt(String playMDt) {
		this.playMDt = playMDt;
	}
	public String getPlayWether() {
		return playWether;
	}
	public void setPlayWether(String playWether) {
		this.playWether = playWether;
	}
	public String getPlaySeason() {
		return playSeason;
	}
	public void setPlaySeason(String playSeason) {
		this.playSeason = playSeason;
	}
	@Override
	public String toString() {
		return "MemPlayDataVO [mCd=" + mCd + ", memId=" + memId + ", playMDt=" + playMDt + ", playWether=" + playWether
				+ ", playSeason=" + playSeason + "]";
	}
	
	
	
	
	
	
	
}
