package musicq.admin.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import musicq.member.service.MemberServiceImpl;
import musicq.member.service.IMemberService;

@WebServlet("/delete_member")
public class AdminMemberdeleteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // 멤버 아이디를 가져옴
        String memberId = request.getParameter("id");

        // 멤버 삭제 로직 실행
        IMemberService memService = MemberServiceImpl.getInstance();
        int result = memService.removeMember(memberId);

        // 삭제 결과에 따라 처리
        if (result > 0) {
            // 삭제 성공 시, 리다이렉트 또는 포워딩 등의 작업 수행
            // 예시: 삭제 후 메인 페이지로 리다이렉트
            response.sendRedirect("admin_member");
        } else {
            // 삭제 실패 시, 에러 메시지 출력 및 이전 페이지로 돌아가는 스크립트 실행
            response.setContentType("text/html;charset=UTF-8");
            response.getWriter().println("<script>alert('삭제에 실패했습니다.');</script>");
            response.getWriter().println("<script>history.back();</script>");
        }
    }
}
