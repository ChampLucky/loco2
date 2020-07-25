package tour.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import tour.pojo.GetHotel;

public class getHotelDao {

	public ArrayList<GetHotel> getHotelByCity(String city)
	{
		ArrayList<GetHotel> h_names=new ArrayList<GetHotel>();
	    try{
	    	Class.forName("com.mysql.jdbc.Driver");
	    	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tour1","root","");
	    	String qu="select * from hotels where h_id in(select h_id from cityhotel where city_id=(select city_id from city where city_name=?))";
	        PreparedStatement ps=con.prepareStatement(qu);
	        ps.setString(1,city);
	        ResultSet rs=ps.executeQuery();
	       
	        	while(rs.next())
	        	{
	        		GetHotel a=new GetHotel();
	        		a.setH_id(rs.getInt("h_id"));
	        		a.setH_name(rs.getString("h_name"));
	        		a.setPer_day_cost(rs.getInt("per_day_cost"));
	        		h_names.add(a);
	        	}
	        }
	    
	    catch(Exception e)
	    {
	    	e.printStackTrace();
	    }
		return h_names;
	}
        
        public int getPrice(String h_name)
        {
          
            
            int price=0;
            try{
                Class.forName("com.mysql.jdbc.Driver");
	    	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tour1","root","");
                String qu="select per_day_cost from hotels where h_name=?";
                PreparedStatement ps=con.prepareStatement(qu);
                ps.setString(1,h_name);
                ResultSet rs=ps.executeQuery();
                if(rs.next())
                {
                    price=rs.getInt("per_day_cost");
                }
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
            return price;
        }
        
        
        
         public int getHotelId(String h_name)
        {
          
            
            int h_id=0;
            try{
                Class.forName("com.mysql.jdbc.Driver");
	    	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tour1","root","");
                String qu="select h_id from hotels where h_name=?";
                PreparedStatement ps=con.prepareStatement(qu);
                ps.setString(1,h_name);
                ResultSet rs=ps.executeQuery();
                if(rs.next())
                {
                    h_id=rs.getInt("h_id");
                }
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
            return h_id;
        }   
	
	
	
	
}
