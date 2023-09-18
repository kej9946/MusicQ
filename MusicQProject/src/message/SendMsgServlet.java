package message;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/sendmessage")
public class SendMsgServlet extends HttpServlet {
    
    private static final long serialVersionUID = 1L;
    private MessageTemplate messageTemplate;
    
    public SendMsgServlet() {
        super();
        this.messageTemplate = new MessageTemplate();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String phoneNumber = request.getParameter("tel");
        String verificationCode = generateVerificationCode(); // 인증번호 생성 함수 호출
        String content = "인증번호: " + verificationCode;
        
        HttpSession session = request.getSession();
        session.setAttribute("verificationCode", verificationCode);
        
        messageTemplate.setPhoneNumber(phoneNumber);
        messageTemplate.sendOne(content);
        
        response.getWriter().append("success");
    }
    
    private String generateVerificationCode() {
        int code = (int) (Math.random() * 10000); // 0 이상 10000 미만의 정수형 인증번호 생성
        return String.format("%04d", code); // 4자리 수의 인증번호를 문자열로 반환
    }
}
