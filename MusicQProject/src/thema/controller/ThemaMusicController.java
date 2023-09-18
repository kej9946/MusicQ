package thema.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import board.service.IQnaService;
import board.service.QnaServiceImpl;
import musicq.search.service.ISearchService;
import musicq.search.service.SearchServiceImpl;
import musicq.vo.MusicVO;
import musicq.vo.QnaVO;
import themaService.IThemaService;
import themaService.ThemaServiceImpl;

@WebServlet("/thema.do")
public class ThemaMusicController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String mPlace = request.getParameter("PlaceBtn");
		
		IThemaService service = ThemaServiceImpl.getInstance();
		
		MusicVO vo = new MusicVO();
		vo.setmPlace(mPlace);
		
		List<MusicVO> selctMountin = service.getPlace(vo);

		request.setAttribute("mPlace", selctMountin);
		
		request.getRequestDispatcher("./themaMusic/themaDetail.jsp").forward(request, response);		
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
