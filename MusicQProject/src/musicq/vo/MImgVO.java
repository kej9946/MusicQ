package musicq.vo;

public class MImgVO {
	String mCd; //음악코드
	String mImgCd; // 음악 이미지 코드
	public MImgVO(String mCd, String mImgCd) {
		super();
		this.mCd = mCd;
		this.mImgCd = mImgCd;
	}
	public String getmCd() {
		return mCd;
	}
	public void setmCd(String mCd) {
		this.mCd = mCd;
	}
	public String getmImgCd() {
		return mImgCd;
	}
	public void setmImgCd(String mImgCd) {
		this.mImgCd = mImgCd;
	}
	@Override
	public String toString() {
		return "MImgVO [mCd=" + mCd + ", mImgCd=" + mImgCd + "]";
	}
	
	
	
	
}
