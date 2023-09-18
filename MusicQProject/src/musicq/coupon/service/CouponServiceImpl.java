package musicq.coupon.service;

import java.util.HashMap;
import java.util.List;

import musicq.coupon.dao.CouponDaoImpl;
import musicq.coupon.dao.ICouponDao;
import musicq.vo.CouponVO;

public class CouponServiceImpl implements ICouponService{
	
	private ICouponDao dao;
	
	private static ICouponService service;
	
	private CouponServiceImpl() {
		dao = CouponDaoImpl.getInstance();
	}
	
	public static ICouponService getInstance() {
		if(service == null) {
			service = new CouponServiceImpl();
		}
		return service;
	}

	@Override
	public List<HashMap<String,Object>> selectAllCoupon(String id) {
		return dao.selectAllCoupon(id);
	}

}
