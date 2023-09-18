package musicq.dj.dao;

import java.util.Collections;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import musicq.util.MybatisUtill;
import musicq.vo.DjPageVO;
import musicq.vo.MusicVO;

public class AddPlayListDaoImpl implements IAddPlayListDao {

	private static IAddPlayListDao addDao;

	private AddPlayListDaoImpl() {
	}
	
	public static IAddPlayListDao getInstance() {
		
		if(addDao==null) {
			
			addDao = new AddPlayListDaoImpl();
		}
		
		return addDao;
		
	}

	@Override
	public List<MusicVO> selectByGenre(MusicVO mVo) {
		
		List<MusicVO> mVoList = Collections.EMPTY_LIST;
		SqlSession session = MybatisUtill.getInstance();

		try {
			mVoList = session.selectList("djp.selectByGenre");
			session.commit();
		} catch (PersistenceException ex) {
			throw new RuntimeException("마이바티스 데이터 조회중 예외발생!", ex);
		} finally {
			session.close();
		}
		return mVoList;
	}

	@Override
	public List<MusicVO> selectBySinger(MusicVO mVo) {
		List<MusicVO> mVoList = Collections.EMPTY_LIST;
		SqlSession session = MybatisUtill.getInstance();

		try {
			mVoList = session.selectList("djp.selectBySinger");
			session.commit();
		} catch (PersistenceException ex) {
			throw new RuntimeException("마이바티스 데이터 조회중 예외발생!", ex);
		} finally {
			session.close();
		}
		return mVoList;
	}

	@Override
	public List<MusicVO> selectByName(MusicVO mVo) {
		List<MusicVO> mVoList = Collections.EMPTY_LIST;
		SqlSession session = MybatisUtill.getInstance();

		try {
			mVoList = session.selectList("djp.selectByGenre");
			session.commit();
		} catch (PersistenceException ex) {
			throw new RuntimeException("마이바티스 데이터 조회중 예외발생!", ex);
		} finally {
			session.close();
		}
		return mVoList;
	}

	@Override
	public List<MusicVO> selectByPlace(MusicVO mVo) {
		List<MusicVO> mVoList = Collections.EMPTY_LIST;
		SqlSession session = MybatisUtill.getInstance();

		try {
			mVoList = session.selectList("djp.selectByPlace");
			session.commit();
		} catch (PersistenceException ex) {
			throw new RuntimeException("마이바티스 데이터 조회중 예외발생!", ex);
		} finally {
			session.close();
		}
		return mVoList;
	}

	@Override
	public List<MusicVO> selectBySimlar(MusicVO mVo) {
		List<MusicVO> mVoList = Collections.EMPTY_LIST;
		SqlSession session = MybatisUtill.getInstance();

		try {
			mVoList = session.selectList("djp.selectBySimlar");
			session.commit();
		} catch (PersistenceException ex) {
			throw new RuntimeException("마이바티스 데이터 조회중 예외발생!", ex);
		} finally {
			session.close();
		}
		return mVoList;
	}

	@Override
	public List<MusicVO> searchMusic(MusicVO mVo) {
		List<MusicVO> mVoList = Collections.EMPTY_LIST;
		SqlSession session = MybatisUtill.getInstance();

		try {
			mVoList = session.selectList("djp.searchMusic");
			session.commit();
		} catch (PersistenceException ex) {
			throw new RuntimeException("마이바티스 데이터 조회중 예외발생!", ex);
		} finally {
			session.close();
		}
		return mVoList;
	}

}
