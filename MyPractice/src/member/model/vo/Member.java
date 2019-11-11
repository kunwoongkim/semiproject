package member.model.vo;

public class Member {

	private String userId ;
	private String userPw;
	private int usernum1;
	private int usernum2;
	private String  userName;
	private String userNickName;
	private String addr;
	private String phone;
	private String email;
	private String BloodType;
	private String Gender;
	private String Question;
	private String Answer;
	public String getAnswer() {
		return Answer;
	}

	public void setAnswer(String answer) {
		Answer = answer;
	}

	public Member() {
		
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPw() {
		return userPw;
	}

	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}

	public int getUsernum1() {
		return usernum1;
	}

	public void setUsernum1(int usernum1) {
		this.usernum1 = usernum1;
	}

	public int getUsernum2() {
		return usernum2;
	}

	public void setUsernum2(int usernum2) {
		this.usernum2 = usernum2;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserNickName() {
		return userNickName;
	}

	public void setUserNickName(String userNickName) {
		this.userNickName = userNickName;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getBloodType() {
		return BloodType;
	}

	public void setBloodType(String bloodType) {
		BloodType = bloodType;
	}

	public String getGender() {
		return Gender;
	}

	public void setGender(String gender) {
		Gender = gender;
	}

	public String getQuestion() {
		return Question;
	}

	public void setQuestion(String question) {
		Question = question;
	}
	
	
}
