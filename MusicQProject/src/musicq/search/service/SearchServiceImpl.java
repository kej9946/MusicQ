package musicq.search.service;

import board.dao.QnaDaoImpl;
import musicq.search.dao.ISearchDao;
import musicq.search.dao.SearchDaoImpl;
import musicq.vo.MusicVO;
import musicq.vo.QnaVO;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import board.dao.IQnaDao;

public class SearchServiceImpl implements ISearchService {
	
	private ISearchDao dao;
	private static ISearchService service;
	
	//1. 다오임플에 있는 getinstance에 dao넣어줌
	private SearchServiceImpl() {
		dao = SearchDaoImpl.getInstance();
	}
	
	//2.서비스 객체를 선언
	public static ISearchService getInstance() {
		if(service == null) {
			service = new SearchServiceImpl();
		}
		return service;
	}

	//전체글 조회
	@Override
	public List<MusicVO> musicAll() {
		return dao.musicAll();
	}
	
	//keyword조회
	@Override
	public List<MusicVO> keywordMusic(MusicVO vo) {
		return dao.keywordMusic(vo);
	}
}
