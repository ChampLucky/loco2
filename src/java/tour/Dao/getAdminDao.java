/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tour.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author lucky borasi
 */
public class getAdminDao {
    
    	
  public Boolean getAdmin(String uname,String pass)
  {
	  
	  
	  try{
		  
	     Class.forName("com.mysql.jdbc.Driver");
	     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tour1","root","");
	     
		  String qu="select * from admin where uname=? and pass=?";
		  PreparedStatement ps=con.prepareStatement(qu);
		  ps.setString(1,uname);
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
    
    
}
