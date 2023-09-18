package board.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import musicq.util.MybatisDao;
import musicq.vo.QnaVO;

public class QnaDaoImpl extends MybatisDao implements IQnaDao {
	
	private static IQnaDao dao;
	
	//1. private 생성자 만들기
	private QnaDaoImpl() {
		
	}
	
	//2. static method로 getInstance사용할 거 만들기
	public static IQnaDao getInstance() {
		if(dao==null) dao = new QnaDaoImpl();
		return dao;
	}

	//삽입
	@Override
	public int insertQna(QnaVO vo) {
		int cnt = insert("qna.insert", vo);
		return cnt;
	}
	
	//수정
	@Override
	public int updateQna(QnaVO vo) {
		int cnt = update("qna.update", vo);
		return cnt;
	}
	
	//상세조회에서 바로 수정하기 위해 한번 더 이동하는 화면
	@Override
	public QnaVO getQnaDetail(String qnaTitle) {
		QnaVO vo = selectOne("qna.detail", qnaTitle);
		return vo;
	}
	
	//삭제
	@Override
	public int deleteQna(QnaVO vo) {
		int cnt = delete("qna.delete", vo);
		return cnt;
	}

	//상세글 조회
	@Override
	public QnaVO getQnaUpdate(String qnaTitle) {
		QnaVO vo = selectOne("qna.detail", qnaTitle);
		return vo;
	}
	
	//전체글 조회
	@Override
	public List<QnaVO> getAllQna(){
		List<QnaVO> qnaList = selectList("qna.getAll");
		return qnaList;
	}

	@Override
	public int countList() throws SQLException {
		return selectOne("qna.totalCnt");
	}

	@Override
	public List<QnaVO> boardList(Map<String, Object> map) throws SQLException {
		return selectList("qna.boardList", map);
	}

}
