package musicq.member.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import musicq.coupon.service.CouponServiceImpl;
import musicq.coupon.service.ICouponService;


 
@WebServlet("/listCoupon")
public class ListCoupon extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public ListCoupon() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		//클라이넘트 전송시 데이타 받기 
		String memId = request.getParameter("id");
		
		ICouponService service = CouponServiceImpl.getInstance();
		
//		List<CouponVO> couponList = service.selectAllCoupon(memId);
		
		List<HashMap<String, Object>> couponList = service.selectAllCoupon(memId);
		
//		if (couponList.size() == 0) {
//			
//		} else {
//			
//		}
//	      Set<String> keySet = couponList.get(0).keySet();
//	      System.out.println("Iterator를 이용한 방법");
//
//	      // 방법2 => Set타입의 데이터를 '향상된 for문(for-each)'으로 처리하면 Iterator를 사용하지 않아도 된다
//	      System.out.println("향상된 for문을 이용한 방법");
//	      for (String key : keySet) {
//	         System.out.println(key + " : " + couponList.get(0).get(key));
//	      }
	      
		request.setAttribute("couponList", couponList);
		
		
		
		
		request.getRequestDispatcher("/view/couponList.jsp").forward(request, response);
	}

}
