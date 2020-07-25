package tour.pojo;

public class GetPackage {

	private int p_id;
	private String description;
	private int p_cost;
	private int days;
	private String category;
	public String getP_image() {
		return p_image;
	}
	public void setP_image(String p_image) {
		this.p_image = p_image;
	}
	private int availability;
	private int city_id;
	private String p_image;
	public int getP_id() {
		return p_id;
	}
	public void setP_id(int p_id) {
		this.p_id = p_id;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getP_cost() {
		return p_cost;
	}
	public void setP_cost(int p_cost) {
		this.p_cost = p_cost;
	}
	public int getDays() {
		return days;
	}
	public void setDays(int days) {
		this.days = days;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public int getAvailability() {
		return availability;
	}
	public void setAvailability(int availability) {
		this.availability = availability;
	}
	public int getCity_id() {
		return city_id;
	}
	public void setCity_id(int city_id) {
		this.city_id = city_id;
	}
	@Override
	public String toString() {
		return "GetPackage [p_id=" + p_id + ", description=" + description + ", p_cost=" + p_cost + ", days=" + days
				+ ", category=" + category + ", availability=" + availability + ", city_id=" + city_id + ", p_image="
				+ p_image + "]";
	}
	
	
	
	
	
	
}
