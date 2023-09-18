package musicq.vo;

public class MemPlaylistVO {

	String memPlaylistCd; //회원별 플레이리스트 코드
	String memId; // 회원 아이디
	String mCd; // 음악 코드
	String memPlaylistNm; // 재생리스트 이름
	
	public MemPlaylistVO() {}
	
	
	public MemPlaylistVO(String memPlaylistCd, String memId, String mCd, String memPlaylistNm) {
		super();
		this.memPlaylistCd = memPlaylistCd;
		this.memId = memId;
		this.mCd = mCd;
		this.memPlaylistNm = memPlaylistNm;
	}
	public String getMemPlaylistCd() {
		return memPlaylistCd;
	}
	public void setMemPlaylistCd(String memPlaylistCd) {
		this.memPlaylistCd = memPlaylistCd;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getmCd() {
		return mCd;
	}
	public void setmCd(String mCd) {
		this.mCd = mCd;
	}
	public String getMemPlaylistNm() {
		return memPlaylistNm;
	}
	public void setMemPlaylistNm(String memPlaylistNm) {
		this.memPlaylistNm = memPlaylistNm;
	}
	@Override
	public String toString() {
		return "MemPlaylistVO [memPlaylistCd=" + memPlaylistCd + ", memId=" + memId + ", mCd=" + mCd
				+ ", memPlaylistNm=" + memPlaylistNm + "]";
	}
	
	
	
	
}
