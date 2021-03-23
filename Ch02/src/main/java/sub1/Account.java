package sub1;

public class Account {
	
	private String bank;
	private String accId;
	private String name;
	private int money;
	
	public Account(String bank, String accId, String name, int money) {
		this.bank = bank;
		this.accId = accId;
		this.name =name;
		this.money = money;
	}
	
	public void deposit(int money) {
		this.money += money;
	}
	
	public void withdraw(int money) {
		this.money -= money;
	}
	
	public void show(JspWriter out) {
		out.println("<p>");
		out.println("은행명: "+bank+"</br>");
		out.println("은행명: "+accId+"</br>");
		out.println("은행명: "+name+"</br>");
		out.println("은행명: "+money+"</br>");
		out.println("</p>");
		
	}
}
