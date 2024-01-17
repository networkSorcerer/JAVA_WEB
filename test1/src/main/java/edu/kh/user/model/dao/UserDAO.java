package edu.kh.user.model.dao;

import static jdbc.JDBCTemplate.close;
import static jdbc.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import edu.kh.user.model.vo.UserDTO;
public class UserDAO {
	private static UserDAO instance = null;
	
	public static UserDAO getInstance() {
		if(instance == null ) {
			instance = new UserDAO();
		}
		return instance;
	}
	
	private UserDAO() {}
	
	public UserDTO memberSelect(UserDTO dto) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		UserDTO user =null;
		
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT user_no , user_id, user_name , user_age " );
		sql.append("FROM tb_user ");
		sql.append("WHERE user_no = ?");
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql.toString ());
			pstmt.setInt(1, dto.getUserNo());
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				user = new UserDTO();
				user.setUserNo(rs.getInt("user_no"));
				user.setUserId(rs.getString("user_id"));
				user.setUserName(rs.getString("user_name"));
				user.setUserAge(rs.getInt("user_age"));
			}
		}catch(SQLException se) {
			System.out.println("조회에 문제가 있어 잠시 후에 다시 진행해 주세요 ");
			se.printStackTrace();
		}catch (Exception e) {
			System.out.println("error = [" + e + " ]");
		}finally {
			close(rs);
			close(pstmt);
			close(conn);
		}
		return user;
	}
}
