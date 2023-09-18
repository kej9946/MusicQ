package board.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import board.service.IQnaService;
import board.service.QnaServiceImpl;
import musicq.vo.QnaVO;

@WebServlet("/detail.do")
public class DetailQnaController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		String uId = null;
		String uPw = null;
				
		//로그인한 사용자 정보 가져옴
		if(session.getAttribute("loginCode") != null && session.getAttribute("loginPw") != null) {
			uId = (String) session.getAttribute("loginCode");
			uPw = (String) session.getAttribute("loginPw");
		}
		
		String qnaTitle = request.getParameter("qnaTitle");
		
		//서비스 객체 생성하기
		IQnaService service = QnaServiceImpl.getInstance();
		
		//vo로 값을 가져와
		QnaVO vo = service.getQnaDetail(qnaTitle);
		
		request.setAttribute("vo", vo);

		RequestDispatcher dispatcher = request.getRequestDispatcher("/Qna/qnaDetail.jsp");
		
		dispatcher.forward(request, response);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
