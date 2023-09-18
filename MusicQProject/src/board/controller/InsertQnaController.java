package board.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import board.service.IQnaService;
import board.service.QnaServiceImpl;
import musicq.vo.QnaVO;

@MultipartConfig
@WebServlet("/insert.do")
public class InsertQnaController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/Qna/qnaInsert.jsp").forward(request,response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//세션을 가져옴
		HttpSession session = request.getSession();
		
		String uId = null;
		String uPw = null;
				
		//로그인한 사용자 정보 가져옴
		if(session.getAttribute("loginCode") != null && session.getAttribute("loginPw") != null) {
			uId = (String) session.getAttribute("loginCode");
			uPw = (String) session.getAttribute("loginPw");
		}
		
		String qnaTitle = request.getParameter("qnaTitle");
		String qnaCn = request.getParameter("qnaCn");
		
		QnaVO vo = new QnaVO();
		
		vo.setMemId(uId);
		vo.setQnaTitle(qnaTitle);
		vo.setQnaCn(qnaCn);
		
		//서비스 객체 생성
		IQnaService service = QnaServiceImpl.getInstance();

		//글 등록하기
		int cnt = service.insertQna(vo);
		
		String msg = "";
		
		if (cnt>0) {
			msg = "성공";
		}else {
			msg = "실패";
		}
		
		response.sendRedirect(request.getContextPath() + "/listQna.do");
		
	}
	
}
