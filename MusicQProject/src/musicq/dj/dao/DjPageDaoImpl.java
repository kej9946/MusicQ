package musicq.dj.dao;

import java.util.Collections;
import java.util.List;

import javax.websocket.Session;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import musicq.util.MybatisUtill;
import musicq.vo.DjPageVO;

public class DjPageDaoImpl implements IDjPageDao {

	private static IDjPageDao djpDao;

	private DjPageDaoImpl() {

	}

	public static IDjPageDao getInstance() {

		if (djpDao == null) {
			djpDao = new DjPageDaoImpl();
		}
		return djpDao;
	}

	@Override
	public int insertdjp(DjPageVO djpv) {
		int cnt = 0;
		SqlSession session = MybatisUtill.getInstance(true);

		try {
			cnt = session.insert("djp.insert", djpv);

		} catch (PersistenceException ex) {
			throw new RuntimeException("마이바티스 데이터 조회중 예외발생!", ex);
		} finally {

			session.close();
		}
		return cnt;
	}

	@Override
	public int updateDjp(DjPageVO djpv) {
		int cnt = 0;
		SqlSession session = MybatisUtill.getInstance(true);

		try {
			cnt = session.update("djp.update", djpv);
		} catch (PersistenceException ex) {
			throw new RuntimeException("마이바티스 데이터 조회중 예외발생!", ex);
		} finally {

			session.close();
		}
		return cnt;
	}

	@Override
	public int deleteDjp(String memIdorDjNm) {
		int cnt = 0;
		SqlSession session = MybatisUtill.getInstance(true);

		try {
			cnt = session.delete("djp.delete", memIdorDjNm);

		} catch (PersistenceException ex) {
			throw new RuntimeException("마이바티스 데이터 조회중 예외발생!", ex);
		} finally {
			session.close();
		}
		return cnt;
	}

	// 페이지 생성여부 확인
	@Override
	public boolean checkDjp(String memId) {

		int cnt = 0;
		SqlSession session = MybatisUtill.getInstance();
		boolean isExist = false;

		try {
			cnt = session.selectOne("djp.check", memId);

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

	// 특정 아이디의 dj페이지 가져오기
	@Override
	public DjPageVO getDjp(String memId) {
		DjPageVO djpv = null;
		SqlSession session = MybatisUtill.getInstance(true);
		try {
			djpv = session.selectOne("djp.getDjp", memId);
			//session.commit();
		} catch (PersistenceException ex) {
			throw new RuntimeException("djp.getDjp 마이바티스 데이터 조회중 예외발생!", ex);

		} finally {
			session.close();
		}
		return djpv;
	}

	// 전체 DJ페이지 생성여부 확인
	@Override
	public List<DjPageVO> getAllDjp() {

		List<DjPageVO> djpList = Collections.EMPTY_LIST;
		SqlSession session = MybatisUtill.getInstance();

		try {
			djpList = session.selectList("djp.getAllDjp");
			session.commit();
		} catch (PersistenceException ex) {
			throw new RuntimeException("마이바티스 데이터 조회중 예외발생!", ex);

		} finally {
			session.close();
		}
		return djpList;
	}

	// 특정 DJ페이지 검색
	@Override
	public List<DjPageVO> searchDjp(DjPageVO djpv) {

		List<DjPageVO> djpList = Collections.EMPTY_LIST;
		SqlSession session = MybatisUtill.getInstance();

		try {
			djpList = session.selectList("djp.search");
			session.commit();
		} catch (PersistenceException ex) {
			throw new RuntimeException("마이바티스 데이터 조회중 예외발생!", ex);
		} finally {
			session.close();
		}
		return djpList;
	}

	@Override
	public String getDjpImg(String memId) {
		String djpImgPath = null;
		SqlSession session = MybatisUtill.getInstance(true);

		try {
			djpImgPath = session.selectOne("djp.getDjpImg", memId);
		} catch (PersistenceException ex) {
			throw new RuntimeException("마이바티스 데이터 조회중 예외발생!", ex);
		} finally {
			session.close();
		}
		return djpImgPath;
	}

	@Override
	public String getDjpDjimg(String memId) {
		String djpDjimgPath = null;
		SqlSession session = MybatisUtill.getInstance(true);

		try {
			djpDjimgPath = session.selectOne("djp.getDjpDjimg", memId);

		} catch (PersistenceException ex) {
			throw new RuntimeException("마이바티스 데이터 조회중 예외발생!", ex);
		} finally {
			session.close();
		}
		return djpDjimgPath;
	}

	@Override
	public String getDjNm(String memId) {
		String djNm = null;
		SqlSession session = MybatisUtill.getInstance(true);

		try {
			djNm = session.selectOne("djp.getDjNm", memId);

		} catch (PersistenceException ex) {
			throw new RuntimeException("마이바티스 데이터 조회중 예외발생!", ex);
		} finally {
			session.close();
		}
		return djNm;
	}

	@Override
	public String getDjpNm(String memId) {
		String djpNm = null;
		SqlSession session = MybatisUtill.getInstance(true);

		try {
			djpNm = session.selectOne("djp.getDjpNm", memId);

		} catch (PersistenceException ex) {
			throw new RuntimeException("마이바티스 데이터 조회중 예외발생!", ex);
		} finally {
			session.close();
		}
		return djpNm;
	}

	@Override
	public String getDjpIntro(String memId) {
		String djpIntro = null;
		SqlSession session = MybatisUtill.getInstance(true);

		try {
			djpIntro = session.selectOne("djp.getDjpIntro", memId);

		} catch (PersistenceException ex) {
			throw new RuntimeException("마이바티스 데이터 조회중 예외발생!", ex);
		} finally {
			session.close();
		}
		return djpIntro;
	}

	@Override
	public String getDjpGenre(String memId) {
		String djpGenre = null;
		SqlSession session = MybatisUtill.getInstance(true);

		try {
			djpGenre = session.selectOne("djp.getDjpGenre", memId);

		} catch (PersistenceException ex) {
			throw new RuntimeException("마이바티스 데이터 조회중 예외발생!", ex);
		} finally {
			session.close();
		}
		return djpGenre;
	}

	@Override
	public String getDjpSns(String memId) {
		String djpSns = null;
		SqlSession session = MybatisUtill.getInstance(true);

		try {
			djpSns = session.selectOne("djp.getDjpSns", memId);

		} catch (PersistenceException ex) {
			throw new RuntimeException("마이바티스 데이터 조회중 예외발생!", ex);
		} finally {
			session.close();
		}
		return djpSns;
	}

	@Override
	public String getDjpSnsCorp(String memId) {
		String djpSnsCorp = null;
		SqlSession session = MybatisUtill.getInstance(true);

		try {
			djpSnsCorp = session.selectOne("djp.getDjpSnsCorp", memId);

		} catch (PersistenceException ex) {
			throw new RuntimeException("마이바티스 데이터 조회중 예외발생!", ex);
		} finally {
			session.close();
		}
		return djpSnsCorp;
	}

	@Override // 좋아요 버튼 클릭 시 1추가 실행

	public int getDjpHit(String memId) {

		SqlSession session = MybatisUtill.getInstance(true);

		try {
			int djpHit = session.selectOne("djp.getDjpHit", memId);
			
			return djpHit;
		} finally {
			session.close();
		}
	}

	@Override
	public String getDjpKeywd(String memId) {
		String djpKeyWd = null;
		SqlSession session = MybatisUtill.getInstance(true);

		try {
			djpKeyWd = session.selectOne("getDjpkey", memId);

		} catch (PersistenceException ex) {
			throw new RuntimeException("마이바티스 데이터 조회중 예외발생!", ex);
		} finally {
			session.close();
		}
		return djpKeyWd;
	}

	@Override  //조회
	public int getDjpHitCount(String memId) {
		SqlSession session = MybatisUtill.getInstance(true);
			int cnt =0;
			  try {
			 cnt =  session.update("djp.getHitCount", memId);
			   session.commit();
			  } finally {
			    session.close();
			  }
			return cnt;
			}
}
