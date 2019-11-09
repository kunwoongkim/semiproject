package member.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import common.JDBCTemplate;
import member.model.vo.Member;

public class MemberDao {
	
	
	public Member selectMember(Connection conn , String userId, String userPwd) {
		Member member = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "Select * From member where user_id=? and user_pw=?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userId);
			pstmt.setString(2, userPwd);
			rset = pstmt.executeQuery();
			
			if(rset.next())
			{
				member = new Member();
				member.setUserId(rset.getString("USER_ID"));
				member.setUserPw(rset.getString("USER_PW"));
				member.setUsernum1(rset.getInt("USER_NUMBER1"));
				member.setUserName(rset.getString("USER_NAME"));
				member.setUserNickName(rset.getString("USER_NICKNAME"));
				member.setAddr(rset.getString("ADDR"));
				member.setPhone(rset.getString("PHONE"));
				member.setEmail(rset.getString("EMAIL"));
				member.setBloodType(rset.getString("BLOOD_TYPE"));
				member.setGender(rset.getString("GENDER"));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			
			JDBCTemplate.close(pstmt);
			JDBCTemplate.close(rset);
		}
		
		return member;
	}
	
	
	public int updateMember(Connection conn, Member member) {
		
		PreparedStatement pstmt = null;
		int result = 0 ;
		String query = "UPDATE MEMBER SET USER_NUMBER1=?,USER_NAME=?,USER_NICKNAME=?,ADDR=?,PHONE=?,EMAIL=? WHERE USER_ID=?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, member.getUsernum1());
			pstmt.setString(2, member.getUserName());
			pstmt.setString(3, member.getUserNickName());
			pstmt.setString(4, member.getAddr());
			pstmt.setString(5, member.getPhone());
			pstmt.setString(6, member.getEmail());
			pstmt.setString(7, member.getUserId());
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			
			JDBCTemplate.close(pstmt);
		}
		
		return result;
	}
	
	
	public Member MyPage(Connection conn, String userId) {
		
		Member member = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "Select * From member where user_id=?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userId);
			
			rset = pstmt.executeQuery();
			
			if(rset.next())
			{
				member = new Member();
				member.setUserId(rset.getString("USER_ID"));
				member.setUserPw(rset.getString("USER_PW"));
				member.setUsernum1(rset.getInt("USER_NUMBER1"));
				member.setUserName(rset.getString("USER_NAME"));
				member.setUserNickName(rset.getString("USER_NICKNAME"));
				member.setAddr(rset.getString("ADDR"));
				member.setPhone(rset.getString("PHONE"));
				member.setEmail(rset.getString("EMAIL"));
				member.setBloodType(rset.getString("BLOOD_TYPE"));
				member.setGender(rset.getString("GENDER"));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			
			JDBCTemplate.close(pstmt);
			JDBCTemplate.close(rset);
		}
		
		return member;
	}

}
