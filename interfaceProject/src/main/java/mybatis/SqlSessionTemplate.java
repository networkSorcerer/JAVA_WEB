package mybatis;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionTemplate {
	public static SqlSession getSqlSession() {
		SqlSession session = null;
		
		String resource = "resources/mybatis-config.xml";
		
		  try { 
			  Reader reader = Resources.getResourceAsReader(resource);
			  SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader); 
			  session = sqlSessionFactory.openSession(false); 
			  reader.close(); 
			  }catch(IOException e) {
		      e.printStackTrace(); 
		 
		
		/*try {
			//해당 리소스 경로(xml파일)로 input 스트림 생성
			InputStream is = Resources.getResourceAsStream(resource);
			//SqlSessionFactory를 만들 수 있는 팩토리 빌더 생성
			SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
			//팩토리 빌드를 가지고 */
		}
		return session;
	}
}
