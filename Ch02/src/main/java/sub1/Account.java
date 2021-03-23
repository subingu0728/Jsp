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
		out.println("�����: "+bank+"</br>");
		out.println("�����: "+accId+"</br>");
		out.println("�����: "+name+"</br>");
		out.println("�����: "+money+"</br>");
		out.println("</p>");
		
	}
}
