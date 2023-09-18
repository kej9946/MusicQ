package board.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import musicq.vo.GongjiVO;

public interface IGongjiService {
	
	//글 등록
	public int insertGongji(GongjiVO vo);
	
	//글 수정
	public int updateGongji(GongjiVO vo);

	//글 삭제
	public int deleteGongji(int gNo);
	
	//선택 글 상세조회
	public GongjiVO getGongjiDetail(String gNo);

	//전체글 조회
	public List<GongjiVO> getAllGongji();
	

}
