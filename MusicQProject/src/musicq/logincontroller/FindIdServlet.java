package musicq.logincontroller;

import java.io.*;
import java.util.List;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import musicq.member.service.IMemberService;
import musicq.member.service.MemberServiceImpl;
import musicq.vo.MemberVO;


@WebServlet("/findId")
public class FindIdServlet extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();

		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String id="";
		IMemberService memService = MemberServiceImpl.getInstance();
		MemberVO mv = new MemberVO();
		mv.setMemName(name);
		mv.setMemTel(phone);
	
		List <MemberVO>list = memService.searchMember(mv);
		
		for (MemberVO move : list) {
			id = move.getMemId();
			
		}
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<meta charset='UTF-8'>");
		out.println("<title>아이디 찾기 결과</title>");
		out.println("<style>");
		out.println("body {");
		out.println("    font-family: Arial, sans-serif;");
		out.println("    background-color: #f2f2f2;");
		out.println("    padding: 20px;");
		out.println("    display: flex;");
		out.println("    flex-direction: column;");
		out.println("    align-items: center;");
		out.println("    min-height: 100vh;");
		out.println("}");

		out.println(".container {");
		out.println("    background-color: #ffffff;");
		out.println("    border: 1px solid #cccccc;");
		out.println("    padding: 20px;");
		out.println("    max-width: 400px;");
		out.println("    margin-top: 50px;");
		out.println("}");

		out.println("h2 {");
		out.println("    color: #333333;");
		out.println("    margin-bottom: 20px;");
		out.println("}");

		out.println(".button {");
		out.println("    display: inline-block;");
		out.println("    background-color: #4caf50;");
		out.println("    color: #ffffff;");
		out.println("    padding: 10px 20px;");
		out.println("    border: none;");
		out.println("    border-radius: 4px;");
		out.println("    cursor: pointer;");
		out.println("    text-decoration: none;");
		out.println("    margin-bottom: 10px;"); // Add margin-bottom to create vertical spacing
		out.println("}");

		out.println("</style>");
		out.println("</head>");
		out.println("<body>");
		out.println("<div class='container'>");
		out.println("<h2>아이디 찾기 결과</h2>");
		out.println("<p>이름: " + name + "</p>");
		out.println("<p>핸드폰 번호: " + phone + "</p>");

		if (id != null && !id.isEmpty()) {
		    out.println("<p>아이디: " + id + "</p>");
		    out.println("<a href='findPw.jsp' class='button'>비밀번호 찾기 페이지로 이동</a>");
			out.println(" ");
		    out.println("<a href='login.jsp' class='button'>로그인 페이지로 돌아가기</a>");
		} else {
		    out.println("<p>아이디를 찾을 수 없습니다.</p>");
		    out.println("<a href='login.jsp' class='button'>로그인 페이지로 돌아가기</a>");
		}

		out.println("</div>");
		out.println("</body>");
		out.println("</html>");

		out.close();


	}
}
