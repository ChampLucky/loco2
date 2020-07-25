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

/**
 *
 * @author lucky borasi
 */
public class getTransportDao {

    public int getTravelId() {

        int t_id = 0;
        try {

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tour1", "root", "");
            String qu = "select max(t_id) from transport";
            PreparedStatement ps = con.prepareStatement(qu);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                t_id = rs.getInt(1);
                t_id++;
            }

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return t_id;
    }

}
