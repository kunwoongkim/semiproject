package member.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import common.JDBCTemplate;
import member.model.vo.Member;

public class MemberDao {
	
	
	
	public Member selectId(Connection conn, String userId) {
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
				member.setQuestion(rset.getString("QUESTION"));
				member.setAnswer(rset.getString("ANSWER"));
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
	
	
	public int RePwd(Connection conn,String userId, String Pwd) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		String query ="update MEMBER SET USER_PW=? WHERE USER_ID=?";
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, Pwd);
			pstmt.setString(2, userId);
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			
			JDBCTemplate.close(pstmt);
		}
		
		return result;
	}
	
	public Member questionPwd(Connection conn,String question, String answer, String memberId) {
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "Select * From MEMBER WHERE MEMBER_ID=? AND QUESTION=? AND ANSWER=?";
		Member member = null;
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, memberId);
			pstmt.setString(2, question);
			pstmt.setString(3, answer);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
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
	public int insertMember(Connection conn, Member member) { //회원가입
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "INSERT INTO MEMBER VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";

		try {
			pstmt = conn.prepareStatement(query);
			// 회원가입은 입력받은 값을 컬럼에 넣어주는 거니까 선언해둔 member에서 입력받은 값을 가져와서 쓴다
			pstmt.setString(1, member.getUserId());
			pstmt.setString(2, member.getUserPw());
			pstmt.setInt(3, member.getUsernum1());
			pstmt.setString(4, member.getUserName());
			pstmt.setString(5, member.getUserNickName());
			pstmt.setString(6, member.getAddr());
			pstmt.setString(7, member.getPhone());
			pstmt.setString(8, member.getEmail());
			pstmt.setString(9, member.getBloodType());
			pstmt.setString(10, member.getGender());
			pstmt.setString(11, member.getQuestion());
			pstmt.setString(12, member.getAnswer());

			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}
	
	public Member selectNickName(Connection conn, String userNickName) {
		PreparedStatement pstmt = null;
		Member member = null;
		ResultSet rset = null;
		String query = "SELECT * FROM MEMBER WHERE USER_NICKNAME = ?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userNickName);
			rset = pstmt.executeQuery();

			if (rset.next()) {
				member = new Member();
				member.setUserId(rset.getString("USER_ID"));
				member.setUserPw(rset.getString("USER_PW"));
				member.setUsernum1(rset.getInt("USER_NUMBER1"));
				member.setUserName(rset.getNString("USER_NAME"));
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
		} finally {
			JDBCTemplate.close(pstmt);
			JDBCTemplate.close(rset);
		}

		return member;
	}

}
