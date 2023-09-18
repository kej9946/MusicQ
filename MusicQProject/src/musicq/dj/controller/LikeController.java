package musicq.dj.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import musicq.vo.MemberVO;

public class LikeController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

//		  세션을 가져옴
		HttpSession session = req.getSession();

		String uId = null;
		String uPw = null;

//		로그인한 사용자 정보 가져옴
		if (session.getAttribute("loginCode") != null && session.getAttribute("loginPw") != null) {
			uId = (String) session.getAttribute("loginCode");
			uPw = (String) session.getAttribute("loginPw");

		}
	
	
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		super.doPost(req, resp);
	}
}
