package musicq.admin.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.service.IQnaService;
import board.service.QnaServiceImpl;
import musicq.vo.QnaVO;



@WebServlet("/delete_munE")
public class AdminMunEideleteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8"); // 인코딩 설정 추가

        // 공지사항 번호를 가져옴
		String qnaTitle = request.getParameter("qnaTitle");
		IQnaService service = QnaServiceImpl.getInstance();
		
		QnaVO vo = new QnaVO();
		vo.setQnaTitle(qnaTitle);
		
		int cnt = service.deleteQna(vo);
        // 삭제 결과에 따라 처리
        if (cnt > 0) {
            // 삭제 성공 시, 리다이렉트 또는 포워딩 등의 작업 수행
            // 예시: 삭제 후 공지사항 페이지로 리다이렉트
            response.sendRedirect("admin_munE");
        } else {
            // 삭제 실패 시, 에러 메시지 출력 및 이전 페이지로 돌아가는 스크립트 실행
            response.setContentType("text/html;charset=UTF-8");
            response.getWriter().println("<script>alert('삭제에 실패했습니다.');</script>");
            response.getWriter().println("<script>history.back();</script>");
        }
    }
}
