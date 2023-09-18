package musicq.util;

import java.util.Collections;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import musicq.util.MybatisUtill;

public class MybatisDao {
	
	//select 매개변수 2개 
	public <T> List<T> selectList(String statement, Object parameter){

		SqlSession session = MybatisUtill.getInstance(true);
		
		List<T> list = Collections.EMPTY_LIST; //null예외 발생 x, length = 0 초기화방법 ~!
	
		try {
			
			list = session.selectList(statement, parameter);

		} catch (PersistenceException e) {
			
			//unchecked예외 강제하지 않는 예외처리 / 예외 던짐 ~ 
			throw new RuntimeException("마이바티스 목록 조회 중 예외 발생!", e); 
			
		} finally {
			session.close();
		}
		return list;
	}
	
	
	//select 매개변수 1개 
	public <T> List<T> selectList(String statement){
		
		SqlSession session = MybatisUtill.getInstance(true);
		
		List<T> list = Collections.EMPTY_LIST; //null예외 발생 x, length = 0 초기화방법 ~!
		
		try {
			
			list = session.selectList(statement);
			
		} catch (PersistenceException e) {
			
			//unchecked예외 강제하지 않는 예외처리 / 예외 던짐 ~ 
			throw new RuntimeException("마이바티스 목록 조회 중 예외 발생!", e); 
			
		} finally {
			session.close();
		}
		return list;
	}

	//selectOne 매개변수 1개
	public <T> T selectOne(String statement){
		
		SqlSession session = MybatisUtill.getInstance(true);
		
		T obj = null;
		
		try {

			obj = session.selectOne(statement);
			
		} catch (PersistenceException e) {
			
			throw new RuntimeException("마이바티스 데이터 조회 중 예외 발생!", e); 
			
		} finally {
			session.close();
		}
		
		return obj; 
	}
	
	//selectOne 매개변수 2개
	public <T> T selectOne(String statement, Object parameter){
		
		SqlSession session = MybatisUtill.getInstance(true);
		
		T obj = null;
		
		try {
			
			obj = session.selectOne(statement, parameter);
			
		} catch (PersistenceException e) {
			
			throw new RuntimeException("마이바티스 데이터 조회 중 예외 발생!", e); 
			
		} finally {
			session.close();
		}
		
		return obj; 
	}
	//insert(매개변수 1개)
	public int insert(String statement) {
		
		int cnt = 0;
		
		SqlSession session = MybatisUtill.getInstance();
		
		try {
			
			cnt = session.insert(statement);
			
			session.commit(); // 커밋
			
		}catch(PersistenceException ex) {
			
			throw new RuntimeException("마이바티스 데이터 등록중 예외발생!", ex); 
			
		}finally {
			session.close();
		}
		
		return cnt;
		
	}

	//insert(매개변수 2개)
	public int insert(String statement, Object parameter) {
		
		int cnt = 0;
		
		SqlSession session = MybatisUtill.getInstance();
		
		try {
			cnt = session.insert(statement, parameter);
			
			session.commit();
			
		} catch (PersistenceException e) {
			
		  
			
		} finally {
			session.close();
		
		} return cnt;
	}
	
	//update
	public int update(String statement, Object parameter) {
			
		int cnt = 0;
			
		SqlSession session = MybatisUtill.getInstance();
			
		try {
			cnt = session.update(statement, parameter);
			
			session.commit(); // 중요 ~!!!!
			
		} catch (PersistenceException e) {
			session.rollback();
			
			throw new RuntimeException("마이바티스 데이터 수정 중 예외 발생!", e); 
		
		} finally {
			session.close();
			
		} return cnt;
	}
	
	
	//delete
	public int delete(String statement, Object parameter) {
			
		int cnt = 0;
			
		SqlSession session = MybatisUtill.getInstance();
			
		try {
			cnt = session.delete(statement, parameter);
				
			session.commit();
				
		} catch (PersistenceException e) {
				
			throw new RuntimeException("마이바티스 데이터 삭제 중 예외 발생!", e); 
				
		} finally {
			session.close();
			
		} return cnt;
	}
}
