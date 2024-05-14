/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import context.DBContext;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.User_address;

/**
 *
 * @author Admin
 */
public class User_addressDAO extends DBContext {

    // Them user address
    public void insertUserAddress(User_address ua) {
        String sql = "INSERT INTO [dbo].[user_address]\n"
                + "           ([user_id]\n"//1
                + "           ,[address_line]\n"//2
                + "           ,[city]\n"//3
                + "           ,[country])\n"//4
                + "     VALUES (?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setInt(1, ua.getUser_id());
            st.setString(2, ua.getAddress_line());
            st.setString(3, ua.getCity());
            st.setString(4, ua.getCountry());

            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
}
