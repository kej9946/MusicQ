package musicq.dj.dao;

import java.util.List;

import musicq.vo.DjPageVO;
import musicq.vo.MusicVO;

/**
 * 실제 DB와 연결해서 SQL문을 수행하여 결과를 받아와 Service에 전달하는 DAO인터페이스
 */


public interface IAddPlayListDao{


//장르로 검색	
	public List<MusicVO> selectByGenre(MusicVO mVo);
	
	//가수로 검색
	public List<MusicVO> selectBySinger(MusicVO mVo);

	//곡제목으로 검색
	public List<MusicVO> selectByName(MusicVO mVo);

	//장소키워드로 검색
	public List<MusicVO> selectByPlace(MusicVO mVo);

	//유사곡키워드로검색
	public List<MusicVO> selectBySimlar(MusicVO mVo);

	//다중조건 검색
	public List<MusicVO> searchMusic(MusicVO mVo);
	
	
	
}

