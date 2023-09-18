package musicq.search.dao;

import java.util.List;

import musicq.vo.MusicVO;
import musicq.vo.QnaVO;

public interface ISearchDao {
	
	//전체조회
	public List<MusicVO> musicAll();
	
	//keyword검색 조회
	public List<MusicVO> keywordMusic(MusicVO vo);
	
}
