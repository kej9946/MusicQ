package board.dao;

import java.util.List;

import musicq.vo.GongjiVO;

public interface IGongjiDao {
	
	//글 삽입
	public int insertgongji(GongjiVO gvo);
	
	//글 수정
	public int updategongji(GongjiVO gvo);
	
	//글 삭제
	public int deletegongji(int gNo);
	
	//선택 글 상세조회
	public GongjiVO getgongjiDetail(String gNo);
	
	//전체글 조회
	public List<GongjiVO> getAllgongji();
	
	
}
