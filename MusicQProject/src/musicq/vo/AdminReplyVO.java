package musicq.vo;

public class AdminReplyVO {
String replyCd; // 리플레이 코드
String qnaNo;	// QNA번호
String replyDt; // 리플레이 일자
String replyCn; // 리플레이 수
String adminId; // 관리자 아이디
public AdminReplyVO(String replyCd, String qnaNo, String replyDt, String replyCn, String adminId) {
	super();
	this.replyCd = replyCd;
	this.qnaNo = qnaNo;
	this.replyDt = replyDt;
	this.replyCn = replyCn;
	this.adminId = adminId;
}
public String getReplyCd() {
	return replyCd;
}
public void setReply_Cd(String replyCd) {
	this.replyCd = replyCd;
}
public String getQnaNo() {
	return qnaNo;
}
public void setQna_No(String qnaNo) {
	this.qnaNo = qnaNo;
}
public String getReplyDt() {
	return replyDt;
}
public void setReply_Dt(String replyDt) {
	this.replyDt = replyDt;
}
public String getReplyCn() {
	return replyCn;
}
public void setReply_Cn(String replyCn) {
	this.replyCn = replyCn;
}
public String getAdminId() {
	return adminId;
}
public void setAdmin_Id(String adminId) {
	this.adminId = adminId;
}
@Override
public String toString() {
	return "Admin_Reply [reply_Cd=" + replyCd + ", qna_No=" + qnaNo + ", reply_Dt=" + replyDt + ", reply_Cn="
			+ replyCn + ", admin_Id=" + adminId + "]";
}


}
