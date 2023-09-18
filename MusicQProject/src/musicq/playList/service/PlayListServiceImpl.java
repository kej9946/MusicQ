package musicq.playList.service;

import java.util.ArrayList;
import java.util.List;

import musicq.playList.dao.IPlayListDao;
import musicq.playList.dao.PlayListDaoImpl;
import musicq.vo.MemPlaylistVO;
import musicq.vo.MusicVO;

public class PlayListServiceImpl implements IPlayListService {

	private IPlayListDao playListDao;

	private static IPlayListService playListService;

	private PlayListServiceImpl() {
		playListDao = PlayListDaoImpl.getInstance();
	}

	public static IPlayListService getInstance() {

		if (playListService == null) {

			playListService = new PlayListServiceImpl();
		}

		return playListService;
	}

	@Override
	public int insertPlayList(MemPlaylistVO mv) {
		return playListDao.insertPlayList(mv);
	}

	@Override
	public int delectPlayList(MemPlaylistVO mv) {
		return playListDao.delectPlayList(mv);
	}

	@Override
	public List<MusicVO> PlayList(String mv) {
		return playListDao.PlayList(mv);
	}

}
