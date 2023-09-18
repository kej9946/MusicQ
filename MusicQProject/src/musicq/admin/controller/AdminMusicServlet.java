package musicq.admin.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import musicq.music.service.IMusicService;
import musicq.music.service.MusicServiceIpml;
import musicq.vo.MusicVO;



@WebServlet("/admin_music")
public class AdminMusicServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	   request.setCharacterEncoding("UTF-8"); // 인코딩 설정 추가

    	IMusicService ms = MusicServiceIpml.getInstance();
        

        List<MusicVO> musicList = ms.selectAll();

        // 가져온 멤버 리스트를 request 속성에 저장
        request.setAttribute("musicList", musicList);

        // 페이징 처리를 위한 변수 설정
        int currentPage = 1;
        int itemsPerPage = 10; // 한 페이지에 표시할 멤버 수
        int totalItems = musicList.size();
        int totalPages = (int) Math.ceil((double) totalItems / itemsPerPage);

        // 요청된 페이지 번호가 있으면 해당 페이지로 설정
        String pageParam = request.getParameter("page");
        if (pageParam != null && !pageParam.isEmpty()) {
            currentPage = Integer.parseInt(pageParam);
            if (currentPage < 1) {
                currentPage = 1;
            } else if (currentPage > totalPages) {
                currentPage = totalPages;
            }
        }

        int startIndex = (currentPage - 1) * itemsPerPage;
        int endIndex = Math.min(startIndex + itemsPerPage, totalItems);

        List<MusicVO> pagedMusicList = musicList.subList(startIndex, endIndex);

        // 페이징 관련 변수를 request 속성에 저장
        request.setAttribute("currentPage", currentPage);
        request.setAttribute("totalPages", totalPages);

        // 페이징된 멤버 리스트를 request 속성에 저장
        request.setAttribute("pagedMusicList", pagedMusicList);

        // 포워딩
        request.getRequestDispatcher("./masterJsp/mastermain_2.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
