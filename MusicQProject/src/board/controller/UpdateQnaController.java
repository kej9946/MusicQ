package board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import board.service.IQnaService;
import board.service.QnaServiceImpl;
import musicq.vo.QnaVO;

@MultipartConfig
@WebServlet("/update.do")
public class UpdateQnaController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/Qna/qnaDetail.jsp").forward(request,response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		String qnaCn = request.getParameter("qnaCn");
		String qnaTitle = request.getParameter("qnaTitle");
		
		QnaVO vo = new QnaVO();
		
		vo.setQnaTitle(qnaTitle);
		vo.setQnaCn(qnaCn);
		
		//서비스 객체 생성
		IQnaService service = QnaServiceImpl.getInstance();

		//글 등록하기
		int cnt = service.updateQna(vo);
		
		String msg = "";
		
		if (cnt>0) {
			msg = "성공";
		}else {
			msg = "실패";
		}
		
		response.sendRedirect(request.getContextPath() + "/listQna.do");
		
	}
	
}
