package musicq.search.dao;

import java.util.List;

import musicq.util.MybatisDao;
import musicq.vo.MusicVO;
import musicq.vo.QnaVO;

public class SearchDaoImpl extends MybatisDao implements ISearchDao {
	
	private static ISearchDao dao;
	
	//1. private 생성자 만들기
	private SearchDaoImpl() {
		
	}
	
	//2. static method로 getInstance사용할 거 만들기
	public static ISearchDao getInstance() {
		if(dao==null) dao = new SearchDaoImpl();
		return dao;
	}

	//전체조회
	@Override
	public List<MusicVO> musicAll(){
		List<MusicVO> musicList = selectList("music.musicAll");
		return musicList;
	}

	
	//keyword조회
	@Override
	public List<MusicVO> keywordMusic(MusicVO vo) {
		List<MusicVO> musicList = selectList("music.keyword", vo);
		return musicList;
	}
	
}
