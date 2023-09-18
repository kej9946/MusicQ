package musicq.admin.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;

import board.service.IQnaService;
import board.service.QnaServiceImpl;
import musicq.vo.QnaVO;

@WebServlet("/reply_munE")
public class AdminMunEReplServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8"); // Add encoding setting

        String replyContent = request.getParameter("replyContent");
        String qTitle = request.getParameter("qTitle");
        IQnaService qs = QnaServiceImpl.getInstance();
        QnaVO qvo = qs.getQnaDetail(qTitle);
        qvo.setQnaReply(replyContent);
        int cnt = qs.updateQna(qvo);

        if (cnt > 0) {
            // 답글 성공 시, 디스패처를 사용하여 문의사항 페이지로 포워딩
            // RequestDispatcher dispatcher = request.getRequestDispatcher("admin_munE");
            // dispatcher.forward(request, response);
        	
        	response.sendRedirect("admin_munE");
        } else {
            // 답글 실패 시, 에러 메시지 출력 및 이전 페이지로 돌아가는 스크립트 실행
            response.setContentType("text/html;charset=UTF-8");
            response.getWriter().println("<script>alert('삭제에 실패했습니다.');</script>");
            response.getWriter().println("<script>history.back();</script>");
        }
    }
}
