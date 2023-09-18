package musicq.playList.controller;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.jasper.tagplugins.jstl.core.Redirect;

import musicq.playList.dao.PlayListDaoImpl;
import musicq.playList.service.IPlayListService;
import musicq.playList.service.PlayListServiceImpl;
import musicq.vo.MemPlaylistVO;
import musicq.vo.MusicVO;

@WebServlet("/PlayListController")
public class PlayListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public PlayListController() {
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MemPlaylistVO mv = new MemPlaylistVO();

        // 세션 가져옴
        HttpSession session = request.getSession();
        System.out.println(session + "연결확인");
        String loginCode = (String) session.getAttribute("loginCode");

        //만약 로그인코드가 null이면 로그인 창으로 감
        if (loginCode == null) {
            String redirectURL = request.getContextPath() + "/login.jsp";
            response.sendRedirect(redirectURL);
            return;
        } else {
            mv.setMemId(loginCode);
        }

        IPlayListService mus = PlayListServiceImpl.getInstance();
        List<MusicVO> MPList = mus.PlayList(mv.getMemId());

        if (MPList == null || MPList.isEmpty()) {
            System.out.println("null");
            RequestDispatcher dispatcher = request.getRequestDispatcher("musiqPlayList/musicqPlayList.jsp");
            dispatcher.forward(request, response);
           
        } else {
            System.out.println(MPList);
            request.setAttribute("MPList", MPList);
            RequestDispatcher dispatcher = request.getRequestDispatcher("musiqPlayList/musicqPlayList.jsp");
            dispatcher.forward(request, response);
        }
        
        
        
    }
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
