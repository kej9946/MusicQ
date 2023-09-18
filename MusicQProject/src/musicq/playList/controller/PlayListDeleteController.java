package musicq.playList.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import musicq.playList.service.IPlayListService;
import musicq.playList.service.PlayListServiceImpl;
import musicq.vo.MemPlaylistVO;

@WebServlet("/PlayListDeleteController")
public class PlayListDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public PlayListDeleteController() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String mCds = request.getParameter("mCds");

		  System.out.println("Delete mCds: " + mCds);
		  String[] mCd= mCds.split("@");
		  MemPlaylistVO vo = new MemPlaylistVO();
		  IPlayListService ils = PlayListServiceImpl.getInstance();
		  int cnt = 0;
		  System.out.println("mcd[0]의 값 "+mCd[0]);
		  
		  for(int i=0; i<mCd.length; i++)
		  {
			  vo.setmCd(mCd[i]);
			  cnt=ils.delectPlayList(vo);
		  }
		  
		  
		  PrintWriter out = response.getWriter();
		  
		   
		  if(cnt > 0) {
			  out.print("{\"rst\": \"OK\"}");
			  
		  }else {
			  out.print("{\"rst\": \"FAIL\"}");
		  }
		  
		
	
	}

}
