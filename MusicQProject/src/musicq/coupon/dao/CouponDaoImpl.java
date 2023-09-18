package musicq.coupon.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import musicq.util.MybatisDao;
import musicq.util.MybatisUtill;
import musicq.vo.CouponVO;

public class CouponDaoImpl  implements ICouponDao{
	
	private static ICouponDao dao;
	
	public static ICouponDao getInstance() {
		if(dao == null) {
			dao = new CouponDaoImpl();
		}
		return dao;
	}

	@Override
	public List<HashMap<String,Object>> selectAllCoupon(String id) {
		
		List<HashMap<String,Object>> couponList = null;
		SqlSession session = MybatisUtill.getInstance(true);
		
		try {
			couponList = session.selectList("coupon.selectAllCoupon", id);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return couponList;
	
	}
	


}
