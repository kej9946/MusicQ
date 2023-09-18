package musicq.member.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import musicq.member.dao.IMemberDao;
import musicq.member.dao.MemberDaoImpl;
import musicq.vo.MemberVO;



public class MemberServiceImpl implements IMemberService{
   
   private IMemberDao memDao;
   
   private static IMemberService memService;
   
   private MemberServiceImpl() {
      memDao = MemberDaoImpl.getInstance();
   }
   
   public static IMemberService getInstance() {
      
      if(memService == null) {
         
         memService = new MemberServiceImpl();
      }
      
      return memService;
   }

   @Override
   public int registMember(MemberVO mv) {
      return memDao.insertMember(mv);
      
      
   }

   @Override
   public int modifyMember(MemberVO mv) {
      return memDao.updateMember(mv);
   }

   @Override
   public boolean checkMember(String memId) {
      return memDao.checkMember(memId);
   }

   @Override
   public int removeMember(String memId) {
      return memDao.deleteMember(memId);
   }

   @Override
   public List<MemberVO> displayAllMember() {
      return memDao.getAllMember();
   }

	@Override
	public List<MemberVO> searchMember(MemberVO mv) {
		return memDao.searchMember(mv);
	}

	@Override
	public MemberVO getMember(String memId) {
		return memDao.getMember(memId);
	}

	@Override
	public String loginChk(Map<String, Object> map) {
		String loginChk = "";
		try {
			loginChk = memDao.loginChk(map);
		}catch(SQLException e) {
			e.printStackTrace();
		}
		//dao에게 함수를 호출하여 결과를 요청합시다
		return loginChk;
	}


	@Override
	public String getPw(String memEmail) {
		return memDao.getPw(memEmail);
	}
}