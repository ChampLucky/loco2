package tour;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tour.Dao.getCloginDao;

/**
 * Servlet implementation class Clogin
 */
@WebServlet("/Clogin")
public class Clogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Clogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String c_name=request.getParameter("c_name");
		String pass=request.getParameter("pass");
		getCloginDao dao=new getCloginDao();
		int c_id=dao.getCustomerId(c_name,pass);
                HttpSession session=request.getSession();
                 int k=(int)session.getAttribute("k");
		if(dao.getCustomer(c_name,pass))
		{
			
			session.setAttribute("c_name", c_name);
                        session.setAttribute("c_id",c_id);
                       
//                        int k=Integer.parseInt(session.getAttribute("k").toString());
                        if(k==5)
                        {
                        int p_id=(int)session.getAttribute("p_id");
//                            int p_id=Integer.parseInt(session.getAttribute("p_id").toString());
                        session.removeAttribute("p_id");
                        
                        response.sendRedirect("customer.jsp?p_id="+p_id);
//                        request.setAttribute("p_id", p_id);
//			RequestDispatcher rd=request.getRequestDispatcher("customer.jsp?p_id="+p_id);
//			rd.forward(request, response);
                        }
                        else
                        {
                            
                            response.sendRedirect("yourTour.jsp?p_id=0");
//                         session.setAttribute("c_name", c_name);
////                         session.setAttribute("c_id",c_id);
//                         RequestDispatcher rd=request.getRequestDispatcher("yourTour.jsp?p_id=0");
//			rd.forward(request, response);
                        }
		}
		else
		{
                    response.sendRedirect("clogin.jsp?k="+k);
//			RequestDispatcher rd=request.getRequestDispatcher("clogin.jsp?k="+k);
//			rd.forward(request, response);
		}
		
		
	}

}
