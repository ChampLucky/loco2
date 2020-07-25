/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tour;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import tour.Dao.getCloginDao;
import tour.Dao.getPackageDao;

/**
 *
 * @author lucky borasi
 */
@WebServlet(name = "feedback", urlPatterns = {"/feedback"})
public class feedback extends HttpServlet {


  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
         PrintWriter out=response.getWriter();
        String name=request.getParameter("name");
        
        String email=request.getParameter("email");
        String mob=request.getParameter("phone");
        String subject=request.getParameter("subject");
        String message=request.getParameter("message");
        
        getPackageDao dao=new getPackageDao();
        
        int f_id=dao.getFeedbackId();
        
        
           
       try{
//           out.println(c_id);
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tour1","root","");
           String qu="insert into feedback values(?,?,?,?,?,?)";
           PreparedStatement ps=con.prepareStatement(qu);
           ps.setInt(1, f_id);
           ps.setString(2,name);
           ps.setString(3,email);
           ps.setString(4,mob);
           ps.setString(5,subject);
           ps.setString(6,message);
           int i=0;
           i=ps.executeUpdate();
           if(i>0)
           {
//               String m="registered";
               response.sendRedirect("index.jsp");
           }
           else
           {
//              String m="registered";
               response.sendRedirect("index.jsp");
           }
           con.close();
       }catch(Exception e)
       {
           e.printStackTrace();
       }
    }

        
    }

  
