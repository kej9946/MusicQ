package musicq.dj.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import musicq.dj.service.DjPageServiceImpl;
import musicq.dj.service.IDjPageService;
import musicq.music.service.IMusicService;
import musicq.music.service.MusicServiceIpml;
import musicq.vo.DjPageVO;
import musicq.vo.MusicVO;

@WebServlet("/dj/djpmain.do")
public class DjMainController extends HttpServlet {

	private static final long serialVersionUID = 1L;


	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("컨트롤러 연결 완료");
		
		String contextPath = req.getContextPath();
		
		System.out.println(contextPath);

//	세션을 가져옴
		HttpSession session = req.getSession();

		String uId = null;
		String uPw = null;
		
        resp.setContentType("text/html; charset=UTF-8"); // 콘텐츠 타입과 문자 인코딩 설정

		 PrintWriter out = resp.getWriter();
		
		 //	로그인 정보 가져오기
		if (session.getAttribute("loginCode") != null && session.getAttribute("loginPw") != null) {
			uId = (String) session.getAttribute("loginCode");
			uPw = (String) session.getAttribute("loginPw");

			// 로그인 정보가 없을 경우
		} else {
			System.out.println("(DjMainController 로그인 정보가 없는 회원");
			/*
			 * String redirectURL = req.getContextPath() + "/index.jsp";
			 * 
			 * resp.sendRedirect(redirectURL);
			 */
			 out.println("<script>alert('회원전용 페이지입니다. 로그인 후 이용해주세요!'); window.location.href = '../index.jsp';</script>");
			return; //여기서 처리 종료
		}

		DjPageVO djpv = new DjPageVO(uId);
		IDjPageService djps = DjPageServiceImpl.getInstance();
		System.out.println("서비스 객체 생성 완료");
		System.out.println(djpv.getMemId() + ">>memId 정보 저장 완료  ");
		System.out.println(uId + "출력");
		
		// 해당 아이디의 DJ페이지 생성 여부 확인(none>>없음, yes >>있음)
		String result = "";
		if (djps.getDjp(uId) == null) {
			result = "none";
		} else {
			result = "yes";
		}
		
		req.setAttribute("result", result);
		
	
		//String djId = req.getParameter("uId");
			
		//String redirectURL = req.getContextPath() + "/dj/djpmain.jsp?uId=" + URLEncoder.encode(uId, "UTF-8")
		//		+ "&result=" + result;
		//resp.sendRedirect(redirectURL); // resp:정보전달(리다이렉트로 객체 정보 전달은 불가)
		req.getRequestDispatcher("/dj/djpmain.jsp").forward(req, resp);
		
		System.out.println(" DjMainController 완료");
	}

}
