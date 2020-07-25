/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tour;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import tour.Dao.getAdminDao;

/**
 *
 * @author lucky borasi
 */
@WebServlet(name = "adlogin", urlPatterns = {"/adlogin"})
public class adlogin extends HttpServlet {

   

   
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       PrintWriter out=response.getWriter();
		String uname=request.getParameter("uname");
		String pass=request.getParameter("pass");
		
		getAdminDao dao=new getAdminDao();
                
		if(dao.getAdmin(uname,pass))
		{
			HttpSession session=request.getSession();
			session.setAttribute("uname",uname);
//			RequestDispatcher rd=request.getRequestDispatcher("admin.jsp");
//			rd.forward(request,response);
                        response.sendRedirect("admin.jsp");
			
		}
		else{
			
			response.sendRedirect("adminlogin.jsp");
			
		}
		
    }

    

}
