package musicq.coupon.dao;

import java.util.HashMap;
import java.util.List;

import musicq.vo.CouponVO;

public interface ICouponDao {
	
	public List<HashMap<String,Object>> selectAllCoupon(String id);

}
