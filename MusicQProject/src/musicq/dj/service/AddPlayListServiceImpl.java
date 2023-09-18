package musicq.dj.service;

import java.util.List;

import musicq.dj.dao.AddPlayListDaoImpl;
import musicq.dj.dao.IAddPlayListDao;
import musicq.vo.DjPlayListVO;
import musicq.vo.MusicVO;

public class AddPlayListServiceImpl implements IAddPlayListService {
	
	private IAddPlayListDao addDao;
	private static IAddPlayListService addService;
	
	private AddPlayListServiceImpl() {
		
		addDao = AddPlayListDaoImpl.getInstance();
	}
	
	public static IAddPlayListService getInstance() {
		
		if(addService==null) {
			addService = new AddPlayListServiceImpl();
		}
		return addService;
		
	}
	
	//장르로검색

	@Override
	public List<MusicVO> selectByGenre(MusicVO mVo) {
		return addDao.selectByGenre(mVo);
	}

	//가수로 검색
	@Override
	public List<MusicVO> selectBySinger(MusicVO mVo) {
		return addDao.selectBySinger(mVo);
	}
	

	@Override
	public List<MusicVO> selectByName(MusicVO mVo) {
		return addDao.selectByName(mVo);
	}

	@Override
	public List<MusicVO> selectByPlace(MusicVO mVo) {
		return addDao.selectByPlace(mVo);
	}

	@Override
	public List<MusicVO> selectBySimlar(MusicVO mVo) {
		return addDao.selectBySimlar(mVo);
	}

	@Override
	public List<MusicVO> searchMusic(MusicVO mVo) {
		return addDao.searchMusic(mVo);
	}

}
