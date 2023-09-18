package musicq.ticket.dao;


import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import musicq.util.MybatisDao;
import musicq.util.MybatisUtill;
import musicq.vo.TicketVO;

public class TicketDaoImpl extends MybatisDao implements ITicketDao{

	private static ITicketDao dao;
	
	public static ITicketDao getInstance() {
		if(dao == null) {
			dao = new TicketDaoImpl();
		}
		return dao;
	}

	@Override
	public TicketVO selectAllTicket(String id) {
		
		TicketVO vo = null;
		SqlSession session = MybatisUtill.getInstance(true);
		
		try {
			vo = session.selectOne("ticket.selectAllTicket", id);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return vo;
	
	}

	@Override
	public boolean checkTicket(String memId) {
		int cnt = 0;
		SqlSession session = MybatisUtill.getInstance();
		boolean isExist = false;
		
		try {
			cnt = session.selectOne("ticket.check", memId);

			if (cnt > 0) {
				isExist = true;
			}

			session.commit();
		} catch (PersistenceException ex) {
			throw new RuntimeException("마이바티스 데이터 조회중 예외발생!", ex);
		} finally {
			session.close();
		}
		return isExist;
	}
	
	
}
