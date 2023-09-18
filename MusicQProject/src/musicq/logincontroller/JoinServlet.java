package musicq.logincontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Join")
public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public JoinServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//회원가입 코드를 생성
		request.setAttribute("joinCode","yes");
		
		//request.getRequestDispatcher("전달할 위치 지정") - 메소드를 이용해 요청정보를 전달해줄 객체를 생성할 수 있음
		RequestDispatcher disp = request.getRequestDispatcher("index.jsp"); //webContent하위 파일에서부터 위치 지정
		disp.forward(request, response);
	
	}
 
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}








