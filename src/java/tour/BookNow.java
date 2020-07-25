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
import tour.Dao.getBookingDao;
import tour.Dao.getCityDao;
import tour.Dao.getHotelDao;
import tour.Dao.getTransportDao;
import java.sql.Date;
import java.util.Calendar;
import javax.servlet.RequestDispatcher;

/**
 *
 * @author lucky borasi
 */
@WebServlet(name = "BookNow", urlPatterns = {"/BookNow"})
public class BookNow extends HttpServlet {

//    /cific error occurs
//     * @throws IOException if an I/O error occurs
//     */**
//     * Handles the HTTP <code>POST</code> method.
//     *
////     * @param request servlet request
////     * @param response servlet response
//     * @throws ServletException if a servlet-spe
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        out.println("your package is booked");

        String h_name = request.getParameter("h_name");
        int t_cost = Integer.parseInt(request.getParameter("t_cost"));
        int h_cost = Integer.parseInt(request.getParameter("h_cost"));
        int p_cost = Integer.parseInt(request.getParameter("p_cost"));
        String tour_date = request.getParameter("tour_date");
        int no_of_people = Integer.parseInt(request.getParameter("no_of_people"));
        String travel_type = request.getParameter("travel_type");
        String from_city = request.getParameter("from_city");
        int c_id = Integer.parseInt(request.getParameter("c_id"));
        int p_id = Integer.parseInt(request.getParameter("p_id"));
//        out.println(h_name);
//        out.println(t_cost);
//        out.println(h_cost);
//        out.println(tour_date);
//        out.println(no_of_people);
//        out.println(travel_type);
//        out.println(from_city);
//        out.println(c_id);
//        out.println(p_id);

        java.sql.Date date = java.sql.Date.valueOf(tour_date);

        Calendar cal = Calendar.getInstance();
        java.util.Date utilDate = new java.util.Date(); // your util date
        cal.setTime(utilDate);
        cal.set(Calendar.HOUR_OF_DAY, 0);
        cal.set(Calendar.MINUTE, 0);
        cal.set(Calendar.SECOND, 0);
        cal.set(Calendar.MILLISECOND, 0);
        java.sql.Date sqlDate = new java.sql.Date(cal.getTime().getTime()); // your sql date
//System.out.println("utilDate:" + utilDate);
//System.out.println("sqlDate:" + sqlDate);

        getTransportDao travel = new getTransportDao();
        int t_id = travel.getTravelId();
        out.println("travel_id " + t_id);
        getBookingDao booking = new getBookingDao();
        int book_id = booking.getBookingId();
        out.println("booking id " + book_id);

        getHotelDao hotel = new getHotelDao();
        int h_id = hotel.getHotelId(h_name);
        out.println("hotel_id " + h_id);

        getCityDao city = new getCityDao();
        String destination = city.getCityNameByPackage(p_id);

        out.println("destination " + destination);

        try {

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tour1", "root", "");
            String qu = "insert into transport values(?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(qu);
            ps.setInt(1, t_id);
            ps.setString(2, travel_type);
            ps.setInt(3, c_id);
            ps.setString(4, from_city);
            ps.setString(5, destination);
            ps.setInt(6, t_cost);

            int i = 0;
            i = ps.executeUpdate();

            qu = "insert into booking values(?,?,?,?,?,?,?,?)";
            ps = con.prepareStatement(qu);
            ps.setInt(1, book_id);
            ps.setInt(2, c_id);
            ps.setInt(3, p_id);
            ps.setInt(4, t_id);
            ps.setInt(5, h_id);
            ps.setDate(6, date);
            ps.setInt(7, no_of_people);
            ps.setDate(8, sqlDate);

            int j = 0;
            j = ps.executeUpdate();

            if (i > 0 && j > 0) {
//                System.out.println("successfull");
                
//                request.setAttribute("c_id",c_id);
                request.setAttribute("no_of_people", no_of_people);
                request.setAttribute("p_cost", p_cost);
                request.setAttribute("t_cost",t_cost);
                request.setAttribute("h_cost",h_cost);
                RequestDispatcher rd=request.getRequestDispatcher("bill.jsp");
                rd.forward(request, response);
            }

            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

//    /**
//     * Returns a short description of the servlet.
//     *
//     * @return a String containing servlet description
}
