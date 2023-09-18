package musicq.vo;

public class DjPlayListVO {

	String djPlaylistCd; // DJ 플레이리스트 코드
	String mCd; // 음악코드
	String memId; //회원 아이디
	String djPlaylistHit; // DJ 플레이리스트 찜수
	
	public DjPlayListVO(String djPlaylistCd, String mCd, String memId, String djPlaylistHit) {
		super();
		this.djPlaylistCd = djPlaylistCd;
		this.mCd = mCd; //cd= code
		this.memId = memId;
		this.djPlaylistHit = djPlaylistHit;
	}
	
	public String getDjPlaylistCd() {
		return djPlaylistCd;
	}
	public void setDjPlaylistCd(String djPlaylistCd) {
		this.djPlaylistCd = djPlaylistCd;
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
	public String getDjPlaylistHit() {
		return djPlaylistHit;
	}
	public void setDjPlaylistHit(String djPlaylistHit) {
		this.djPlaylistHit = djPlaylistHit;
	}
	
	@Override
	public String toString() {
		return "DjPlaylistVO [djPlaylistCd=" + djPlaylistCd + ", mCd=" + mCd + ", memId=" + memId + ", djPlaylistHit="
				+ djPlaylistHit + "]";
	}
	
	
	
	
	
}
