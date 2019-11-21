package member.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

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
	
	public Member selectEmail(Connection conn, String email) {
		Member member = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "Select * From member where email=?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, email);
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
				member.setLoginType(rset.getString("LOGINTYPE"));
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
	
	
	public int insertMember(Connection conn, Member member) { //회원가입
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "INSERT INTO MEMBER VALUES (?,?,?,?,?,?,?,?,?,?,?)";
		System.out.println(member.getGender());
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
			pstmt.setString(11, member.getLoginType());
		
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
	
	public ArrayList<Member> memberSearchList(Connection conn, String search, int recordCountPerPage, int currentPage) {
	      ArrayList<Member> memList = new ArrayList<Member>();
	      PreparedStatement pstmt = null;
	      ResultSet rset = null;

	      String query = "select * FROM (Select MEMBER.*, ROW_NUMBER() OVER(ORDER BY USER_ID DESC) AS NUM FROM MEMBER WHERE USER_NAME LIKE ?) WHERE NUM BETWEEN ? and ?";

	      int start = currentPage * recordCountPerPage - (recordCountPerPage - 1);
	      int end = currentPage * recordCountPerPage;
	      try {
	         pstmt = conn.prepareStatement(query);
	         pstmt.setString(1, "%" + search + "%");
	         pstmt.setInt(2, start);
	         pstmt.setInt(3, end);
	         rset = pstmt.executeQuery();

	         while (rset.next()) {
	            Member member = new Member();
	            member.setUserId(rset.getString("USER_ID"));
	            member.setUsernum1(rset.getInt("USER_NUMBER1"));
	            member.setUserName(rset.getString("USER_NAME"));
	            member.setUserNickName(rset.getString("USER_NICKNAME"));
	            member.setAddr(rset.getString("ADDR"));
	            member.setPhone(rset.getString("PHONE"));
	            member.setEmail(rset.getString("EMAIL"));
	            member.setBloodType(rset.getString("BLOOD_TYPE"));
	            member.setGender(rset.getString("GENDER"));
	            member.setLoginType(rset.getString("LOGINTYPE"));
	            memList.add(member);

	         }
	      } catch (SQLException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      } finally {
	         JDBCTemplate.close(rset);
	         JDBCTemplate.close(pstmt);
	      }

	      return memList;
	   }
	   
	   
	   public String getSearchPageNavi(Connection conn, int currentPage, int recordCountPerPage, int naviCountPerPage,String search) {

	      int recordTotalCount = getSearchTotalCount(conn, search);
	      int pageTotalCount = 0;

	   
	      if (recordTotalCount % recordCountPerPage > 0) {
	         pageTotalCount = recordTotalCount / recordCountPerPage + 1;
	      } else {
	         pageTotalCount = recordTotalCount / recordCountPerPage;
	      }
	   
	      if (currentPage < 1) {
	         currentPage = 1;
	      } else if (currentPage > pageTotalCount) {
	         currentPage = pageTotalCount;
	      }
	      
	      int startNavi = ((currentPage - 1) / naviCountPerPage) * naviCountPerPage + 1;
	      int endNavi = startNavi + naviCountPerPage - 1;
	      
	      if (endNavi > pageTotalCount) {
	         endNavi = pageTotalCount;
	      }
	      
	      boolean needPrev = true;
	      boolean needNext = true;

	      if (startNavi == 1) {
	         needPrev = false;
	      }
	      if (endNavi == pageTotalCount) {
	         needNext = false;
	      }

	      
	      StringBuilder sb = new StringBuilder();

	      if (needPrev) {
	         sb.append("<a href='/memberSearch?search=" + search + "&currentPage=" + (startNavi - 1) + "'>< </a>");

	      }
	      for (int i = startNavi; i <= endNavi; i++) {
	         if (i == currentPage) {
	            sb.append("<a href='memberSearch?search=" + search + "&currentPage=" + i + "'><b>" + i + "</b></a>");
	         }else {
	            sb.append("<a href='memberSearch?search=" + search + "&currentPage=" + i + "'>" + i + "</a>");
	         }
	      }
	      if(needNext) {
	         sb.append("<a href='/memberSearch?search="+search+"&currentPage="+(endNavi+1)+"'> ></a>");
	      }
	      return sb.toString();
	   }

	   
	   
	   public int getSearchTotalCount(Connection conn, String search) {
	      PreparedStatement pstmt = null;
	      ResultSet rset = null;

	      String query = "SELECT COUNT(*) AS TOTALCOUNT FROM MEMBER WHERE USER_NAME LIKE ?"; 
	      int recordTotalCount = 0;
	      try {
	         pstmt = conn.prepareStatement(query);
	         pstmt.setString(1, "%" + search + "%");
	         rset = pstmt.executeQuery();
	         rset.next();
	         recordTotalCount = rset.getInt("TOTALCOUNT");
	      } catch (SQLException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      } finally {
	         JDBCTemplate.close(rset);
	         JDBCTemplate.close(pstmt);
	      }
	      return recordTotalCount;

	   }
	   
	   
	   
	   
	   

	   public ArrayList<Member> selectListM(Connection conn, int currentPage, int recordCountPerPage) {

	      ArrayList<Member> memList = new ArrayList<Member>();
	      PreparedStatement pstmt = null;
	      ResultSet rset = null;

	      int start = currentPage * recordCountPerPage - (recordCountPerPage - 1);
	      int end = currentPage * recordCountPerPage;

	      String query = "SELECT * FROM (Select ROW_NUMBER() OVER(ORDER BY USER_ID DESC) AS NUM, MEMBER.* FROM MEMBER) where NUM between ? and ?";
	      try {
	         pstmt = conn.prepareStatement(query);
	         pstmt.setInt(1, start);
	         pstmt.setInt(2, end);
	         rset = pstmt.executeQuery();
	         memList = new ArrayList<Member>();

	         while (rset.next()) {
	            Member mOne = new Member();
	            mOne.setUserId(rset.getString("USER_ID"));
	            mOne.setUserPw(rset.getString("USER_PW"));
	            mOne.setUsernum1(rset.getInt("USER_NUMBER1"));
	            mOne.setUserName(rset.getString("USER_NAME"));
	            mOne.setUserNickName(rset.getString("USER_NICKNAME"));
	            mOne.setAddr(rset.getString("ADDR"));
	            mOne.setPhone(rset.getString("PHONE"));
	            mOne.setEmail(rset.getString("EMAIL"));
	            mOne.setBloodType(rset.getString("BLOOD_TYPE"));
	            mOne.setGender(rset.getString("GENDER"));
	         

	            memList.add(mOne);
	         }

	      } catch (SQLException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      } finally {
	         JDBCTemplate.close(rset);
	         JDBCTemplate.close(pstmt);
	      }
	      return memList;
	   }

	   public String getPageNaviM(Connection conn, int currentPage, int recordCountPerPage, int naviCountPerPage) {
	      int recordTotalCount = totalCountM(conn);
	      int PageTotalCount = 0;// 전체 페이지 개수

	      if (recordTotalCount % recordCountPerPage > 0) {
	         PageTotalCount = recordTotalCount / recordCountPerPage + 1;
	      } else {
	         PageTotalCount = recordTotalCount / recordCountPerPage;
	      }
	      if (currentPage < 1) {
	         currentPage = 1;
	      } else if (currentPage > PageTotalCount) {
	         currentPage = PageTotalCount;
	      }
	      int startNavi = ((currentPage - 1) / naviCountPerPage) * naviCountPerPage + 1;
	      int endNavi = startNavi + naviCountPerPage - 1;

	      if (endNavi > PageTotalCount) {
	         endNavi = PageTotalCount;
	      }
	      boolean needPrev = true;
	      boolean needNext = true;

	      if (startNavi == 1) {
	         needPrev = false;
	      }
	      if (endNavi == PageTotalCount) {
	         needNext = false;
	      }

	      StringBuilder sb = new StringBuilder();
	      if (needPrev) {
	         sb.append("<a href='/memberAll?currentPage=" + (startNavi - 1) + "'>< </a>");
	      }
	      for (int i = startNavi; i <= endNavi; i++) {
	         if (i == currentPage) {
	            sb.append("<a href='/memberAll?currentPage=" + i + "'><b>" + i + "</b></a>");

	         } else {
	            sb.append("<a href='/memberAll?currentPage=" + i + "'>" + i + "</a>");
	         }
	      }
	      if (needNext) {
	         sb.append("<a href='/memberAll?currentPage=" + (endNavi + 1) + "'> ></a>");
	      }
	      return sb.toString();
	   }
	   
	   
	   public int totalCountM(Connection conn) {
	      ResultSet rset = null;
	      PreparedStatement pstmt = null;
	      int recordTotalCount =0;
	      
	      String query = "SELECT COUNT(*) AS TOTALCOUNT FROM MEMBER";
	      
	      try {
	         pstmt = conn.prepareStatement(query);
	         rset = pstmt.executeQuery();
	         rset.next();
	         recordTotalCount = rset.getInt("TOTALCOUNT");
	         
	         
	      } catch (SQLException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }finally {
	         JDBCTemplate.close(rset);
	         JDBCTemplate.close(pstmt);
	      }
	      return recordTotalCount;
	   }
	   public Member findId(Connection conn, String userName, String email) {
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			Member member = null;
			String query = "SELECT * FROM MEMBER WHERE USER_NAME = ? AND EMAIL = ?";

			try {
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1, userName);
				pstmt.setString(2, email);
				rset = pstmt.executeQuery();

				if (rset.next()) {
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
					member.setLoginType(rset.getString("LOGINTYPE"));
				}

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				JDBCTemplate.close(rset);
				JDBCTemplate.close(pstmt);
			}
			return member;
		}

	   public Member findPw(Connection conn, String userId) {
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			Member member = null;
			String query = "SELECT * FROM MEMBER WHERE USER_ID = ?";

			try {
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1, userId);
				
				
				rset = pstmt.executeQuery();

				if (rset.next()) {
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
			} finally {
				JDBCTemplate.close(pstmt);
				JDBCTemplate.close(rset);
			}
			return member;
		}
	 
}

