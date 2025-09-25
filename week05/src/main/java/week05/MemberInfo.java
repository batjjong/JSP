package week05;

public class MemberInfo {
	//자바빈 : 데이터를 전달하는 모델(DTO)
	//속성(property) : 반드시 private
	private String id;
	private String password;
	private String name;
	private String email;
	private String registerDate;
	
	//외부에서 접근 가능한 getter(), setter() 반드시 필요
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getRegisterDate() {
		return registerDate;
	}
	public void setRegisterDate(String registerDate) {
		this.registerDate = registerDate;
	}
	
	
	
}
