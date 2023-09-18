package board.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import musicq.vo.QnaVO;

public interface IQnaDao {
	
	//글 삽입
	public int insertQna(QnaVO vo);
	
	//글 수정
	public int updateQna(QnaVO vo);
	public QnaVO getQnaUpdate(String qnaTitle);
	
	//글 삭제
	public int deleteQna(QnaVO vo);
	
	//선택 글 상세조회
	public QnaVO getQnaDetail(String qnaTitle);
	
	//전체글 조회
	public List<QnaVO> getAllQna();
	
	//전체 글 갯수 조회
	public int countList() throws SQLException;

	//범위 게시글 조회
	public List<QnaVO> boardList(Map<String, Object> map) throws SQLException;
	
}
