package member.model.exception;

public class MemberException extends Exception{
							//Excption을 상속하면?
							//답 : 
	public MemberException() {}
	
	public MemberException(String message) {
		super(message);
	}
}
