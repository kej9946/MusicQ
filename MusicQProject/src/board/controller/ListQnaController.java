package board.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.service.IQnaService;
import board.service.QnaServiceImpl;
import musicq.vo.QnaVO;

@WebServlet("/listQna.do")
public class ListQnaController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    // 한 페이지에 표시할 게시글 수
    private static final int perList = 10;
    
    // 페이지 당 표시할 페이지 링크 수
    private static final int perPage = 5;

    public ListQnaController() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // 현재 페이지 지정 default 1
        int currentPage = 1;
        String pageParam = request.getParameter("page");
        if (pageParam != null) {
            currentPage = Integer.parseInt(pageParam);
        }

        // 정보 조회를 위한 서비스객체 생성하기
        IQnaService service = QnaServiceImpl.getInstance();

        // 전체 글 갯수 조회하기
        int countList = 0;
        try {
            countList = service.countList();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        // 전체 페이지 수 구하기 - 전체 글 갯수(countList) / 페이지 당 글 갯수(perList)
        // 정확한 결과를 위해 double형으로 연산 후 int로 변환 필요
        int totalPage = (int) Math.ceil((double) countList / (double) perList);

        // 시작 게시글 번호와 끝 게시글 번호 계산
        int start = (currentPage - 1) * perList + 1;
        int end = start + perList - 1;
        if (end > countList) {
            end = countList;
        }

        // 시작 페이지와 끝 페이지 계산
        int startPage = ((currentPage - 1) / perPage * perPage) + 1;
        int endPage = startPage + perPage - 1;
        if (endPage > totalPage) {
            endPage = totalPage;
        }

        // 범위 별 게시글 조회하기
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("start", start);
        map.put("end", end);
        List<QnaVO> qnaList = service.boardList(map);

        // 결과(qnaList)를 request에 담아서 출력할 페이지로 전달
        request.setAttribute("qnaList", qnaList);

        // 페이징 처리를 위한 정보도 request에 담아서 전달하기
        request.setAttribute("sPage", startPage);
        request.setAttribute("ePage", endPage);
        request.setAttribute("tPage", totalPage);
        request.setAttribute("cPage", currentPage);
        request.getRequestDispatcher("/Qna/qnaList.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
