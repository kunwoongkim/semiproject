package member.model.service;

import java.sql.Connection;

import common.JDBCTemplate;
import member.model.dao.MemberDao;
import member.model.vo.Member;

public class MemberService {
	
	public Member selectMember(String userId,String userPwd) {
		
			Connection conn = JDBCTemplate.getConnection();
			Member member = new MemberDao().selectMember(conn,userId,userPwd);
			JDBCTemplate.close(conn);
			return member;
			
			
	}
public Member selectId(String userId) {
		
		Connection conn = JDBCTemplate.getConnection();
		Member member = new MemberDao().selectId(conn,userId);
		JDBCTemplate.close(conn);
		return member;
	}
	
	public int updateMember(Member member) {
		Connection conn = JDBCTemplate.getConnection();
		int result = new MemberDao().updateMember(conn,member);
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		
		JDBCTemplate.close(conn);
		return result;
		
	}
	
	
	public Member MyPage(String userId) {
		Connection conn = JDBCTemplate.getConnection();
		Member member = new MemberDao().MyPage(conn,userId);
		JDBCTemplate.close(conn);
		return member;
		
	}
	
	
	
	public int RePwd(String userId, String Pwd) {
		Connection conn = JDBCTemplate.getConnection();
		
		int result = new MemberDao().RePwd(conn,userId,Pwd);
		
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		return result;
	}
	
	public Member questionPwd(String question,String answer,String memberId) {
		Connection conn = JDBCTemplate.getConnection();
		
		Member member= new MemberDao().questionPwd(conn,question,answer,memberId);
		
		JDBCTemplate.close(conn);
		return member;
	}
	
	
	public int insertMember(Member member) { //회원가입
		Connection conn = JDBCTemplate.getConnection();
		int result = new MemberDao().insertMember(conn, member);

		if (result > 0) {
			JDBCTemplate.commit(conn);
		} else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		return result;
	}
	
	
	public Member selectNickName(String userNickName) {
		Connection conn = JDBCTemplate.getConnection();
		Member member = new MemberDao().selectNickName(conn, userNickName);
		JDBCTemplate.close(conn);
		return member;
	}
}
