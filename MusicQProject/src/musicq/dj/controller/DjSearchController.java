package musicq.dj.controller;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import musicq.dj.service.DjPageServiceImpl;
import musicq.dj.service.IDjPageService;
import musicq.search.service.ISearchService;
import musicq.search.service.SearchServiceImpl;
import musicq.vo.DjPageVO;
import musicq.vo.MusicVO;

@WebServlet("/dj/djsearch.do")
public class DjSearchController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	

		System.out.println("컨트롤러 연결 완료");
//		세션을 가져옴
			HttpSession session = request.getSession();

			String uId = null;
			String uPw = null;

			//	로그인 정보 가져오기
			if (session.getAttribute("loginCode") != null && session.getAttribute("loginPw") != null) {
				uId = (String) session.getAttribute("loginCode");
				uPw = (String) session.getAttribute("loginPw");

				// 로그인 정보가 없을 경우
			}
			
			DjPageVO djpv = new DjPageVO(uId);
			IDjPageService djps = DjPageServiceImpl.getInstance();
			System.out.println("search컨트롤러 서비스 객체 생성 완료");
			System.out.println(djpv.getMemId() + ">>memId 정보 저장 완료  ");
			System.out.println(uId + "출력");
			
			
			String redirectURL = request.getContextPath() + "/dj/djsearch.jsp?uId=" + URLEncoder.encode(uId, "UTF-8");
			response.sendRedirect(redirectURL); // resp:정보전달(리다이렉트로 객체 정보 전달은 불가)
	System.out.println("리다이렉트 완료");
}
		
		
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
