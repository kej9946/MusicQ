package musicq.playList.controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.jasper.tagplugins.jstl.core.Redirect;

import musicq.playList.service.IPlayListService;
import musicq.playList.service.PlayListServiceImpl;
import musicq.vo.MemPlaylistVO;
@WebServlet("/PlayListInsertController")
public class PlayListInsertController extends HttpServlet{

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 // 세션 가져옴
        HttpSession session = req.getSession();
        String loginCode = (String) session.getAttribute("loginCode");
        String mCd=req.getParameter("mCd");
        System.out.println("인설트 컨트롤러"+mCd);
        
        IPlayListService pls= PlayListServiceImpl.getInstance();
        MemPlaylistVO vo = new MemPlaylistVO();
        vo.setMemId(loginCode);
        vo.setmCd(mCd);
        
        pls.insertPlayList(vo);
        
        String redirectURL = req.getContextPath() + "/listeningMusic.jsp?mCd=" + URLEncoder.encode(mCd, "UTF-8");
        resp.sendRedirect(redirectURL);
	}

	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
        
	}
	
}
