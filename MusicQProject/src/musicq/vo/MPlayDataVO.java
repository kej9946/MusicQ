package musicq.vo;

public class MPlayDataVO {
	
	String mCd; //음악 코드
	String mWeather; // 가장 많이 재생된 날씨 
	String mSeason; // 가장 많이 재생된 계절
	String mMemMbti; // 이 음악을 재생한 회원의 MBTI
	String mMemKeyWd; // 이 음악을 재생한 회원의 관심 키워드
	String mMemHitMCd; // 이 음악을 재생한 회원이 찜한 음악코드
	String hitDjMemId; // 이음악을 재생한 회원이 찜한 DJ회원 
	public MPlayDataVO(String mCd, String mWeather, String mSeason, String mMemMbti, String mMemKeyWd,
			String mMemHitMCd, String hitDjMemId) {
		super();
		this.mCd = mCd;
		this.mWeather = mWeather;
		this.mSeason = mSeason;
		this.mMemMbti = mMemMbti;
		this.mMemKeyWd = mMemKeyWd;
		this.mMemHitMCd = mMemHitMCd;
		this.hitDjMemId = hitDjMemId;
	}
	public String getmCd() {
		return mCd;
	}
	public void setmCd(String mCd) {
		this.mCd = mCd;
	}
	public String getmWeather() {
		return mWeather;
	}
	public void setmWeather(String mWeather) {
		this.mWeather = mWeather;
	}
	public String getmSeason() {
		return mSeason;
	}
	public void setmSeason(String mSeason) {
		this.mSeason = mSeason;
	}
	public String getmMemMbti() {
		return mMemMbti;
	}
	public void setmMemMbti(String mMemMbti) {
		this.mMemMbti = mMemMbti;
	}
	public String getmMemKeyWd() {
		return mMemKeyWd;
	}
	public void setmMemKeyWd(String mMemKeyWd) {
		this.mMemKeyWd = mMemKeyWd;
	}
	public String getmMemHitMCd() {
		return mMemHitMCd;
	}
	public void setmMemHitMCd(String mMemHitMCd) {
		this.mMemHitMCd = mMemHitMCd;
	}
	public String getHitDjMemId() {
		return hitDjMemId;
	}
	public void setHitDjMemId(String hitDjMemId) {
		this.hitDjMemId = hitDjMemId;
	}
	@Override
	public String toString() {
		return "MPlayDataVO [mCd=" + mCd + ", mWeather=" + mWeather + ", mSeason=" + mSeason + ", mMemMbti=" + mMemMbti
				+ ", mMemKeyWd=" + mMemKeyWd + ", mMemHitMCd=" + mMemHitMCd + ", hitDjMemId=" + hitDjMemId + "]";
	}
	
	
	
	
}
