package musicq.search.service;

import java.util.List;

import musicq.vo.MusicVO;
import musicq.vo.QnaVO;

public interface ISearchService {

	//전체글 조회
	public List<MusicVO> musicAll();
	
	//keyword조회
	public List<MusicVO> keywordMusic(MusicVO vo);
}
