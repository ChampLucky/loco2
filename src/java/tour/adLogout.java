/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tour;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author lucky borasi
 */
@WebServlet(name = "adLogout", urlPatterns = {"/adLogout"})
public class adLogout extends HttpServlet {

  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
        HttpSession session=request.getSession();
        session.removeAttribute("uname");
//        session.removeAttribute("c_id");
        session.invalidate();
        response.sendRedirect("adminlogin.jsp");
    }

   

}
