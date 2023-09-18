package musicq.vo;

public class DjPlayListHitVO {
	int no;
	String djId; // 디제이아이디
	String memId; // 회원 아이디
	int likeCnt; //
	

	
	public DjPlayListHitVO(String djId, String memId) {
		super();
		this.djId = djId;
		this.memId = memId;
	}
	
	public long getNo() {
		return no;
	}

	public String getDjPlaylCd() {
		return djId;
	}
	public void setDjPlaylCd(String djPlaylCd) {
		this.djId = djPlaylCd;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	@Override
	public String toString() {
		return "DjPlaylistHitVO [djPlaylCd=" + djId + ", memId=" + memId + "]";
	}
	
	
	
}
