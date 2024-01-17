package edu.kh.user.model.dao;

import static jdbc.JDBCTemplate.close;
import static jdbc.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import edu.kh.user.model.vo.UserDTO;
public class UserDAO {
	
	public UserDTO search (UserDTO dto) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		UserDTO userDTO = null;
		try{
			con = getConnection();
			StringBuffer query = new StringBuffer();
			query.append("select user_no, user_id, user_name, user_age from tb_user  ");
			
			
			pstmt = con.prepareStatement(query.toString());
			pstmt.setInt(1, dto.getUserNo());
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				userDTO = new UserDTO(0, null, null, 0 );
				userDTO.setUserNo(rs.getInt("user_no"));
				userDTO.setUserId(rs.getString("user_id"));
				userDTO.setUserName(rs.getString("user_name"));
				userDTO.setUserAge(rs.getInt("user_age"));
			}		
		
		
		}catch (Exception e) {
			e.printStackTrace();
		}finally{
			close(rs);
			close(pstmt);
			close(con);
		}
		return userDTO;
	}

	
}

