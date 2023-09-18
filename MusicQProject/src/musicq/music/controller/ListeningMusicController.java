package musicq.music.controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import musicq.music.dao.MusicDaoImpl;
import musicq.music.service.IMusicService;
import musicq.music.service.MusicServiceIpml;
import musicq.vo.MusicVO;


@WebServlet("/ListeningMusicController")
public class ListeningMusicController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ListeningMusicController() {
    
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		
		MusicVO mu = new MusicVO();
		IMusicService mus = MusicServiceIpml.getInstance();
		String mCd = request.getParameter("mCd");
		


		mu.setmCd(mCd);
		
		
		mus.updatecnt(mu);
		
		String redirectURL = request.getContextPath() + "/listeningMusic.jsp?mCd=" + URLEncoder.encode(mCd, "UTF-8");
		response.sendRedirect(redirectURL);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
