package musicq.music.dao;

import java.sql.SQLClientInfoException;
import java.util.List;

import musicq.util.MybatisDao;
import musicq.vo.MusicVO;

public class MusicDaoImpl extends MybatisDao implements IMusicDao {

private static IMusicDao mDao;
	
	private MusicDaoImpl() {
	}

	public static IMusicDao getInstance() {
		if(mDao == null) {
			mDao = new MusicDaoImpl();
		}
		return mDao;
	}
	
	
	@Override
	public int insertmusic(MusicVO mv) {
		
		int cnt = insert("music.insert", mv);
		
		return cnt;
	}

	@Override
	public int updatecnt(MusicVO mv) {
		
		System.out.println(mv);
		int cnt = update("music.updateCnt",mv);
		System.out.println(cnt);
		return cnt;
	}
	
	@Override
	public List<MusicVO> selectRank() {
		
		List<MusicVO> mList = selectList("music.selectRank");
		
		return mList;
	}

	@Override
	public String selectImgPath(String mCd) {
		
		String mmCd= selectOne("music.selectImgPath",mCd);
		
		return mmCd;
	}

	@Override
	public List<MusicVO> selectWeatherMusic(MusicVO mv) {
		
		List<MusicVO> mList = selectList("music.selectWeatherMusic", mv);
		
		return mList;
	}
	
	@Override
	public List<MusicVO> selectAll() {
		
		List<MusicVO> mList = selectList("music.selectAll");
		
		return mList;
	}
	
	
	public int deletecnt(String mNm) {
		int cnt = delete("music.deletecnt",mNm);
		return cnt;
	
	}
	
	
	
	

	@Override
	public List<MusicVO> selectKorMusic() {
		List<MusicVO> mList = selectList("music.selectKorMusic");
		return mList;
	}

	@Override
	public List<MusicVO> selectNoKorMusic() {
		List<MusicVO> mList = selectList("music.selectNoKorMusic");
		return mList;
	}

	@Override
	public List<MusicVO> selectKorBallade() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MusicVO> selectKorDance() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MusicVO> selectKorRap() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MusicVO> selectKorIndie() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MusicVO> selectNoKorPop() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MusicVO> selectNoKorRd() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MusicVO> selectNoKorRap() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MusicVO> selectWeatherMusic(String mWeather) {
		// TODO Auto-generated method stub
		return null;
	}

	
	

}
