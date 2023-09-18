package musicq.playList.dao;

import java.util.List;

import musicq.vo.MemPlaylistVO;
import musicq.vo.MusicVO;

public interface IPlayListDao{

	public int insertPlayList(MemPlaylistVO mv);
	
	public int delectPlayList(MemPlaylistVO mv);
	
	
	
	public List<MusicVO> PlayList(String mv);
	
}
