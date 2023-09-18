package musicq.vo;

public class MsqImgVO {
	String mgqImgCd; //이미지 코드
	String imgPath; // 경로
	public MsqImgVO(String mgqImgCd, String imgPath) {
		super();
		this.mgqImgCd = mgqImgCd;
		this.imgPath = imgPath;
	}
	public String getMgqImgCd() {
		return mgqImgCd;
	}
	public void setMgqImgCd(String mgqImgCd) {
		this.mgqImgCd = mgqImgCd;
	}
	public String getImgPath() {
		return imgPath;
	}
	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}
	@Override
	public String toString() {
		return "MsqImgVO [mgqImgCd=" + mgqImgCd + ", imgPath=" + imgPath + "]";
	}
	
	
}
