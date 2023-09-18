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

@WebServlet("/detail_munE")
public class AdminMunEdetailServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8"); // Add encoding setting

        String qTitle = request.getParameter("qTitle");
        IQnaService qnaService = QnaServiceImpl.getInstance();
        
        QnaVO munE = qnaService.getQnaDetail(qTitle);

        request.setAttribute("munE", munE);

        request.getRequestDispatcher("/masterJsp/MunEdetail.jsp").forward(request, response);
    }
}
