package musicq.logincontroller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import musicq.member.service.*;

@WebServlet("/Login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public LoginServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("WEB-INF/security_index.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String uId = request.getParameter("userId");
        String uPw = request.getParameter("userPw");

        Map<String, Object> map = new HashMap<String, Object>();
        map.put("uId", uId);
        map.put("uPw", uPw);

        IMemberService service = MemberServiceImpl.getInstance();
        String loginId = service.loginChk(map);

        HttpSession session = request.getSession();
        response.setContentType("text/html; charset=UTF-8"); // 콘텐츠 타입과 문자 인코딩 설정
        PrintWriter out = response.getWriter();

        if (loginId != null) {
            session.setAttribute("loginCode", loginId);
            session.setAttribute("loginPw", uPw);

            if (uId.equals("admin1") || uId.equals("admin")  ) {
                // 관리자 페이지로 이동
                response.sendRedirect("/MusicQProject/admin_member");
            } else {
                out.println("<script>alert('로그인 완료'); window.location.href = './WeatherMusicController';</script>");
            }
        } else {
            out.println("<script>alert('로그인 실패'); window.location.href = 'index.jsp';</script>");
        }
    }
}
