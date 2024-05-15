/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import context.DBContext;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Users;

/**
 *
 * @author Admin
 */
public class UsersDAO extends DBContext {

    public void insertUser(Users u) {
        String sql = "INSERT INTO [dbo].[users]\n"
                + "           ([email]\n"//1
                + "           ,[password]\n"//2
                + "           ,[role_id]\n"//3
                + "           ,[status_id]\n"//4
                + "           ,[first_name]\n"//5
                + "           ,[last_name]\n"//6
                + "           ,[telephone]\n"//7
                + "           ,[created_at]\n"//8
                + "           ,[modified_at]\n"//9
                + "           ,[gender])\n"//10
                + "     VALUES (?,?,?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setString(1, u.getEmail());
            st.setString(2, u.getPassword());
            st.setInt(3, u.getRole_id());
            st.setInt(4, u.getStatus_id());
            st.setString(5, u.getFirst_name());
            st.setString(6, u.getLast_name());
            st.setString(7, u.getTelephone());
            java.util.Date utilDate = u.getCreated_at();
            java.sql.Date created_at = new java.sql.Date(utilDate.getTime());
            st.setDate(8, created_at);
            utilDate = u.getModified_at();
            java.sql.Date modified_at = new java.sql.Date(utilDate.getTime());
            st.setDate(9, modified_at);
            st.setInt(10, u.getGender());

            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public Users getUserByEmail(String email) {
        String sql = "SELECT [id]\n"//1
                + "      ,[email]\n"//2
                + "      ,[password]\n"//3
                + "      ,[role_id]\n"//4
                + "      ,[status_id]\n"//5
                + "      ,[first_name]\n"//6
                + "      ,[last_name]\n"//7
                + "      ,[telephone]\n"//8
                + "      ,[created_at]\n"//9
                + "      ,[modified_at]\n"//10
                + "      ,[gender]\n"//11
                + "  FROM [dbo].[users]\n"
                + "  WHERE email = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, email);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Users u = new Users();

                u.setId(rs.getInt(1));
                u.setEmail(rs.getString(2));
                u.setPassword(rs.getString(3));
                u.setRole_id(rs.getInt(4));
                u.setStatus_id(rs.getInt(5));
                u.setFirst_name(rs.getString(6));
                u.setLast_name(rs.getString(7));
                u.setTelephone(rs.getString(8));
                u.setCreated_at(rs.getDate(9));
                u.setModified_at(rs.getDate(10));
                u.setGender(rs.getInt(11));

                return u;
            }
        } catch (SQLException e) {

        }
        return null;
    }

    public void updateUser(Users u) {
        String sql = "UPDATE [dbo].[users]\n"
                + "   SET [email] = ?\n"//1
                + "      ,[password] = ?\n"//2
                + "      ,[role_id] = ?\n"//3
                + "      ,[status_id] = ?\n"//4
                + "      ,[first_name] = ?\n"//5
                + "      ,[last_name] = ?\n"//6
                + "      ,[telephone] = ?\n"//7
                + "      ,[created_at] = ?\n"//8
                + "      ,[modified_at] = ?\n"//9
                + "      ,[gender] = ?\n"//10
                + " WHERE id = ?";//11
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            
            st.setString(1, u.getEmail());
            st.setString(2, u.getPassword());
            st.setInt(3, u.getRole_id());
            st.setInt(4, u.getStatus_id());
            st.setString(5, u.getFirst_name());
            st.setString(6, u.getLast_name());
            st.setString(7, u.getTelephone());
            java.util.Date utilDate = u.getCreated_at();
            java.sql.Date created_at = new java.sql.Date(utilDate.getTime());
            st.setDate(8, created_at);
            utilDate = u.getCreated_at();
            java.sql.Date modified_at = new java.sql.Date(utilDate.getTime());
            st.setDate(9, modified_at);
            st.setInt(10, u.getGender());
            st.setInt(11, u.getId());
            
            st.executeUpdate();
        } catch (SQLException e) {

        }
    }
    
    public static void main(String[] args) {
        UsersDAO udb = new UsersDAO();
        System.out.println(udb.getUserByEmail("TuBAHE171912@fpt.edu.vn"));
    }
}
