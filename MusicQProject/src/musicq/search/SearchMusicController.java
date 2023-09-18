package musicq.search;

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

@WebServlet("/search.do")
public class SearchMusicController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//사용자가 입력한 검색어(keyword)가져오기
		String keyword = request.getParameter("musicList");
		
		System.out.println(keyword); //입력값 가져옴
		
		
		//2. 검색어로 음악 검색
		ISearchService service = SearchServiceImpl.getInstance(); 

		MusicVO vo = new MusicVO();
		vo.setmNm(keyword);
		
		
		List<MusicVO> searchKeyword = service.keywordMusic(vo);

		//3. 검색 결과를 request에 저장
		request.setAttribute("musicList", searchKeyword);
		
		System.out.println(searchKeyword);
		//4. 검색 결과 페이지로 포워딩
		request.getRequestDispatcher("./search/searchMusicList.jsp").forward(request, response);		
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
