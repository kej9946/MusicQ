package themaService;

import musicq.vo.MusicVO;
import thema.dao.IThemaDao;
import thema.dao.ThemaDaoImpl;
import java.util.List;

public class ThemaServiceImpl implements IThemaService {
	
	private IThemaDao dao;
	private static IThemaService service;
	
	private ThemaServiceImpl() {
		dao =ThemaDaoImpl.getInstance();
	}
	
	public static IThemaService getInstance() {
		if(service == null) {
			service = new ThemaServiceImpl();
		}
		return service;
	}

	@Override
	public List<MusicVO> getPlace(MusicVO vo) {
		return dao.getPlace(vo);
	}
}
