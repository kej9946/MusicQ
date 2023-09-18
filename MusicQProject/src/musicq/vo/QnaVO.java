package musicq.vo;

public class QnaVO {
	String qnaNo; //문의글번호
	String memId; // 회원아이디
	String qnaTitle; //글제목
	String qnaCn=""; // 글내용
	String qnaDt; // 작성일시
	String qnaReply = "아직 답변이 없습니다. 조금만 기다려 주세요 "; // 답글내용
	int qnaCnt; // 조회수
	
	/*
	 * public QnaVO() { }
	 * 
	 * public QnaVO(String qnaNo, String memId, String qnaTitle, String qnaCn,
	 * String qnaDt, String qnaCnt) { super(); this.qnaNo = qnaNo; this.memId =
	 * memId; this.qnaTitle = qnaTitle; this.qnaCn = qnaCn; this.qnaDt = qnaDt;
	 * this.qnaCnt = qnaCnt; }
	 * 
	 * public QnaVO(String memId, String qnaTitle, String qnaCn, String qnaDt) {
	 * super(); this.memId = memId; this.qnaTitle = qnaTitle; this.qnaCn = qnaCn;
	 * this.qnaDt = qnaDt; }
	 */
	
	
	
	public String getQnaNo() {
		return qnaNo;
	}
	/**
	 * @return the qnaReply
	 */
	public String getQnaReply() {
		return qnaReply;
	}
	/**
	 * @param qnaReply the qnaReply to set
	 */
	public void setQnaReply(String qnaReply) {
		this.qnaReply = qnaReply;
	}
	public void setQnaNo(String qnaNo) {
		this.qnaNo = qnaNo;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getQnaTitle() {
		return qnaTitle;
	}
	public void setQnaTitle(String qnaTitle) {
		this.qnaTitle = qnaTitle;
	}
	public String getQnaCn() {
		return qnaCn;
	}
	public void setQnaCn(String qnaCn) {
		this.qnaCn = qnaCn;
	}
	public String getQnaDt() {
		return qnaDt;
	}
	public void setQnaDt(String qnaDt) {
		this.qnaDt = qnaDt;
	}
	public int getQnaCnt() {
		return qnaCnt;
	}
	public void setQnaCnt(int qnaCnt) {
		this.qnaCnt = qnaCnt;
	}
	@Override
	public String toString() {
		return "QnaVO [qnaNo=" + qnaNo + ", memId=" + memId + ", qnaTitle=" + qnaTitle + ", qnaCn=" + qnaCn + ", qnaDt="
				+ qnaDt + ", qnaCnt=" + qnaCnt + "]";
	}
	
}
