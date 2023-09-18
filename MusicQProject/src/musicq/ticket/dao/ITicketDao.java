package musicq.ticket.dao;


import java.util.List;

import musicq.vo.TicketVO;

public interface ITicketDao {
	
	public TicketVO selectAllTicket(String id);

	
	public boolean checkTicket(String memId);
}
