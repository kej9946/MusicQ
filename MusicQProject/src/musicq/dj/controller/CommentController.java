package musicq.dj.controller;

import java.io.IOException;
import java.net.URLEncoder;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import board.service.IQnaService;
import board.service.QnaServiceImpl;
import musicq.dj.service.DjCommentServiceImpl;
import musicq.dj.service.DjPageServiceImpl;
import musicq.dj.service.IDjCommentService;
import musicq.dj.service.IDjPageService;
import musicq.vo.DjPageVO;
import musicq.vo.DjpCmntVO;
import musicq.vo.QnaVO;

@MultipartConfig
@WebServlet("/cmntinsert.do")
public class CommentController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	System.out.println("insert doget 컨트롤러 연결");
		String djId = request.getParameter("djId");
		String cmntCn = request.getParameter("cmntCn");
		System.out.println(cmntCn + "정보저장");

		
		System.out.println("djId>>" + djId);
//		세션을 가져옴
		HttpSession session = request.getSession();

		String uId = null;
		String uPw = null;

//		로그인한 사용자 정보 가져옴
		if (session.getAttribute("loginCode") != null && session.getAttribute("loginPw") != null) {
			uId = (String) session.getAttribute("loginCode");
			uPw = (String) session.getAttribute("loginPw");

		}
	

		request.setAttribute("djId", djId);
	    request.getRequestDispatcher("/dj/cmntinsert.jsp").forward(request, response);

	
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println("insert doPost, 컨트롤러연결");
		
		String djId = request.getParameter("djId");
		String cmntCn = request.getParameter("cmntCn");
		System.out.println(cmntCn + "정보저장");

		
		System.out.println("djId>>" + djId);
//		세션을 가져옴
		HttpSession session = request.getSession();

		String uId = null;
		String uPw = null;

//		로그인한 사용자 정보 가져옴
		if (session.getAttribute("loginCode") != null && session.getAttribute("loginPw") != null) {
			uId = (String) session.getAttribute("loginCode");
			uPw = (String) session.getAttribute("loginPw");

		}
	

		// 서비스 객체 생성
		IDjCommentService service = DjCommentServiceImpl.getInstance();
		DjpCmntVO cmntv = new DjpCmntVO();
        
		System.out.println("vo객체 생성");

		cmntv.setCmntCn(cmntCn);
		cmntv.setMemId(uId);
		cmntv.setDjId(djId);

		System.out.println("정보set");
		
		request.setAttribute("djId", djId);
		request.setAttribute("cmntCn", cmntCn);
		
		
		// 글 등록하기
		int cnt = service.insertCmnt(cmntv);

		String msg = "";

		if (cnt > 0) {
			msg = "댓글 등록 성공";
			System.out.println(msg);
		} else {
			msg = "댓글 등록 실패";
			System.out.println(msg);
		}


	response.sendRedirect(request.getContextPath() + "/cmntList.do?djId=" + URLEncoder.encode(djId, "UTF-8"));
	//response.sendRedirect(request.getContextPath() + "/cmntList.do");

	}
}