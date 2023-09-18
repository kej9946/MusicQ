package musicq.ticket.service;


import java.util.List;

import musicq.vo.TicketVO;

public interface ITicketService {
	
	public TicketVO selectAllTicket(String id);
	
	public boolean checkTicket(String memId);

}
