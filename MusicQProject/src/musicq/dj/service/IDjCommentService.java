package musicq.dj.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import musicq.vo.DjpCmntVO;

public interface IDjCommentService {
	

	//댓글 삽입
		public int insertCmnt(DjpCmntVO vo);
		
		//댓글 수정확인
		public int updateCmnt(DjpCmntVO vo);
	
		
		//댓글 삭제
		public int deleteCmnt(DjpCmntVO cmntv);	
		
		
		//전체 댓글 조회
		public List<DjpCmntVO> getAllCmnt();
		
	
		//범위 게시글 조회
		public List<DjpCmntVO> cmntList(Map<String, Object> map) throws SQLException;

		
		//자신의 방명록에 담긴 댓글만 조회(추가)
		public List<DjpCmntVO> getDjpAllCmnt(String djId);
		
		//내가특정 게시판에 남긴 댓글 조회(추가)
		List<DjpCmntVO> getDjpCmnt(Map<String, Object> params);
		
		//전체글 갯수 조회
		public int countList() throws SQLException;
	

		
		
}


