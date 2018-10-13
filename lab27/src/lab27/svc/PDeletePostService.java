package lab27.svc;

import static lab27.db.JdbcUtils.*;

import java.sql.Connection;

import lab27.vo.Lab27_DAO;
import lab27.vo.PostVO;

public class PDeletePostService {

	public boolean postDelete(int poN) {
		Connection conn = getConnection();
		Lab27_DAO dao = new Lab27_DAO(conn);
		PostVO pvo = new PostVO();
		 pvo.setPost_id(poN);
		int check = dao.deletePost(pvo);
		if(check==0) {
			
			rollback(conn);
			close(conn, null, null);
			return false;
		} else {
			commit(conn);
			close(conn, null, null);
			return true;
		}
		
	}

}
