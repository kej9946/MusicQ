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

@WebServlet("/detail_gongji")
public class AdmingongjidetailServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	
        request.setCharacterEncoding("UTF-8"); // 인코딩 설정 추가
    	
        String gNo = request.getParameter("gNo");
       

        IGongjiService gs = GongjiServiceImpl.getInstance();
        GongjiVO gongji = gs.getGongjiDetail(gNo);
       

       

        // 획득한 공지사항 정보를 request 속성에 저장
        request.setAttribute("gongji", gongji);

        // 상세 정보를 표시할 JSP 페이지로 포워딩
        request.getRequestDispatcher("/masterJsp/gongjidetail.jsp").forward(request, response);
    }
}
