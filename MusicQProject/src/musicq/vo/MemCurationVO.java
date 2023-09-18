package musicq.vo;

public class MemCurationVO {
	String memId; //회원 아이디
	String memKeywdKey; // 관심 키워드가 동일한 음악 추천
	String memMbti; // 회원 MBTI
	String memMemKeyWd; // 관심 키워드가 동일한 DJ 추천
	public MemCurationVO(String memId, String memKeywdKey, String memMbti, String memMemKeyWd) {
		super();
		this.memId = memId;
		this.memKeywdKey = memKeywdKey;
		this.memMbti = memMbti;
		this.memMemKeyWd = memMemKeyWd;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getMemKeywdKey() {
		return memKeywdKey;
	}
	public void setMemKeywdKey(String memKeywdKey) {
		this.memKeywdKey = memKeywdKey;
	}
	public String getMemMbti() {
		return memMbti;
	}
	public void setMemMbti(String memMbti) {
		this.memMbti = memMbti;
	}
	public String getMemMemKeyWd() {
		return memMemKeyWd;
	}
	public void setMemMemKeyWd(String memMemKeyWd) {
		this.memMemKeyWd = memMemKeyWd;
	}
	@Override
	public String toString() {
		return "MemCurationVO [memId=" + memId + ", memKeywdKey=" + memKeywdKey + ", memMbti=" + memMbti
				+ ", memMemKeyWd=" + memMemKeyWd + "]";
	}
	
	
}
