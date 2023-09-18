package musicq.admin.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import musicq.member.service.MemberServiceImpl;
import musicq.vo.MemberVO;
import musicq.member.service.IMemberService;

@WebServlet("/edit_member")
public class AdminMemberEditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	IMemberService memService = MemberServiceImpl.getInstance();
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		 // 요청 및 응답의 문자 인코딩 설정
	    request.setCharacterEncoding("UTF-8");
	    response.setContentType("text/html; charset=UTF-8");
	    response.setCharacterEncoding("UTF-8");
		
		// 멤버 정보 가져오기
		MemberVO mv = memService.getMember(request.getParameter("memId"));
	
		mv.setMemId((String) request.getParameter("memId"));
		mv.setMemPw((String) request.getParameter("memPw"));
		mv.setMemEmail((String) request.getParameter("memEmail"));
		mv.setMemTel((String) request.getParameter("memTel"));
		mv.setMemName((String) request.getParameter("memName"));
		
		int result = memService.modifyMember(mv);

		   // 업데이트 결과에 따라 처리
        if (result > 0) {
            // 업데이트 성공 시, 리다이렉트 또는 포워딩 등의 작업 수행
            // 업데이트 후 멤버 상세 페이지로 리다이렉트
        	   response.sendRedirect("admin_member");
        } else {
            // 업데이트 실패 시, 에러 메시지 출력 및 이전 페이지로 돌아가는 스크립트 실행
            response.setContentType("text/html;charset=UTF-8");
            response.getWriter().println("<script>alert('업데이트에 실패했습니다.');</script>");
            response.getWriter().println("<script>history.back();</script>");
        }
		
		
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 멤버 아이디를 가져옴
		String memberId = req.getParameter("id");

		// 멤버 정보 가져오기
		MemberVO member = memService.getMember(memberId);
		req.setAttribute("mv", member);
		

		req.getRequestDispatcher("./masterJsp/edit.jsp").forward(req, resp);
	}
}
