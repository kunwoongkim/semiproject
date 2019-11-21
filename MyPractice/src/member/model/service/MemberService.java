package member.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import common.JDBCTemplate;
import member.model.dao.MemberDao;
import member.model.vo.Member;
import member.model.vo.PageData;

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

public Member selectEmail(String email) {
	
	Connection conn = JDBCTemplate.getConnection();
	Member member = new MemberDao().selectEmail(conn,email);
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
	public PageData selectListM(int currentPage){
		Connection conn = JDBCTemplate.getConnection();
		int recordCountPerPage =10;
		int naviCountPerPage=5;
		PageData pd = new PageData();
		
		pd.setPageList(new MemberDao().selectListM(conn,currentPage,recordCountPerPage));
		pd.setPageNavi(new MemberDao().getPageNaviM(conn,currentPage, recordCountPerPage,naviCountPerPage));
		
		JDBCTemplate.close(conn);
		return pd;
	}


public PageData memberSearchList(int currentPage, String search){
		Connection conn = JDBCTemplate.getConnection();
		int recordCountPerPage =10;
		int naviCountPerPage=5; //페이지를 몇개 보여줄 것인지 ,5개만 나타나게
		PageData pd = new PageData();
		pd.setPageList(new MemberDao().memberSearchList(conn, search, recordCountPerPage, currentPage));
		pd.setPageNavi(new MemberDao().getSearchPageNavi(conn, currentPage, recordCountPerPage, naviCountPerPage,search));
		ArrayList<Member> memList = new MemberDao().memberSearchList(conn, search, currentPage,recordCountPerPage);
		new MemberDao().getPageNaviM(conn, currentPage, recordCountPerPage, naviCountPerPage);
		JDBCTemplate.close(conn);
		return pd;
	}

public Member findId(String userName, String email) {
	Connection conn = JDBCTemplate.getConnection();
	Member member = new MemberDao().findId(conn, userName, email);

	JDBCTemplate.close(conn);
	return member;
}

public Member findPw(String userId) {
	Connection conn = JDBCTemplate.getConnection();
	Member member = new MemberDao().findPw(conn, userId);

	JDBCTemplate.close(conn);
	return member;
}

public Member findUpdatePw(String userId,String pass) {
	Connection conn = JDBCTemplate.getConnection();
	Member member = new MemberDao().selectMember(conn, userId, pass);

	JDBCTemplate.close(conn);
	return member;
}
}
