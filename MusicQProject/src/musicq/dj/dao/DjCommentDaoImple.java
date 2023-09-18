package musicq.dj.dao;

import java.sql.SQLException;
import java.util.Collections;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import board.dao.IQnaDao;
import board.dao.QnaDaoImpl;
import musicq.util.MybatisUtill;
import musicq.vo.DjPageVO;
import musicq.vo.DjpCmntVO;
import musicq.vo.QnaVO;

public class DjCommentDaoImple implements IDjCommentDao {

	private static IDjCommentDao cmntDao;

	// 1. private 생성자 만들기
	private DjCommentDaoImple() {
	}

	// 2. static method로 getInstance사용할 거 만들기
	public static IDjCommentDao getInstance() {
		if (cmntDao == null) {
			cmntDao = new DjCommentDaoImple();

		}

		return cmntDao;
	}

	@Override
	public int insertCmnt(DjpCmntVO cmntv) {
		int cnt = 0;
		SqlSession session = MybatisUtill.getInstance(true);
		try {
			cnt = session.insert("cmnt.insertCmnt", cmntv);
		} catch (PersistenceException ex) {
			throw new RuntimeException("마이바티스 데이터 조회중 예외발생!", ex);
		} finally {
			session.close();
		}

		return cnt;
	}

	@Override
	public int updateCmnt(DjpCmntVO cmntv) {
		int cnt = 0;

		SqlSession session = MybatisUtill.getInstance(true);
		try {
			cnt = session.update("cmnt.updateCmnt", cmntv);
		} catch (PersistenceException ex) {
			throw new RuntimeException("마이바티스 데이터 조회중 예외발생!", ex);
		} finally {
			session.close();
		}

		return cnt;
	}

	@Override
	public int deleteCmnt(DjpCmntVO cmntv) {
		
		int cnt = 0;
		SqlSession session = MybatisUtill.getInstance(true);

		try {
			cnt = session.delete("cmnt.deleteCmnt", cmntv);

		} catch (PersistenceException ex) {
			throw new RuntimeException("마이바티스 데이터 조회중 예외발생!", ex);
		} finally {
			session.close();
		}
		return cnt;
	}

	@Override
	public List<DjpCmntVO> getAllCmnt() {
		List<DjpCmntVO> cmntList = Collections.EMPTY_LIST;
		SqlSession session = MybatisUtill.getInstance();
		try {
			cmntList = session.selectList("cmnt.getAllCmnt");
			session.commit();
		} catch (PersistenceException ex) {
			throw new RuntimeException("마이바티스 데이터 조회중 예외발생!", ex);
		} finally {
			session.close();
		}
		return cmntList;
	}

	@Override
	public List<DjpCmntVO> cmntList(Map<String, Object> map) throws SQLException {
		List<DjpCmntVO> cmntList = Collections.EMPTY_LIST;
		SqlSession session = MybatisUtill.getInstance();
		try {
			cmntList = session.selectList("cmnt.cmntList", map);
			session.commit();
		} catch (PersistenceException ex) {
			throw new RuntimeException("마이바티스 데이터 조회중 예외발생!", ex);
		} finally {
			session.close();
		}
		return cmntList;
	}
	
	//추가
	

	@Override
	public List<DjpCmntVO> getDjpAllCmnt(String djId) {
		List<DjpCmntVO> cmntList = Collections.EMPTY_LIST;
		SqlSession session = MybatisUtill.getInstance();
		try {
			cmntList = session.selectList("cmnt.getDjpAllCmnt", djId);
			session.commit();
		} catch (PersistenceException ex) {
			throw new RuntimeException("마이바티스 데이터 조회중 예외발생!", ex);
		} finally {
			session.close();
		}
		return cmntList;
	}

	//내가 작성한 댓글 조회
	@Override
	public List<DjpCmntVO> getDjpCmnt(Map<String, Object> params) {
		List<DjpCmntVO> cmntList = Collections.EMPTY_LIST;
		SqlSession session = MybatisUtill.getInstance(true);
		try {
			cmntList = session.selectList("cmnt.getDjpCmnt", params);
			//session.commit();
		} catch (PersistenceException ex) {
			throw new RuntimeException("마이바티스 데이터 조회중 예외발생!", ex);
		} finally {
			session.close();
		}
		return cmntList;
	}
	
	
	@Override
	public int countList() throws SQLException {
		int cnt = 0;
		SqlSession session = MybatisUtill.getInstance(true);

		try {
			cnt = session.selectOne("cmnt.totalCnt");

		} catch (PersistenceException ex) {
			throw new RuntimeException("마이바티스 데이터 조회중 예외발생!", ex);
		} finally {
			session.close();
		}
		return cnt;
	}
	}

	


