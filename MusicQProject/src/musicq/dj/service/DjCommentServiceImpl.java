package musicq.dj.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import musicq.dj.dao.DjCommentDaoImple;
import musicq.dj.dao.DjPageDaoImpl;
import musicq.dj.dao.IDjCommentDao;
import musicq.dj.dao.IDjPageDao;
import musicq.vo.DjpCmntVO;

public class DjCommentServiceImpl implements IDjCommentService{
	
	private IDjCommentDao cmntDao;

	private static IDjCommentService cmnts;

	private DjCommentServiceImpl() {
		cmntDao = DjCommentDaoImple.getInstance();

	}
	
	public static IDjCommentService getInstance() {

		if (cmnts == null) {
			cmnts = new DjCommentServiceImpl();
		}
		return cmnts;
	}
	
	
	
	@Override
	public int insertCmnt(DjpCmntVO vo) {
		return cmntDao.insertCmnt(vo);
	}

	@Override
	public int updateCmnt(DjpCmntVO vo) {
		return cmntDao.updateCmnt(vo);
	}

	@Override
	public int deleteCmnt(DjpCmntVO cmntv) {
		return cmntDao.deleteCmnt(cmntv);
	}

	@Override
	public List<DjpCmntVO> getAllCmnt() {
		return cmntDao.getAllCmnt();
	}

	@Override
	public List<DjpCmntVO> cmntList(Map<String, Object> map) throws SQLException {
		return cmntDao.cmntList(map);
	}

	@Override
	public List<DjpCmntVO> getDjpAllCmnt(String djId) {
		return cmntDao.getDjpAllCmnt(djId);
	}

	@Override
	public List<DjpCmntVO> getDjpCmnt(Map<String, Object> map) {
		return cmntDao.getDjpCmnt(map);
	}

	@Override
	public int countList() throws SQLException {
		return cmntDao.countList();
	}

	

}
