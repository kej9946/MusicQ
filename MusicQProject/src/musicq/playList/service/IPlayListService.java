package musicq.playList.service;

import java.util.List;

import musicq.vo.MemPlaylistVO;
import musicq.vo.MusicVO;

public interface IPlayListService {
	public int insertPlayList(MemPlaylistVO mv);
	
	public int delectPlayList(MemPlaylistVO mv);
	
	public List<MusicVO> PlayList(String mv);
}
