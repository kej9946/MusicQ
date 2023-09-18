package message;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/authcheck")
public class AuthCheckServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String authno = request.getParameter("authno");
        HttpSession session = request.getSession();
        String verificationCode = (String) session.getAttribute("verificationCode");
       // verificationCode="0000"; // 문자 안쓰고 회원가입하려고 해논 기본값
        if (verificationCode != null && authno.equals(verificationCode)) {
            response.getWriter().append("success");
        } else {
            response.getWriter().append("fail");
        }
    }
}
