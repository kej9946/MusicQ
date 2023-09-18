package musicq.vo;

public class ChatVO {
String chatRno; // 채팅방 번호
String memId; // 회원 아이디
String chatNo; // 채팅 번호
String chatCn; // 채팅 내용
String chatDt; // 채팅 일시
public ChatVO(String chatRno, String memId, String chatNo, String chatCn, String chatDt) {
	super();
	this.chatRno = chatRno;
	this.memId = memId;
	this.chatNo = chatNo;
	this.chatCn = chatCn;
	this.chatDt = chatDt;
}
public String getChatRno() {
	return chatRno;
}
public void setChatRno(String chatRno) {
	this.chatRno = chatRno;
}
public String getMemId() {
	return memId;
}
public void setMemId(String memId) {
	this.memId = memId;
}
public String getChatNo() {
	return chatNo;
}
public void setChatNo(String chatNo) {
	this.chatNo = chatNo;
}
public String getChatCn() {
	return chatCn;
}
public void setChatCn(String chatCn) {
	this.chatCn = chatCn;
}
public String getChatDt() {
	return chatDt;
}
public void setChatDt(String chatDt) {
	this.chatDt = chatDt;
}
@Override
public String toString() {
	return "ChatVO [chatRno=" + chatRno + ", memId=" + memId + ", chatNo=" + chatNo + ", chatCn=" + chatCn + ", chatDt="
			+ chatDt + "]";
}

}
