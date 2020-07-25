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
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import tour.Dao.getCloginDao;

/**
 *
 * @author lucky borasi
 */
@WebServlet(name = "Cregister", urlPatterns = {"/Cregister"})
public class Cregister extends HttpServlet {

   

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out=response.getWriter();
        String c_name=request.getParameter("c_name");
        String mob=request.getParameter("mob");
        String email=request.getParameter("email");
        String address=request.getParameter("address");
        String pass=request.getParameter("password");
        
        getCloginDao dao=new getCloginDao();
           int c_id=dao.getMaxId();
           
       try{
           out.println(c_id);
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tour1","root","");
           String qu="insert into customer values(?,?,?,?,?,?)";
           PreparedStatement ps=con.prepareStatement(qu);
           ps.setInt(1, c_id);
           ps.setString(2,c_name);
           ps.setString(3,mob);
           ps.setString(4,address);
           ps.setString(5,email);
           ps.setString(6,pass);
           int i=0;
           i=ps.executeUpdate();
           if(i>0)
           {
               String message="registered";
               response.sendRedirect("clogin.jsp?k=1&message="+message);
           }
           else
           {
             String message="some error occured";
               response.sendRedirect("clogin.jsp?k=1&message="+message);   
           }
           con.close();
       }catch(Exception e)
       {
           e.printStackTrace();
       }
    }


}
