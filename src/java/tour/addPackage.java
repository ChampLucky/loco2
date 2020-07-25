/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tour;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import tour.Dao.getCityDao;

/**
 *
 * @author lucky borasi
 */
@WebServlet(name = "addPackage", urlPatterns = {"/addPackage"})
public class addPackage extends HttpServlet {

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       int p_id=0;
		String city=null;
		String desc=null;
		int p_cost=0;
		int days=0;
		String category=null;
		String p_image=null;
		int city_id=0;
		PrintWriter out=response.getWriter();
		ServletFileUpload sf=new ServletFileUpload(new DiskFileItemFactory());
		try {
			List<FileItem> multifile=sf.parseRequest(request);
			
			for(FileItem item:multifile){
				
				p_image=item.getName();
				if(item.isFormField())
				{
					if(item.getFieldName().equals("p_id"))
					{
						p_id=Integer.parseInt(item.getString());
					}
					if(item.getFieldName().equals("city"))
					{
						city=item.getString();
					}
					if(item.getFieldName().equals("desc")){
						desc=item.getString();
					}
					if(item.getFieldName().equals("p_cost")){
						p_cost=Integer.parseInt(item.getString());
					}
					if(item.getFieldName().equals("days"))
					{
						days=Integer.parseInt(item.getString());
					}
					if(item.getFieldName().equals("cat"))
					{
						category=item.getString();
					}
				}
				
				try {
					item.write(new File("C:\\Users\\luckyBorasi\\Documents\\NetBeansProjects\\loco\\web\\images"+item.getName()));
					out.println("successfully updated in image");
				} catch (Exception e) {
					
					e.printStackTrace();
				}
				
			}
			
			
			
		} catch (FileUploadException e) {
			
			e.printStackTrace();
			
	    
		}
		getCityDao dao=new getCityDao();
	    city_id=dao.getCityId(city);
		try{
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tour1","root","");
			String qu="insert into package values(?,?,?,?,?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(qu);
			ps.setInt(1,p_id);
			ps.setString(2,desc);
			ps.setInt(3,p_cost);
			ps.setInt(4,days);
			ps.setString(5,category);
			ps.setInt(6,1);
			ps.setInt(7,city_id);
			ps.setString(8,p_image);
			int i=ps.executeUpdate();
			if(i>0)
				out.println("sucessfully updated in database");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}

    }

   


