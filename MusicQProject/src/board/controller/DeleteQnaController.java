package board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.service.IQnaService;
import board.service.QnaServiceImpl;
import musicq.vo.QnaVO;

@WebServlet("/delete.do")
public class DeleteQnaController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String qnaTitle = request.getParameter("qnaTitle");
		IQnaService service = QnaServiceImpl.getInstance();
		
		QnaVO vo = new QnaVO();
		vo.setQnaTitle(qnaTitle);
		
		int cnt = service.deleteQna(vo);
		
		String msg = "";
		 
		if(cnt > 0) {
			msg = "성공";
		}else {
			msg = "실패";
		}
		
		response.sendRedirect(request.getContextPath() + "/listQna.do");
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
