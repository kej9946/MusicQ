package board.service;

import board.dao.QnaDaoImpl;
import musicq.vo.QnaVO;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import board.dao.IQnaDao;

public class QnaServiceImpl implements IQnaService {
	
	private IQnaDao dao;
	private static IQnaService service;
	
	//1. 다오임플에 있는 getinstance에 dao넣어줌
	private QnaServiceImpl() {
		dao = QnaDaoImpl.getInstance();
	}
	
	//2.서비스 객체를 선언
	public static IQnaService getInstance() {
		if(service == null) {
			service = new QnaServiceImpl();
		}
		return service;
	}
	
	//삽입
	@Override
	public int insertQna(QnaVO vo) {
		return dao.insertQna(vo) ;
	}

	//수정
	@Override
	public int updateQna(QnaVO vo) {
		return dao.updateQna(vo);
	}

	//삭제
	@Override
	public int deleteQna(QnaVO vo) {
		return dao.deleteQna(vo);
	}

	@Override
	public QnaVO getQnaUpdate(String qnaTitle) {
		return dao.getQnaDetail(qnaTitle);
	}
	
	//상세글 조회
	@Override
	public QnaVO getQnaDetail(String qnaTitle) {
		return dao.getQnaDetail(qnaTitle);
	}

	//전체글 조회
	@Override
	public List<QnaVO> getAllQna() {
		return dao.getAllQna();
	}

	
	//글 갯수
	@Override
	public int countList() { 
		int countList = 0;
		
		try {
			countList = dao.countList();
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return countList;
	}
	
	//글 범위
	@Override
	public List<QnaVO> boardList(Map<String, Object> map) {
		List<QnaVO> boardList = null;
		try {
			boardList = dao.boardList(map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return boardList;
	}
}
