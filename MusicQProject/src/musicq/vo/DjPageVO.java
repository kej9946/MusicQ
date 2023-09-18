package musicq.vo;

import java.util.ArrayList;




public class DjPageVO {

	String memId; //회원아이디
	String djpNm; // DJ페이지명
	String djpIntro; // DJ페이지 소개글
	String djpKeywd; // DJ페이지 검색키워드(대표테마)
	String djpHit; // DJ페이지 찜수 
	String djpImgCd; // DJ페이지 대표 이미지 코드
	String djpDjimgCd; // DJ페이지 프로필 이미지 코드
	String djpSns; // DJ SNS주소
	String djNm; // DJ 닉네임
	String djpGenre; // DJ페이지 대표장르
	String djpSnsCorp; // sns종류(유튜브, 인스타, 트위터, 페이스북, 기타)
   
	
	public DjPageVO() {}
	
	
	
	public DjPageVO(String memId, String djpNm, String djpIntro, String djpKeywd, String djpHit, String djpImgCd,
			String djpDjimgCd, String djpSns, String djNm, String djpGenre, String djpSnsCorp) {
		super();
		this.memId = memId;
		this.djpNm = djpNm;
		this.djpIntro = djpIntro;
		this.djpKeywd = djpKeywd;
		this.djpHit = djpHit;
		this.djpImgCd = djpImgCd;
		this.djpDjimgCd = djpDjimgCd;
		this.djpSns = djpSns;
		this.djNm = djNm;
		this.djpGenre = djpGenre;
		this.djpSnsCorp = djpSnsCorp;
	}




	public DjPageVO(String memId) {
		super();
		this.memId = memId;
		this.djpNm = djpNm;
		this.djpIntro = djpIntro;
		this.djpKeywd = djpKeywd;
		this.djpHit = djpHit;
		this.djpImgCd = djpImgCd;
		this.djpDjimgCd = djpDjimgCd;
		this.djpSns = djpSns;
		this.djNm = djNm;
		this.djpGenre = djpGenre;
		this.djpSnsCorp = djpSnsCorp;
		
	}

	public String getMemId() {
		return memId;
	}



	public void setMemId(String memId) {
		this.memId = memId;
	}




	public String getDjpNm() {
		return djpNm;
	}




	public void setDjpNm(String djpNm) {
		this.djpNm = djpNm;
	}




	public String getDjpIntro() {
		return djpIntro;
	}




	public void setDjpIntro(String djpIntro) {
		this.djpIntro = djpIntro;
	}




	public String getDjpKeywd() {
		return djpKeywd;
	}




	public void setDjpKeywd(String djpKeywd) {
		this.djpKeywd = djpKeywd;
	}




	public String getDjpHit() {
		return djpHit;
	}




	public void setDjpHit(String djpHit) {
		this.djpHit = djpHit;
	}




	public String getDjpImgCd() {
		return djpImgCd;
	}




	public void setDjpImgCd(String djpImgCd) {
		this.djpImgCd = djpImgCd;
	}




	public String getDjpDjimgCd() {
		return djpDjimgCd;
	}




	public void setDjpDjimgCd(String djpDjimgCd) {
		this.djpDjimgCd = djpDjimgCd;
	}




	public String getDjpSns() {
		return djpSns;
	}




	public void setDjpSns(String djpSns) {
		this.djpSns = djpSns;
	}




	public String getDjNm() {
		return djNm;
	}




	public void setDjNm(String djNm) {
		this.djNm = djNm;
	}




	public String getdjpGenre() {
		return djpGenre;
	}




	public void setdjpGenre(String djpGenre) {
		this.djpGenre = djpGenre;
	}


	public String getDjpSnsCorp() {
		return djpSnsCorp;
	}





	public void setDjpSnsCorp(String djpSnsCorp) {
		this.djpSnsCorp = djpSnsCorp;
	}





	@Override
	public String toString() {
		return "DjPageVO [memId=" + memId + ", djpNm=" + djpNm + ", djpIntro=" + djpIntro + ", djpKeywd=" + djpKeywd
				+ ", djpHit=" + djpHit + ", djpImgCd=" + djpImgCd + ", djpDjimgCd=" + djpDjimgCd + ", djpSns=" + djpSns
				+ ", djNm=" + djNm + ", djpGenre=" + djpGenre + ", djpSnsCorp=" + djpSnsCorp + "]";
	}





	
	
	


	}
	
	

