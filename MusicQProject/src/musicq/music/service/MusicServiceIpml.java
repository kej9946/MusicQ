package musicq.music.service;

import java.util.List;

import musicq.music.dao.IMusicDao;
import musicq.music.dao.MusicDaoImpl;
import musicq.vo.MusicVO;

public class MusicServiceIpml implements IMusicService {

	private IMusicDao mDao;
	   
	   private static IMusicService mService;
	   
	   private MusicServiceIpml() {
	      mDao = MusicDaoImpl.getInstance();
	   }
	   
	   public static IMusicService getInstance() {
		      
		      if(mService == null) {
		         
		         mService = new MusicServiceIpml();
		      }
		      
		      return mService;
		   }
	   
	   
	
	@Override
	public int insertmusic(MusicVO mv) {
		return mDao.insertmusic(mv);
	}

	@Override
	public int updatecnt(MusicVO mv) {
		return mDao.updatecnt(mv);
	}

	

	@Override
	public List<MusicVO> selectRank() {
		return mDao.selectRank();
	}

	@Override
	public String selectImgPath(String mCd) {
		return mDao.selectImgPath(mCd);
	}

	@Override
	public List<MusicVO> selectWeatherMusic(MusicVO mv) {

		return mDao.selectWeatherMusic(mv);
	}
	
	

	@Override
	public List<MusicVO> selectKorMusic() {
		return mDao.selectKorMusic();
	}

	@Override
	public List<MusicVO> selectNoKorMusic() {
		return mDao.selectNoKorMusic();
	}

	@Override
	public List<MusicVO> selectAll() {
		return mDao.selectAll();
	}

	@Override
	public int deletecnt(String mNm) {
		return  mDao.deletecnt(mNm);
	}
	
	

}
