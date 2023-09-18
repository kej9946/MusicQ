package musicq.dj.service;

import java.util.List;

import musicq.vo.MusicVO;

public interface IAddPlayListService {
	

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
