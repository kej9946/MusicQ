package musicq.admin.controller;

import java.io.IOException;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.service.IQnaService;
import board.service.QnaServiceImpl;
import musicq.vo.QnaVO;

@WebServlet("/admin_munE")
public class AdminmunEServlet extends HttpServlet {
private static final long serialVersionUID = 1L;

protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    // 1. 서비스 객체 생성하기
    IQnaService service = QnaServiceImpl.getInstance();

    // 2. 글 조회
    List<QnaVO> qnaList = service.getAllQna();

    // 3. 정렬을 수행합니다.
    Collections.sort(qnaList, new Comparator<QnaVO>() {
        @Override
        public int compare(QnaVO vo1, QnaVO vo2) {
            return Integer.compare(Integer.parseInt(vo2.getQnaNo()), Integer.parseInt(vo1.getQnaNo()));
        }
    });

    // 페이징 처리를 위한 변수 설정
    int currentPage = 1;
    int itemsPerPage = 10; // 한 페이지에 표시할 멤버 수
    int totalItems = qnaList.size();
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

    List<QnaVO> pagedQnaList = qnaList.subList(startIndex, endIndex);

    // 페이징 관련 변수를 request 속성에 저장
    request.setAttribute("currentPage", currentPage);
    request.setAttribute("totalPages", totalPages);

    // 페이징된 멤버 리스트를 request 속성에 저장
    request.setAttribute("qnaList", pagedQnaList);

    // 4. 해당 화면으로 포워딩
    request.getRequestDispatcher("/masterJsp/mastermain_4.jsp").forward(request, response);
}

protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    doGet(request, response);
}
}