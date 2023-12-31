package musicq.member.dao;


import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import musicq.vo.MemberVO;

/**
 * 실제 DB와 연결해서 SQL문을 수행하여 결과를 받아와 Service에 전달하는 DAO 인터페이스
 * @author PC-27
 *
 */
public interface IMemberDao {

	
	public String loginChk(Map<String, Object>map) throws SQLException;
	
	/**
	 * MemberVO에 담겨진 데이터를 DB에 insert하기 위한 메서드
	 * @param mv DB에 insert할 데이터를 담고있는 MemberVo객체
	 * @return DB 작업이 성공하면 1 이상의 값이 반환되고, 실패하면 0이 반환된다.
	 */
	public int insertMember(MemberVO mv);
	
	/**
	 * MemberVO에 담겨진 데이터를 DB에 update하기 위한 메서드
	 * @param mv DB에 update할 데이터를 담고있는 MemberVo객체
	 * @return DB 작업이 성공하면 1 이상의 값이 반환되고, 실패하면 0이 반환된다.
	 */
	public int updateMember(MemberVO mv);
	
	/**
	 * 주어진 회원정보가 존재하는지 확인하기 위한 메서드
	 * @param memId 회원정보 존재여부 확인하기 위한 회원ID
	 * @return 해당 회원정보가 존재하면 1, 존재하지 않으면 0 리턴함.
	 */
	public boolean checkMember(String memId);
	
	/**
	 * 주어진 회원정보가 존재하는지 확인하기 위한 메서드
	 * @param memId 회원정보 존재여부 확인하기 위한 회원ID
	 * @return 해당 회원정보를 담은 VO객체.
	 */
	public MemberVO getMember(String memId);
	
	/**
	 * 회원ID를 매개변수로 받아서 해당 회원을 삭제하기 위한 메서드
	 * @param memId 삭제할 회원ID
	 * @return 삭제작업 성공하면 1, 실패하면 0리턴함.
	 */
	public int deleteMember(String memId);
	
	/**
	 * DB에 존재하는 모든 회원정보를 조회하기 위한 메서드
	 * @return 모든 회원정보를 담고 있는 리스트 객체
	 */
	public List<MemberVO> getAllMember();
	
	/**
	 * 검색정보를 이용하여 DB에 존재하는 회원정보를 조회하기 위한 메서드
	 * @param mv 검색하고자 하는 회원정보를 담은 VO객체
	 * @return 검색된 회원정보를 담은 리스트 객체
	 */
	public List<MemberVO> searchMember(MemberVO mv);
	
	
	public String getPw(String memEmail);
	
	
}