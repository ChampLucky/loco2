package tour.pojo;

public class GetCustomer {
 
	private int c_id;
	private String c_name;
	public int getC_id() {
		return c_id;
	}
	public void setC_id(int c_id) {
		this.c_id = c_id;
	}
	@Override
	public String toString() {
		return "GetCustomer [c_id=" + c_id + ", c_name=" + c_name + ", mob=" + mob + ", address=" + address + ", email="
				+ email + ", password=" + password + "]";
	}
	public String getC_name() {
		return c_name;
	}
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
	public String getMob() {
		return mob;
	}
	public void setMob(String mob) {
		this.mob = mob;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	private String mob;
	private String address;
	private String email;
	private String password;
}
