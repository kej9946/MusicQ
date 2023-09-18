package musicq.music.service;

import java.util.List;

import musicq.vo.MusicVO;

public interface IMusicService {

	public int insertmusic(MusicVO mv);

	public int updatecnt(MusicVO mv);
	
	public int deletecnt(String mNm);

	public List<MusicVO> selectRank();

	public List<MusicVO> selectAll();
	
	
	
	public String selectImgPath(String mCd);

	public List<MusicVO> selectWeatherMusic(MusicVO mv);

	public List<MusicVO> selectKorMusic();

	public List<MusicVO> selectNoKorMusic();
}
