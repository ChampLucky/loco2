package tour.Dao;

import java.sql.*;
import java.sql.DriverManager;
import java.util.ArrayList;

import tour.pojo.GetPackage;

public class getPackageDao {

    public int getPackageId() {

        int p_id = 0;
        try {

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tour1", "root", "");
            String qu = "select max(p_id) from package";
            PreparedStatement ps = con.prepareStatement(qu);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                p_id = rs.getInt(1);
                p_id++;
            }

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return p_id;
    }
    
    public int getFeedbackId() {

        int f_id = 0;
        try {

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tour1", "root", "");
            String qu = "select max(f_id) from feedback";
            PreparedStatement ps = con.prepareStatement(qu);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                f_id = rs.getInt(1);
                f_id++;
            }

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return f_id;
    }
    
    
    
    
     public int getPackageCost(int p_id) {

        int p_cost = 0;
        try {

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tour1", "root", "");
            String qu = "select p_cost from package where p_id=?";
            PreparedStatement ps = con.prepareStatement(qu);
            ps.setInt(1, p_id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                p_cost = rs.getInt(1);
               
            }

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return p_cost;
    }
    

    public ArrayList<GetPackage> getListOfPackges(String city) {
        ArrayList<GetPackage> packages = new ArrayList<GetPackage>();

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tour1", "root", "");

            String qu = "select city_id from city where city_name=?";

            PreparedStatement st = con.prepareStatement(qu);
            st.setString(1, city);
            ResultSet rs = st.executeQuery();
            int city_id = 0;
            if (rs.next()) {
                city_id = rs.getInt("city_id");
            }

            qu = "select * from package where city_id=?";
            PreparedStatement ps = con.prepareStatement(qu);
            ps.setInt(1, city_id);

            ResultSet r = ps.executeQuery();
            while (r.next()) {
                GetPackage pk = new GetPackage();
                pk.setP_id(r.getInt("p_id"));
                pk.setDescription(r.getString("description"));
                pk.setP_cost(r.getInt("p_cost"));
                pk.setDays(r.getInt("days"));
                pk.setCategory(r.getString("category"));
                pk.setAvailability(r.getInt("availability"));
                pk.setCity_id(r.getInt("city_id"));
                pk.setP_image(r.getString("p_image"));

                packages.add(pk);

            }
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return packages;
    }

    public ArrayList<GetPackage> getListOfPackges() {
        ArrayList<GetPackage> packages = new ArrayList<GetPackage>();

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tour1", "root", "");

            String qu = "select * from package";

            PreparedStatement ps = con.prepareStatement(qu);

            ResultSet r = ps.executeQuery();
            while (r.next()) {
                GetPackage pk = new GetPackage();
                pk.setP_id(r.getInt("p_id"));
                pk.setDescription(r.getString("description"));
                pk.setP_cost(r.getInt("p_cost"));
                pk.setDays(r.getInt("days"));
                pk.setCategory(r.getString("category"));
                pk.setAvailability(r.getInt("availability"));
                pk.setCity_id(r.getInt("city_id"));
                pk.setP_image(r.getString("p_image"));

                packages.add(pk);

            }
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return packages;
    }

    public GetPackage packagePerId(int p_id) {
        GetPackage pk = new GetPackage();
        try {

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tour1", "root", "");
            String qu = "select * from package where p_id=?";
            PreparedStatement ps = con.prepareStatement(qu);
            ps.setInt(1, p_id);
            ResultSet r = ps.executeQuery();
            if (r.next()) {
                pk.setP_id(r.getInt("p_id"));
                pk.setDescription(r.getString("description"));
                pk.setP_cost(r.getInt("p_cost"));
                pk.setDays(r.getInt("days"));
                pk.setCategory(r.getString("category"));
                pk.setAvailability(r.getInt("availability"));
                pk.setCity_id(r.getInt("city_id"));
                pk.setP_image(r.getString("p_image"));
            }

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return pk;
    }
}
