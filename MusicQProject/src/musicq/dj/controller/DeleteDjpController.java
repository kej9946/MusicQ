package musicq.dj.controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import board.service.IQnaService;
import board.service.QnaServiceImpl;
import musicq.dj.service.DjCommentServiceImpl;
import musicq.dj.service.IDjCommentService;
import musicq.vo.DjpCmntVO;
import musicq.vo.QnaVO;

@WebServlet("/cmntdelete.do")
public class DeleteDjpController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String referer = request.getHeader("Referer");
		System.out.println("delete dopost 컨트롤러 연결");

		String cmntCn = request.getParameter("cmntCn");
		String djId = request.getParameter("djId");
		String writeId = request.getParameter("memId");
		String cmntDt = request.getParameter("cmntDt");

		HttpSession session = request.getSession();
		String uId = (String) session.getAttribute("loginCode");

		System.out.println("uId>>" + uId);

		request.setAttribute("djId", djId);
		request.setAttribute("cmntCn", cmntCn);
		request.setAttribute("writeId", writeId);
		
		System.out.println("cmntCn"+cmntCn);
		
		
		
		IDjCommentService service = DjCommentServiceImpl.getInstance();
		DjpCmntVO cmntv = new DjpCmntVO();
		cmntv.setCmntCn(cmntCn);
		System.out.println(cmntv.toString());
		
		System.out.println("삭제시작");

		int cnt = service.deleteCmnt(cmntv);

		System.out.println("삭제작업완료");

		System.out.println(cnt);

		String msg = "";

		if (cnt > 0) {
			msg = "댓글 삭제 성공";
			request.setAttribute("deleteMsg", msg);
		} else {
			msg = "삭제할 권한이 없습니다.";
			request.setAttribute("failMsg", msg);

		}
//		response.sendRedirect(request.getContextPath() + "/cmntinsert.do?djId=" + URLEncoder.encode(djId, "UTF-8"));
		response.sendRedirect(request.getContextPath() + "/mydjpage2.do?djId=" + URLEncoder.encode(djId, "UTF-8"));

	}// 메소드 종료
}// 클래스 종료