package musicq.dj.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.mail.Session;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import musicq.dj.dao.DjCommentDaoImple;
import musicq.dj.service.DjCommentServiceImpl;
import musicq.dj.service.IDjCommentService;
import musicq.vo.DjpCmntVO;
import musicq.vo.QnaVO;

@WebServlet("/cmntList.do")
public class CommentListController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// 한 페이지에 표시할 게시글 수
	private static final int perList = 10;

	// 페이지 당 표시할 페이지 링크 수
	private static final int perPage = 5;

	public CommentListController() {
		super();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("commentList 컨트롤러연결");

		String djId = request.getParameter("djId");
		request.setAttribute("djId", djId);
		System.out.println("djId>>" + djId);

		// 세션을 가져옴
		HttpSession session = request.getSession();

		String uId = null;
		String uPw = null;

		// 로그인 정보 가져오기
		if (session.getAttribute("loginCode") != null && session.getAttribute("loginPw") != null) {
			uId = (String) session.getAttribute("loginCode");
			uPw = (String) session.getAttribute("loginPw");

			// 정보 조회를 위한 서비스객체 생성하기

			IDjCommentService service = DjCommentServiceImpl.getInstance();
			DjpCmntVO cmntv = new DjpCmntVO(djId);
			request.setAttribute("cmntv", cmntv);
			List<DjpCmntVO> cmntList = service.getDjpAllCmnt(djId);

			request.setAttribute("cmntList", cmntList);
			System.out.println(">>" + cmntList.toString());

			System.out.println(cmntList);
			// 전체 글 갯수 조회하기
			int countList = 0;
			try {

				countList = service.countList();
			} catch (SQLException e) {
				e.printStackTrace();
			}

			request.getRequestDispatcher("/dj/cmntList.jsp").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
