package musicq.ticket.service;


import java.util.List;

import musicq.ticket.dao.ITicketDao;
import musicq.ticket.dao.TicketDaoImpl;
import musicq.vo.TicketVO;

public class TicketServiceImpl implements ITicketService{
	
	private ITicketDao dao;
	
	private static ITicketService service;
	
	private TicketServiceImpl() {
		dao = TicketDaoImpl.getInstance();
	}
	
	public static ITicketService getInstance() {
		if(service == null) {
			service = new TicketServiceImpl();
		}
		return service;
	}

	@Override
	public TicketVO selectAllTicket(String id) {
		return dao.selectAllTicket(id);
	}

	@Override
	public boolean checkTicket(String memId) {
		return dao.checkTicket(memId);
	}

}
