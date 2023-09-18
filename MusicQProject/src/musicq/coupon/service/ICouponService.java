package musicq.coupon.service;

import java.util.HashMap;
import java.util.List;

import musicq.vo.CouponVO;

public interface ICouponService {
	
	public List<HashMap<String,Object>> selectAllCoupon(String id);

}
