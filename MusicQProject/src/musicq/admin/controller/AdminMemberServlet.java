package musicq.admin.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import musicq.member.service.MemberServiceImpl;
import musicq.member.service.IMemberService;
import musicq.vo.MemberVO;

@WebServlet("/admin_member")
public class AdminMemberServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        IMemberService memService = MemberServiceImpl.getInstance();

        List<MemberVO> memberList = memService.displayAllMember();
        System.out.println(memberList);

        // 가져온 멤버 리스트를 request 속성에 저장
        request.setAttribute("memberList", memberList);

        // 페이징 처리를 위한 변수 설정
        int currentPage = 1;
        int itemsPerPage = 10; // 한 페이지에 표시할 멤버 수
        int totalItems = memberList.size();
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

        List<MemberVO> pagedMemberList = memberList.subList(startIndex, endIndex);

        // 페이징 관련 변수를 request 속성에 저장
        request.setAttribute("currentPage", currentPage);
        request.setAttribute("totalPages", totalPages);

        // 페이징된 멤버 리스트를 request 속성에 저장
        request.setAttribute("pagedMemberList", pagedMemberList);

        // 포워딩
        request.getRequestDispatcher("./masterJsp/mastermain.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
