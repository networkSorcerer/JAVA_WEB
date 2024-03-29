package com.mvc.board.dao;

import static com.mvc.common.util.JDBCTemplate.close;
import static com.mvc.common.util.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.mvc.board.vo.BoardVO;



public class BoardDAO {
	private static BoardDAO instance = null;
	
	public static BoardDAO getInstance () {
		if(instance == null) {
			instance = new BoardDAO();
		}
		return instance;
	}
	private BoardDAO() {}
	
	public List<BoardVO> boardList(BoardVO vo) {
		List<BoardVO> list = new ArrayList<BoardVO> ();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = getConnection();
			StringBuffer query = new StringBuffer();
			query.append("SELECT num, author, title, ");
			query.append("to_char(writeday, 'YYYY/MM/DD')writeday, ");
			query.append("readcnt, repRoot, repStep, repIndent ");
			query.append("FROM board ");
			query.append("order by repRoot desc, repStep asc");
			
			pstmt = conn.prepareStatement(query.toString());
			rs = pstmt.executeQuery();
			
			while( rs.next()) {
				BoardVO data = new BoardVO();
				data.setNum(rs.getInt("num"));
				data.setAuthor(rs.getString("author"));
				data.setTitle(rs.getString("title"));
				data.setWriteday(rs.getString("writeday"));
				data.setReadcnt(rs.getInt("readcnt"));
				data.setRepRoot(rs.getInt("repRoot"));
				data.setRepStep(rs.getInt("repStep"));
				data.setRepIndent(rs.getInt("repIndent"));
				
				list.add(data);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
			close(conn);
		}
		return list;
	}
	
	public int boardInsert(BoardVO vo ) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int result = 0;
		try {
			conn = getConnection();
			StringBuffer query = new StringBuffer();
			query.append("INSERT INTO board ( num, author, title, content, reproot, repstep, repident, passwd ) ");
			query.append("VALUES( board_seq.nextval , ?, ?, ?, board_seq.currval, 0, 0, ?)");
			
			pstmt = conn.prepareStatement(query.toString());
			pstmt.setString(1, vo.getAuthor());
			pstmt.setString(2,  vo.getTitle());
			pstmt.setString(3, vo.getContent());
			pstmt.setString(4, vo.getPasswd());
			result = pstmt.executeUpdate();
			
			if(result == 1) {
				
			}
		} catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(conn);
		}
		return result;
	}
	
}
