/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tour.pojo;

/**
 *
 * @author lucky borasi
 */
public class GetAdmin {
   private String uname;
   private String pass;

    public void setUname(String uname) {
        this.uname = uname;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getUname() {
        return uname;
    }

    public String getPass() {
        return pass;
    }

    @Override
    public String toString() {
        return "GetAdmin{" + "uname=" + uname + ", pass=" + pass + '}';
    }
   
}
