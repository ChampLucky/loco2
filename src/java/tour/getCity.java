package tour;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tour.Dao.getPackageDao;
import tour.pojo.GetPackage;

/**
 * Servlet implementation class getCity
 */
@WebServlet("/getCity")
public class getCity extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public getCity() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 String city=request.getParameter("city");
		 
		 getPackageDao dao=new getPackageDao();
		 
		 ArrayList<GetPackage> packages=dao.getListOfPackges(city);
		 
		 request.setAttribute("package", packages);
			
			RequestDispatcher rd=request.getRequestDispatcher("showpackage.jsp");
			
			rd.forward(request, response);
		
	}

}
