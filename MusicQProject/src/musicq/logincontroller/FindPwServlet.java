package musicq.logincontroller;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import musicq.member.service.IMemberService;
import musicq.member.service.MemberServiceImpl;
import mail.MailSender;

@WebServlet("/findpw")
public class FindPwServlet extends HttpServlet {
	
    private static final long serialVersionUID = 1L;
    
    public String memEmail;
    public String password;
    public MailSender mailSender;
    
    public FindPwServlet() {
        super();
        mailSender = new MailSender(); // 또는 MailSender 객체를 생성하는 다른 방식으로 초기화합니다.
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();

        IMemberService memberService = MemberServiceImpl.getInstance();
        memEmail = request.getParameter("email");
        password = memberService.getPw(memEmail);

        if (password != null) {
            // 비밀번호 찾기 후 이메일
            mailSender.setTo(memEmail);
            mailSender.setSubject("비밀번호 찾기");
            mailSender.setBodyText("당신의 비밀번호는 " + password);
            mailSender.sendEmail();

            out.println("<script>alert('비밀번호가 이메일로 전송되었습니다. \\n 이메일을 확인해주세요.\\n \\n 확인 버튼을 누르면 로그인  페이지로 이동합니다.'); location.href='login.jsp';</script>");
        } else {
            out.println("<script>alert('입력한 이메일에 해당하는 계정이 없습니다.\\n \\n 확인 버튼을 누르면 로그인 페이지로 이동합니다.'); location.href='login.jsp';</script>");
        }
    }
}
