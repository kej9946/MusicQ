package musicq.dj.service;

import java.util.List;

import musicq.vo.DjPageVO;

public interface IDjPageService {
	

	/**
	 * DJ페이지 생성하기
	 * @return DB작업이 성공하면 1 이상의 값이 반환되고 실패하면 0이 반환된다.
	 */	

	public int insertdjp(DjPageVO djpv);
	
	
	
	/**
	 * @return DB작업이 성공하면 1 이상의 값이 반환되고 실패하면 0이 반환된다.
	 */	
	public int updateDjp(DjPageVO djpv);
	/**
	 * 주어진 회원정보가 존재하는지 확인하기 위한 메소드
	 * @param memID 회원정보 존재여부 확인하기 위한 회원ID
	 * @return 해당 회원정보가 존재하면 1, 존재하지 않으면 0 리턴
	 */
	public boolean checkDjp(String memId);

	
	/**
	 * 회원ID를 매개변수로 받아서 해당 회원의 DJ페이지를 삭제하기 위한 메소드
	 * @param memID 삭제할 회원ID
	 * @return 삭제작업 성공하면 1, 실패하면 -1 리턴함
	 */	
	public int deleteDjp(String memIdorDjNm);  


	/**
	 * 회원ID를 매개변수로 받아서 해당 회원의 아이디와 닉네임 조회
	 * @param memID
	 * @return 객체
	 */
	public DjPageVO getDjp(String memId);
	
	
	
	/**
	 * DB에 존재하는 모든 DJ페이지를 조회하기 위한 메소드
	 * @return 모든  DJ페이지 정보를 를 담고 있는 List 객체
	 */	
	public List<DjPageVO> getAllDjp();
	
	
	
	/**
	 * 검색정보를 이용하여 DB에 존재하는 DJ페이지를 조회하기 위한 메소드
	 * @param mv 검색하고자 하는 DJ페이지 정보를 담은 VO객체
	 * @return 검색된 DJ페이지 정보를 담은 리스트 객체 --다이나믹쿼리
	 */
	public List<DjPageVO> searchDjp(DjPageVO djpv);

	
	/**
	 * 회원ID를 매개변수로 받아서 해당 회원의 DJ페이지 대표사진 조회
	 * @param memID
	 * @return 사진경로
	 */
	public String getDjpImg(String memId);
	
	
	/**
	 * 회원ID를 매개변수로 받아서 해당 회원의 DJ페이지 프로필사진 조회
	 * @param memID
	 * @return 사진경로
	 */	
	public String getDjpDjimg(String memId);  
	
	/////////////////////////////////////////
	/**
	 * 회원ID를 매개변수로 받아서 해당 회원의 DJ페이지 닉네임
	 * @return 닉네임
	 */
	public String getDjNm(String memId);
	
	/**
	 * 회원ID를 매개변수로 받아서 해당 회원의 DJ페이지 제목
	 * @return 제목
	 */
	public String getDjpNm(String memId);
	
	
	/**
	 * 회원ID를 매개변수로 받아서 해당 회원의 DJ페이지 소개글
	 * @param memID
	 * @return 페이지 소개글
	 */
	public String getDjpIntro(String memId);
	
	
	/**
	 * 회원ID를 매개변수로 받아서 해당 회원의 DJ페이지 장르
	 * @param memID
	 * @return 장르
	 */	
	public String getDjpGenre(String memId);  
	
	/**
	 * 회원ID를 매개변수로 받아서 해당 회원의 DJ페이지 sns
	 * @param memID
	 * @return sns
	 */	
	public String getDjpSns(String memId);  
	
	
	/**
	 * 회원ID를 매개변수로 받아서 해당 회원의 DJ페이지 sns
	 * @param memID
	 * @return snscorp
	 */	
	public String getDjpSnsCorp(String memId);  
	
	
	/**
	 * 회원ID를 매개변수로 받아서 해당 회원의 DJ페이지 찜수
	 * @param memID
	 * @return 찜수
	 */	
	public int getDjpHit(String memId);  
	
	
	public int getHitCount(String memId);  
	
	public String getDjpKeywd(String memId);

	
}




