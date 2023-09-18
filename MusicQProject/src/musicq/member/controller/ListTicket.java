package musicq.member.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import musicq.ticket.service.ITicketService;
import musicq.ticket.service.TicketServiceImpl;
import musicq.vo.TicketVO;


@WebServlet("/listTicket")
public class ListTicket extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public ListTicket() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String memId = request.getParameter("id");
		
		ITicketService service = TicketServiceImpl.getInstance();
		
		TicketVO vo = service.selectAllTicket(memId);
		request.setAttribute("ticketList", vo);
		
		request.getRequestDispatcher("/view/ticketList.jsp").forward(request, response);
	}

}
