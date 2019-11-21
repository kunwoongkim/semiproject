package member.controller;

import java.io.IOException;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.service.MemberService;
import member.model.vo.Member;

/**
 * Servlet implementation class answerServlet
 */
@WebServlet("/answer")
public class answerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public answerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
request.setCharacterEncoding("utf-8");
		
		String pass = request.getParameter("pass");
		String userId = request.getParameter("userId");
		
		
		Member member = new MemberService().findUpdatePw(userId,pass);
		   if(member != null) {
				
				
				String host = "smtp.naver.com";
		        String user = "rjsdnd2317"; //자신의 네이버 계정
		        String password = "ytysun85219";//자신의 네이버 패스워드
		        
		        //메일 받을 주소
		        String to_email = member.getEmail();
		        
		        //SMTP 서버 정보를 설정한다.
		        Properties props = new Properties();
		        props.put("mail.smtp.host", host);
		        props.put("mail.smtp.port", 465);
		        props.put("mail.smtp.auth", "true");
		        props.put("mail.smtp.ssl.enable", "true");
		        
		        //인증 번호 생성기
		        StringBuffer temp =new StringBuffer();
		        Random rnd = new Random();
		        for(int i=0;i<10;i++)
		        {
		            int rIndex = rnd.nextInt(3);
		            switch (rIndex) {
		            case 0:
		                // a-z
		                temp.append((char) ((int) (rnd.nextInt(26)) + 97));
		                break;
		            case 1:
		                // A-Z
		                temp.append((char) ((int) (rnd.nextInt(26)) + 65));
		                break;
		            case 2:
		                // 0-9
		                temp.append((rnd.nextInt(10)));
		                break;
		            }
		        }
		        String AuthenticationKey = temp.toString();
		        System.out.println(AuthenticationKey);
		        
		        Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
		            protected PasswordAuthentication getPasswordAuthentication() {
		                return new PasswordAuthentication(user,password);
		            }
		        });
		        
		        //email 전송
		        try {
		            MimeMessage msg = new MimeMessage(session);
		            msg.setFrom(new InternetAddress(user, "KH Books"));
		            msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to_email));
		            
		            //메일 제목
		            msg.setSubject("안녕하세요 RED LINE 인증 메일입니다.");
		            //메일 내용
		            msg.setText("인증 번호는 :"+temp);
		            
		            Transport.send(msg);
		            System.out.println("이메일 전송");
		            
		        }catch (Exception e) {
		            e.printStackTrace();// TODO: handle exception
		        }
		     
		        response.getWriter().write(AuthenticationKey);
		     
			}else {
				response.getWriter().write("false");
			}
		   
		   
	}	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
