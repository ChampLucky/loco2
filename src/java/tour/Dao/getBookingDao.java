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
import java.util.ArrayList;
import tour.pojo.GetBooking;
import tour.pojo.GetPackage;

/**
 *
 * @author lucky borasi
 */
public class getBookingDao {
     public int getBookingId() {

        int book_id = 0;
        try {

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tour1", "root", "");
            String qu = "select max(book_id) from booking";
            PreparedStatement ps = con.prepareStatement(qu);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                book_id = rs.getInt(1);
                book_id++;
            }

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return book_id;
    }
     
     
     
     
     public int numberOfBookings(int c_id)
     {
         int k=0;
                try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tour1", "root", "");

            String qu = "select * from booking where c_id in (?)";

            PreparedStatement ps = con.prepareStatement(qu);
            ps.setInt(1, c_id);
            ResultSet r = ps.executeQuery();
            if(r.next())
            {
                k=1;
            }
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
         return k;
     }
     
     
      public ArrayList<GetBooking> getListOfBookings(int c_id) {
        ArrayList<GetBooking> bookings = new ArrayList<GetBooking>();

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tour1", "root", "");

            String qu = "select * from booking where c_id in (?)";

            PreparedStatement ps = con.prepareStatement(qu);
            ps.setInt(1, c_id);
            ResultSet r = ps.executeQuery();
            while (r.next()) {
                GetBooking pk = new GetBooking();
                pk.setBook_id(r.getInt("book_id"));
                pk.setC_id(r.getInt("c_id"));
                pk.setP_id(r.getInt("p_id"));
                pk.setT_id(r.getInt("t_id"));
                pk.setH_id(r.getInt("h_id"));
                pk.setTour_date(r.getDate("tour_date"));
                pk.setNo_of_people(r.getInt("no_of_people"));
                pk.setBooking_date(r.getDate("booking_date"));

                bookings.add(pk);

            }
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return bookings;
    }
     

}
