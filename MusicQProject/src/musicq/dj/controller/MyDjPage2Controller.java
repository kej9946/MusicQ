package musicq.dj.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import musicq.dj.service.DjPageServiceImpl;
import musicq.dj.service.IDjPageService;
import musicq.vo.DjPageVO;

@WebServlet("/dj/mydjpage2.do")
public class MyDjPage2Controller extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("my2 doget 컨트롤러 연결");

		String djId = req.getParameter("djId");
		req.setAttribute("djId", djId);

		System.out.println("djId>>"+djId);
		DjPageVO djpv = new DjPageVO();
		// 1. 서비스 객체 생성하기
		IDjPageService djps = DjPageServiceImpl.getInstance();

		djpv = djps.getDjp(djId);
		

		//System.out.println("djId의 객체생성>>"+djpv.toString());
		// 3. 화면 출력을 위한 데이터 저장
		req.setAttribute("djpv", djpv);

		// 4. 해당화면으로 포워딩
		req.getRequestDispatcher("/dj/mydjpage2.jsp").forward(req, resp);
		
		System.out.println("MyDjPage2Controller 완료.,.");

	
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
