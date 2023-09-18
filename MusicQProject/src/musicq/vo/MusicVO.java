package musicq.vo;

public class MusicVO {
	String mCd; // 음악코드
	String mReleDt; // 발매일자
	String mRegiDt; // 등록일자
	String mNm; // 음악 제목
	String mSinger; // 음악가수
	String mGenre; // 음악장르
	String mCountry; // 발매국
	String mAlbum; // 앨범명
	String mLyric1; // 가사
	int mWeekCnt; // 주간 누적스트리밍수
	String mHit; // 누적찜수
	String mRuntime; // 재생시간
	String mSimlarCd; // 유사곡분류코드
	int mMonthCnt; // 월간누적스트리밍수
	int mDailyCnt; // 일일누적스트리밍수
	String mPlace; // 어울리는 장소
	String mWeatherMusic; // 날씨 음악
	
	public MusicVO() {}


	
	public MusicVO(String mCd, int mWeekCnt, int mMonthCnt) {
		super();
		this.mCd = mCd;
		this.mWeekCnt = mWeekCnt;
		this.mMonthCnt = mMonthCnt;
	}



	public MusicVO(String mCd, String mReleDt, String mRegiDt, String mNm, String mSinger, String mGenre,
			String mCountry, String mAlbum, String mLyric1, int mWeekCnt, String mHit, String mRuntime,
			String mSimlarCd, int mMonthCnt, int mDailyCnt, String mPlace, String mWeatherMusuc) {
		super();
		this.mCd = mCd;
		this.mReleDt = mReleDt;
		this.mRegiDt = mRegiDt;
		this.mNm = mNm;
		this.mSinger = mSinger;
		this.mGenre = mGenre;
		this.mCountry = mCountry;
		this.mAlbum = mAlbum;
		this.mLyric1 = mLyric1;
		this.mWeekCnt = mWeekCnt;
		this.mHit = mHit;
		this.mRuntime = mRuntime;
		this.mSimlarCd = mSimlarCd;
		this.mMonthCnt = mMonthCnt;
		this.mDailyCnt = mDailyCnt;
		this.mPlace = mPlace;
		this.mWeatherMusic = mWeatherMusic;
	}



	public String getmCd() {
		return mCd;
	}



	public void setmCd(String mCd) {
		this.mCd = mCd;
	}



	public String getmReleDt() {
		return mReleDt;
	}



	public void setmReleDt(String mReleDt) {
		this.mReleDt = mReleDt;
	}



	public String getmRegiDt() {
		return mRegiDt;
	}



	public void setmRegiDt(String mRegiDt) {
		this.mRegiDt = mRegiDt;
	}



	public String getmNm() {
		return mNm;
	}



	public void setmNm(String mNm) {
		this.mNm = mNm;
	}



	public String getmSinger() {
		return mSinger;
	}



	public void setmSinger(String mSinger) {
		this.mSinger = mSinger;
	}



	public String getmGenre() {
		return mGenre;
	}



	public void setmGenre(String mGenre) {
		this.mGenre = mGenre;
	}



	public String getmCountry() {
		return mCountry;
	}



	public void setmCountry(String mCountry) {
		this.mCountry = mCountry;
	}



	public String getmAlbum() {
		return mAlbum;
	}



	public void setmAlbum(String mAlbum) {
		this.mAlbum = mAlbum;
	}



	public String getmLyric1() {
		return mLyric1;
	}



	public void setmLyric1(String mLyric1) {
		this.mLyric1 = mLyric1;
	}



	public int getmWeekCnt() {
		return mWeekCnt;
	}



	public void setmWeekCnt(int mWeekCnt) {
		this.mWeekCnt = mWeekCnt;
	}



	public String getmHit() {
		return mHit;
	}



	public void setmHit(String mHit) {
		this.mHit = mHit;
	}



	public String getmRuntime() {
		return mRuntime;
	}



	public void setmRuntime(String mRuntime) {
		this.mRuntime = mRuntime;
	}



	public String getmSimlarCd() {
		return mSimlarCd;
	}



	public void setmSimlarCd(String mSimlarCd) {
		this.mSimlarCd = mSimlarCd;
	}



	public int getmMonthCnt() {
		return mMonthCnt;
	}



	public void setmMonthCnt(int mMonthCnt) {
		this.mMonthCnt = mMonthCnt;
	}



	public int getmDailyCnt() {
		return mDailyCnt;
	}



	public void setmDailyCnt(int mDailyCnt) {
		this.mDailyCnt = mDailyCnt;
	}



	public String getmPlace() {
		return mPlace;
	}



	public void setmPlace(String mPlace) {
		this.mPlace = mPlace;
	}



	public String getmWeatherMusuc() {
		return mWeatherMusic;
	}



	public void setmWeatherMusuc(String mWeatherMusic) {
		this.mWeatherMusic = mWeatherMusic;
	}



	@Override
	public String toString() {
		return "MusicVO [mCd=" + mCd + ", mReleDt=" + mReleDt + ", mRegiDt=" + mRegiDt + ", mNm=" + mNm + ", mSinger="
				+ mSinger + ", mGenre=" + mGenre + ", mCountry=" + mCountry + ", mAlbum=" + mAlbum + ", mLyric1="
				+ mLyric1 + ", mWeekCnt=" + mWeekCnt + ", mHit=" + mHit + ", mRuntime=" + mRuntime + ", mSimlarCd="
				+ mSimlarCd + ", mMonthCnt=" + mMonthCnt + ", mDailyCnt=" + mDailyCnt + ", mPlace=" + mPlace
				+ ", mWeatherMusuc=" + mWeatherMusic + "]";
	}



	
	
	
}
