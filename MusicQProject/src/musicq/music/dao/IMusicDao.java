package musicq.music.dao;

import java.util.List;

import musicq.vo.MusicVO;

public interface IMusicDao {

	public int insertmusic(MusicVO mv);
	
	public int updatecnt(MusicVO mv);
	
	public List<MusicVO> selectRank();
	
	public String selectImgPath(String mCd);
	

	public List<MusicVO> selectWeatherMusic(MusicVO mv);

	public List<MusicVO> selectWeatherMusic(String mWeather);

	public int deletecnt(String mNm);
	



	public List<MusicVO> selectKorMusic();
	
	public List<MusicVO> selectNoKorMusic();
	
	public List<MusicVO> selectKorBallade();
	
	public List<MusicVO> selectKorDance();
	
	public List<MusicVO> selectKorRap();
	
	public List<MusicVO> selectKorIndie();
	
	public List<MusicVO> selectNoKorPop();
	
	public List<MusicVO> selectNoKorRd();
	
	public List<MusicVO> selectNoKorRap();


	public List<MusicVO> selectAll();
	
	
}
