package board.service;


import musicq.vo.GongjiVO;
import java.util.List;

import board.dao.GongjiDaoImpl;
import board.dao.IGongjiDao;


public class GongjiServiceImpl implements IGongjiService {

	
	private IGongjiDao gdao;
	private static IGongjiService service;
	
	//1. 다오임플에 있는 getinstance에 dao넣어줌
	
	private GongjiServiceImpl() {
		gdao = GongjiDaoImpl.getInstance();
	}
	
	//2.서비스 객체를 선언
	public static IGongjiService getInstance() {
		if(service == null) {
			service = new GongjiServiceImpl();
		}
		return service;
	}
	
	@Override
	public int insertGongji(GongjiVO gvo) {
		
		return gdao.insertgongji(gvo);
	}

	@Override
	public int updateGongji(GongjiVO gvo) {

		return gdao.updategongji(gvo);
	}

	@Override
	public int deleteGongji(int gNo) {
		return gdao.deletegongji(gNo);
	}

	@Override
	public GongjiVO getGongjiDetail(String gTitle) {
		return gdao.getgongjiDetail(gTitle);
	}

	@Override
	public List<GongjiVO> getAllGongji() {
		
		return gdao.getAllgongji();
	}

	


}