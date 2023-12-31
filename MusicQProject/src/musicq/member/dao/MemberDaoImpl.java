package musicq.member.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import musicq.util.MybatisDao;
import musicq.vo.MemberVO;


public class MemberDaoImpl extends MybatisDao implements IMemberDao {

	private static IMemberDao memDao;
	
	private MemberDaoImpl() {
	}

	public static IMemberDao getInstance() {
		if(memDao == null) {
			memDao = new MemberDaoImpl();
		}
		return memDao;
	}


	
	@Override
	public int insertMember(MemberVO mv) {
		
		int cnt = insert("member.insert", mv);
		
		return cnt;
	}

	@Override
	public int updateMember(MemberVO mv) {
		int cnt = update("member.update", mv);
		return cnt;
	}

	@Override
	public boolean checkMember(String memId) {
		
		int cnt = selectOne("member.check", memId);
		
		boolean isExist = false;

		if(cnt > 0) {
			isExist = true;
		}
		
		return isExist;
	}

	@Override
	public int deleteMember(String memId) {
		int cnt = delete("member.delete", memId);
		return cnt;
	}

	@Override
	public List<MemberVO> getAllMember() {
		List<MemberVO> memList = selectList("member.getAll");
		return memList;
	}

	@Override
	public List<MemberVO> searchMember(MemberVO mv) {
		List<MemberVO> memList = selectList("member.search", mv);
		return memList;
	}

	@Override
	public MemberVO getMember(String memId) {
		MemberVO mv = selectOne("member.get", memId);
		return mv;
	}
	
	


	@Override
	public String loginChk(Map<String, Object> map) throws SQLException {
		return selectOne("member.loginChk", map);
	}

	@Override
	public String getPw(String memEmail) {
		return selectOne("member.getPw", memEmail);
	}
}
