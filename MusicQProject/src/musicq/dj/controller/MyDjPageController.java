package musicq.dj.controller;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import musicq.dj.service.DjPageServiceImpl;
import musicq.dj.service.IDjPageService;
import musicq.vo.DjPageVO;

@MultipartConfig
@WebServlet("/dj/mydjpage.do")

public class MyDjPageController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		System.out.println("get 컨트롤러 연결");
		// 세션을 가져옴
		HttpSession session = req.getSession();

		String uId = null;
		String uPw = null;

		// 로그인 정보 가져오기
		if (session.getAttribute("loginCode") != null && session.getAttribute("loginPw") != null) {
			uId = (String) session.getAttribute("loginCode");
			uPw = (String) session.getAttribute("loginPw");

			// 1. 서비스 객체 생성하기
			IDjPageService djps = DjPageServiceImpl.getInstance();
			
			// 2. dj이미지경로 가져오기
			String djpImgPath = djps.getDjpImg(uId);
			String djpDjimgPath = djps.getDjpDjimg(uId);

			// 기타
			String djNm = djps.getDjNm(uId);
			String djpIntro = djps.getDjpIntro(uId);
			String djpNm = djps.getDjpNm(uId);
			String djpSns = djps.getDjpSns(uId);
			String djpSnsCorp = djps.getDjpSnsCorp(uId);
			String djpGenre = djps.getDjpGenre(uId);
			String djpKeywd = djps.getDjpKeywd(uId);

			// 3. 화면 출력을 위한 데이터 저장
			req.setAttribute("djpImgPath", djpImgPath);
			req.setAttribute("djpDjimgPath", djpDjimgPath);
			req.setAttribute("djNm", djNm);
			req.setAttribute("djpIntro", djpIntro);
			req.setAttribute("djpNm", djpNm);
			req.setAttribute("djpSns", djpSns);
			req.setAttribute("djpSnsCorp", djpSnsCorp);
			req.setAttribute("djpGenre", djpGenre);
			req.setAttribute("djpKeywd", djpKeywd);
			
			

			// 4. 해당화면으로 포워딩
			req.getRequestDispatcher("/dj/mydjpage.jsp").forward(req, resp);
			// 로그인 정보가 없을 경우
		} else {
			System.out.println("(DjMainController 로그인 정보가 없는 회원");
			String redirectURL = req.getContextPath() + "/login.jsp";
			resp.sendRedirect(redirectURL);
			return; // 여기서 처리 종료
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("post 컨트롤러 연결");
		// 세션을 가져옴
		HttpSession session = req.getSession();

		String uId = null;
		String uPw = null;

		// 로그인 정보 가져오기
		if (session.getAttribute("loginCode") != null && session.getAttribute("loginPw") != null) {
			uId = (String) session.getAttribute("loginCode");
			uPw = (String) session.getAttribute("loginPw");

			DjPageVO djpv = new DjPageVO(uId);
			// 서비스 객체 생성
			IDjPageService djps = DjPageServiceImpl.getInstance();

			
			String redirectURL = req.getContextPath() + "/mydjpageupdate.do?uId=" + URLEncoder.encode(uId, "UTF-8");
			resp.sendRedirect(redirectURL); // resp:정보전달(리다이렉트로 객체 정보 전달은 불가)
			return; // 리다이렉트 후 메소드 실행종료
			

		}

	}
}
