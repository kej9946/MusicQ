package musicq.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import musicq.member.service.IMemberService;
import musicq.member.service.MemberServiceImpl;
import musicq.vo.MemberVO;


@WebServlet("/updateMem")
public class UpdateMem extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String memId = request.getParameter("memId");
		
		IMemberService service = MemberServiceImpl.getInstance();
		
		MemberVO vo = service.getMember(memId);
		
		request.setAttribute("update", vo);
		
		request.getRequestDispatcher("/view/update.jsp").forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String memId = request.getParameter("memId");
		String memPw = request.getParameter("memPw");
		String memPww = request.getParameter("memPww");
		String memName = request.getParameter("memName");
		String memGender = request.getParameter("memGender");
		String memBirth = request.getParameter("memBirth");
		String memTel = request.getParameter("memTel");
		String memAddr1 = request.getParameter("memAddr1");
		String memEmail = request.getParameter("memEmail");
		
		MemberVO vo = new MemberVO();
		vo.setMemId(memId);
		vo.setMemPw(memPw);
		vo.setMemPw(memPww);
		vo.setMemName(memName);
		vo.setMemGender(memGender);
		vo.setMemBirth(memBirth);
		vo.setMemTel(memTel);
		vo.setMemAddr1(memAddr1);
		vo.setMemEmail(memEmail);
		
		IMemberService service = MemberServiceImpl.getInstance();
		
		int res = service.modifyMember(vo);
		
		if( res > 0) {
			response.sendRedirect("/MusicQProject/mypage2.jsp");
		}else {
			response.sendRedirect("/MusicQProject/updateMem?id=" + memId);
		}
		
		
		
	}

}

