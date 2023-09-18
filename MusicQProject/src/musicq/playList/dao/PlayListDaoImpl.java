package musicq.playList.dao;

import java.util.List;

import musicq.util.MybatisDao;
import musicq.vo.MemPlaylistVO;
import musicq.vo.MusicVO;

public class PlayListDaoImpl extends MybatisDao implements IPlayListDao{

	private static IPlayListDao PlayListDao;
	
	PlayListDaoImpl(){}
	
	public static IPlayListDao getInstance() {
		if(PlayListDao==null)
		{
			PlayListDao=new PlayListDaoImpl();
		}
		return PlayListDao;
	}
	
	@Override
	public int insertPlayList(MemPlaylistVO mv) {
		int cnt = insert("playList.insert",mv);
		
		return cnt;
	}

	@Override
	public int delectPlayList(MemPlaylistVO mv) {
		int cnt = delete("playList.delete",mv);
		
		return cnt;
	}

	@Override
	public List<MusicVO> PlayList(String mv) throws NullPointerException{
		
		List<MusicVO> list = selectList("playList.selectListId",mv);
		
		return list;
	}

	
	
}
