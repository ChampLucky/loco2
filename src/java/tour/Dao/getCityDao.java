package tour.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import tour.pojo.GetCity;


public class getCityDao {

	public ArrayList<GetCity> getCityNames()
	{
		ArrayList<GetCity> citynames=new ArrayList<GetCity>();
		 try{
				
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tour1","root","");
				String qu="select * from city";
				PreparedStatement ps=con.prepareStatement(qu);
				ResultSet rs=ps.executeQuery();
				while(rs.next())
				{
					GetCity city=new GetCity();
					city.setCity_id(rs.getInt("city_id"));
					city.setCity_name(rs.getString("city_name"));
					city.setState(rs.getString("state"));
					citynames.add(city);
				}
					
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}

		 return citynames;
	}
	public int getCityId(String city)
	{
		int city_id=0;
		try{
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tour1","root","");
			String qu="select city_id from city where city_name=?";
			PreparedStatement ps=con.prepareStatement(qu);
			ps.setString(1,city);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
				city_id=rs.getInt("city_id");
				
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return city_id;
		
	}
	public String getCityNameByPackage(int p_id)
	{
		String city=null;
        try{
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tour1","root","");
			String qu="select city_name from city where city_id=(select city_id from package where p_id=?)";
			PreparedStatement ps=con.prepareStatement(qu);
			ps.setInt(1,p_id);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
				city=rs.getString("city_name");
				
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return city;
		
	}
        
        public ArrayList<String> getCity(String state)
        {
            ArrayList<String> states=new ArrayList();
            try{
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tour1","root","");
			String qu="select cityname from cities where state=?";
			PreparedStatement ps=con.prepareStatement(qu);
                        ps.setString(1,state);
                        ResultSet rs=ps.executeQuery();
                        while(rs.next())
                        {
                            String city=rs.getString(1);
                            states.add(city);
                        }
			
				
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
            
            
            return states;
		
        }
        public ArrayList<String> getStates()
        {
            ArrayList<String> states=new ArrayList();
            try{
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tour1","root","");
			String qu="select distinct(state) from cities";
			Statement st=con.createStatement();
                        ResultSet rs=st.executeQuery(qu);
                        while(rs.next())
                        {
                            String state=rs.getString(1);
                            states.add(state);
                        }
			
				
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
            
            
            return states;
        }
	
}
