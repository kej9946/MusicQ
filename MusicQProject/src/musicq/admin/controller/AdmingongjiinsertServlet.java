package musicq.admin.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.service.GongjiServiceImpl;
import board.service.IGongjiService;
import musicq.vo.GongjiVO;

@WebServlet("/insert_gongji")
public class AdmingongjiinsertServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8"); // 인코딩 설정 추가

        IGongjiService gs = GongjiServiceImpl.getInstance();

        String gTitle = request.getParameter("g_Title");
        String gContent = request.getParameter("g_Content");

        // 공지사항 VO 객체 생성 및 데이터 설정
        GongjiVO gongji = new GongjiVO();
        gongji.setaId("admin1");
        gongji.setgTitle(gTitle);
        gongji.setgContent(gContent);

        // 공지사항 DAO를 사용하여 데이터베이스에 공지사항 추가
        int result = gs.insertGongji(gongji);
        System.out.println(result);

        if (result > 0) {
            // 생성 성공 시, 리다이렉트 또는 포워딩 등의 작업 수행
            // 공지사항 작성 후에는 공지사항 리스트 페이지로 리다이렉트
            response.sendRedirect("admin_gongji");
        } else {
            // 생성 실패 시, 에러 메시지 출력 및 이전 페이지로 돌아가는 스크립트 실행
            response.setContentType("text/html;charset=UTF-8");
            response.getWriter().println("<script>alert('생성에 실패했습니다.');</script>");
            response.getWriter().println("<script>history.back();</script>");
        }
    }
}
