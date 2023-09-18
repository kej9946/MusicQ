package musicq.vo;

public class AdminVO {
String adminId; // 관리자 아이디

public String getAdmin_Id() {
	return adminId;
}

public void setAdmin_Id(String adminId) {
	this.adminId = adminId;
}

@Override
public String toString() {
	return "AdminVO [adminId=" + adminId + "]";
}


}
