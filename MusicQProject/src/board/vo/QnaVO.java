package board.vo;

public class QnaVO {
	String qnaNo; //문의글번호
	String memId; // 회원아이디
	String qnaTitle; //글제목
	String qnaCn; // 글내용
	String qnaDt; // 작성일시
	
	public QnaVO(String qnaNo, String memId, String qnaTitle, String qnaCn, String qnaDt, String qnaCnt) {
		super();
		this.qnaNo = qnaNo;
		this.memId = memId;
		this.qnaTitle = qnaTitle;
		this.qnaCn = qnaCn;
		this.qnaDt = qnaDt;
	}
	public String getQnaNo() {
		return qnaNo;
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
	@Override
	public String toString() {
		return "QnaVO [qnaNo=" + qnaNo + ", memId=" + memId + ", qnaTitle=" + qnaTitle + ", qnaCn=" + qnaCn + ", qnaDt="
				+ qnaDt + ", qnaCnt=" + "]";
	}
	
}
