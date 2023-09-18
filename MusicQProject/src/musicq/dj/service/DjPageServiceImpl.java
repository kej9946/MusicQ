package musicq.dj.service;

import java.util.List;

import musicq.dj.dao.DjPageDaoImpl;
import musicq.dj.dao.IDjPageDao;
import musicq.vo.DjPageVO;

public class DjPageServiceImpl implements IDjPageService {

	private IDjPageDao djpDao;

	private static IDjPageService djpService;

	private DjPageServiceImpl() {
		djpDao = DjPageDaoImpl.getInstance();

	}

	public static IDjPageService getInstance() {

		if (djpService == null) {
			djpService = new DjPageServiceImpl();
		}
		return djpService;
	}
	
	// DJ페이지 생성 확인(0/1 반환)
	@Override
	public int insertdjp(DjPageVO djpv) {
		return djpDao.insertdjp(djpv);
	}

	// DJ페이지 정보 수정(0/1 반환)
	@Override
	public int updateDjp(DjPageVO djpv) {
		return djpDao.updateDjp(djpv);
	}
	// DJ페이지 정보 삭제(0/1 반환)
	@Override
	public int deleteDjp(String memIdorDjNm) {
		return djpDao.deleteDjp(memIdorDjNm);
	}
	// DJ페이지 생성 여부 확인(0/1 반환)
	@Override
	public boolean checkDjp(String memId) {
		return djpDao.checkDjp(memId);
	}
	
	// DJ페이지 1개 정보 조회
	@Override
	public DjPageVO getDjp(String memId) {
		return djpDao.getDjp(memId);
	}

	// 전체 DJ페이지 정보 조회
	@Override
	public List<DjPageVO> getAllDjp() {
		return djpDao.getAllDjp();
		}
	
	// DJ페이지 검색
	@Override
	public List<DjPageVO> searchDjp(DjPageVO djpv) {
		return djpDao.searchDjp(djpv);
	}

	@Override
	public String getDjpImg(String memId) {
		return djpDao.getDjpImg(memId);
	}

	@Override
	public String getDjpDjimg(String memId) {
		return djpDao.getDjpDjimg(memId);
	}

	@Override
	public String getDjNm(String memId) {
		return djpDao.getDjNm(memId);
	}

	@Override
	public String getDjpNm(String memId) {
		return djpDao.getDjpNm(memId);
	}

	@Override
	public String getDjpIntro(String memId) {
		return djpDao.getDjpIntro(memId);
	}

	@Override
	public String getDjpGenre(String memId) {
		return djpDao.getDjpGenre(memId);
	}

	@Override
	public String getDjpSns(String memId) {
		return djpDao.getDjpSns(memId);
	}

	@Override
	public String getDjpSnsCorp(String memId) {
		return djpDao.getDjpSnsCorp(memId);
	}

	@Override //1추가
	public int getDjpHit(String memId) {
		return djpDao.getDjpHit(memId);
	}

	@Override
	public String getDjpKeywd(String memId) {
		return djpDao.getDjpKeywd(memId);

}

	@Override //좋아요 수 조회
	public int getHitCount(String memId) {
		return djpDao.getDjpHitCount(memId);

	}
}
