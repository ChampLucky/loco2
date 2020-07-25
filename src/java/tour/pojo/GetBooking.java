/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tour.pojo;

import java.sql.Date;

/**
 *
 * @author lucky borasi
 */
public class GetBooking {
    
   private int book_id;
   private int c_id;
   private int p_id;
   private int t_id;
   private int h_id;

    public void setBook_id(int book_id) {
        this.book_id = book_id;
    }

    public void setC_id(int c_id) {
        this.c_id = c_id;
    }

    public void setP_id(int p_id) {
        this.p_id = p_id;
    }

    public void setT_id(int t_id) {
        this.t_id = t_id;
    }

    public void setH_id(int h_id) {
        this.h_id = h_id;
    }

    public void setTour_date(Date tour_date) {
        this.tour_date = tour_date;
    }

    public void setNo_of_people(int no_of_people) {
        this.no_of_people = no_of_people;
    }

    public void setBooking_date(Date booking_date) {
        this.booking_date = booking_date;
    }
   private Date tour_date;
   private int no_of_people;
   private Date booking_date;

    public int getBook_id() {
        return book_id;
    }

    public int getC_id() {
        return c_id;
    }

    public int getP_id() {
        return p_id;
    }

    public int getT_id() {
        return t_id;
    }

    public int getH_id() {
        return h_id;
    }

    public Date getTour_date() {
        return tour_date;
    }

    public int getNo_of_people() {
        return no_of_people;
    }

    public Date getBooking_date() {
        return booking_date;
    }
    
    
    
}
