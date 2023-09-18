package thema.dao;

import java.util.List;

import musicq.util.MybatisDao;
import musicq.vo.MusicVO;

public class ThemaDaoImpl extends MybatisDao implements IThemaDao {
	
	private static IThemaDao dao;
	
	//1. private 생성자 만들기
	private ThemaDaoImpl() {
		
	}
	
	//2. static method로 getInstance사용할 거 만들기
	public static IThemaDao getInstance() {
		if(dao==null) dao = new ThemaDaoImpl();
		return dao;
	}

	//산 검색
	@Override
	public List<MusicVO> getPlace(MusicVO vo) {
		List<MusicVO> paceList = selectList("place.mPlace",vo);
		return paceList;
	}
}
