package musicq.dj.controller;

import musicq.dj.service.DjPageServiceImpl;
import musicq.dj.service.IDjPageService;
import musicq.vo.DjPageVO;

public class Test {

	public static void main(String[] args) {

		DjPageVO djpv = new DjPageVO();
		
		djpv.setMemId("gusl7617");

		
		System.out.println(djpv.toString());
		
		
		IDjPageService djps = DjPageServiceImpl.getInstance();
		
		DjPageVO djpv2=	djps.getDjp("gusl7617");
		
		System.out.println("사진" + djpv2.getDjpDjimgCd());
		
	}

}
