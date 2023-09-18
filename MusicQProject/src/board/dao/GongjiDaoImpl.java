package board.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import musicq.vo.GongjiVO;
import musicq.util.MybatisDao;

public class GongjiDaoImpl extends MybatisDao implements IGongjiDao {

    private static IGongjiDao gdao;

    // 1. private 생성자 만들기
    private GongjiDaoImpl() {
        
    }

    // 2. static method로 getInstance 사용할 거 만들기
    public static IGongjiDao getInstance() {
        if (gdao == null)
            gdao = new GongjiDaoImpl();
        return gdao;
    }

    @Override
    public int insertgongji(GongjiVO vo) {
        // insert 메소드 호출로 수정
        int cnt = insert("gongji.insert", vo);
        return cnt;
    }

    @Override
    public int updategongji(GongjiVO vo) {
        // update 메소드 호출로 수정
        int cnt = update("gongji.update", vo);
        return cnt;
    }

    @Override
    public int deletegongji(int gNo) {
        // delete 메소드 호출로 수정
        int cnt = delete("gongji.delete", gNo);
        return cnt;
    }

    @Override
    public GongjiVO getgongjiDetail(String gNo) {
        // selectOne 메소드 호출로 수정
        GongjiVO vo = selectOne("gongji.detail",gNo);
        return vo;
    }

    @Override
    public List<GongjiVO> getAllgongji() {
        // selectList 메소드 호출로 수정
        List<GongjiVO> gList = selectList("gongji.getAll");
        return gList;
    }

}
