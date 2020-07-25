package tour.pojo;

public class GetHotel {

   int h_id;
   String h_name;
   int per_day_cost;
public int getH_id() {
	return h_id;
}
public void setH_id(int h_id) {
	this.h_id = h_id;
}
public String getH_name() {
	return h_name;
}
@Override
public String toString() {
	return "GetHotel [h_id=" + h_id + ", h_name=" + h_name + ", per_day_cost=" + per_day_cost + "]";
}
public void setH_name(String h_name) {
	this.h_name = h_name;
}
public int getPer_day_cost() {
	return per_day_cost;
}
public void setPer_day_cost(int per_day_cost) {
	this.per_day_cost = per_day_cost;
}
   
	
}
