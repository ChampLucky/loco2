package tour.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import tour.pojo.GetCustomer;

public class getCloginDao {

	
	public Boolean getCustomer(String c_name,String pass)
	{
		 
		  try{
			  
		     Class.forName("com.mysql.jdbc.Driver");
		     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tour1","root","");
		     
			  String qu="select * from customer where c_name=? and password=?";
			  PreparedStatement ps=con.prepareStatement(qu);
			  ps.setString(1,c_name);
			  ps.setString(2,pass);
			  
			  ResultSet rs=ps.executeQuery();
			  if(rs.next())
				  return true;
			  
		  }
		  catch(Exception e)
		  {
			  e.printStackTrace();
		  }
		  
		  
		
		return false;
	}
        public int getCustomerId(String c_name,String pass)
        {
            int c_id=0;
            try{
			  
		     Class.forName("com.mysql.jdbc.Driver");
		     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tour1","root","");
		     
			  String qu="select c_id from customer where c_name=? and password=?";
			  PreparedStatement ps=con.prepareStatement(qu);
			  ps.setString(1,c_name);
			  ps.setString(2,pass);
			  
			  ResultSet rs=ps.executeQuery();
			  if(rs.next())
	                    c_id=rs.getInt("c_id");
			  
		  }
		  catch(Exception e)
		  {
			  e.printStackTrace();
		  }
            
            return c_id;
            
        }
        public GetCustomer cutomerDetails(int c_id)
        {
            GetCustomer cust=new GetCustomer();
            try{
                Class.forName("com.mysql.jdbc.Driver");
		     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tour1","root","");
		     
			  String qu="select * from customer where c_id=?";
			  PreparedStatement ps=con.prepareStatement(qu);
                          ps.setInt(1, c_id);
                          ResultSet rs=ps.executeQuery();
                          if(rs.next())
                          {
                              cust.setC_id(rs.getInt("c_id"));
                              cust.setC_name(rs.getString("c_name"));
                              cust.setMob(rs.getString("mob"));
                              cust.setEmail(rs.getString("email"));
                              cust.setAddress(rs.getString("address"));
                              cust.setPassword(rs.getString("password"));
                          }
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
            
            
            return cust;
        }
        
        public int getMaxId()
	{
		 int c_id=0;
		  try{
			 Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tour1","root","");
                String qu="select max(c_id) from customer";
	       PreparedStatement ps=con.prepareStatement(qu);
	       ResultSet rs=ps.executeQuery();
        
	         if(rs.next())
	       {
		c_id=rs.getInt(1);
		c_id++;
	          }  
		    
			  
		  }
		  catch(Exception e)
		  {
			  e.printStackTrace();
		  }
		  
		  
		
		return c_id;
	}
}
