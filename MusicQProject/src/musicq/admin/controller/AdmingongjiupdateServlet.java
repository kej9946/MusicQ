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

@WebServlet("/update_gongji")
public class AdmingongjiupdateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 폼으로부터 전달받은 수정된 공지사항 정보를 처리하여 업데이트하는 로직을 작성
    	
    	request.setCharacterEncoding("UTF-8"); // 인코딩 설정 추가

        String gNo = request.getParameter("g_No");
        String gTitle = request.getParameter("g_Title");
        String gContent = request.getParameter("g_Content");

        // 공지사항 업데이트 로직 실행
        IGongjiService gs = GongjiServiceImpl.getInstance();
        
        GongjiVO gongji = new GongjiVO();
        gongji.setgNo(gNo);
        gongji.setgTitle(gTitle);
        gongji.setgContent(gContent);
       
        int result = gs.updateGongji(gongji);
        
        if (result > 0) {
            // 수정 성공 시, 리다이렉트 또는 포워딩 등의 작업 수행
            // 공지사항 페이지로 리다이렉트
            response.sendRedirect("admin_gongji");
        } else {
            // 삭제 실패 시, 에러 메시지 출력 및 이전 페이지로 돌아가는 스크립트 실행
            response.setContentType("text/html;charset=UTF-8");
            response.getWriter().println("<script>alert('수정에 실패했습니다.');</script>");
            response.getWriter().println("<script>history.back();</script>");
        }
        
    }
}
