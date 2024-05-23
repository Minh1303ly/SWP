/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package mdao;

import context.DBContext;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.LinkedList;
import java.util.List;
import model.Slider;
import java.sql.*;
/**
 *
 * @author Nhat Anh
 */
public class DAOSliders extends DBContext{
    
    public List<Slider> getAll() {
        List<Slider> list = new LinkedList<>();
        String sql = "SELECT * FROM Sliders";

        try (PreparedStatement pre = connection.prepareStatement(sql, 
                 ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
             ResultSet rs = pre.executeQuery()) {
            while (rs.next()) {
                    list.add(new Slider(rs.getInt(1), rs.getInt(2),
                            rs.getString(3), rs.getString(4), 
                            rs.getString(5), rs.getString(6), 
                            rs.getString(7)));
                }           
        } catch (SQLException ex) {
            Logger.getLogger(DAOProducts.class.getName())
                    .log(Level.SEVERE, "Error fetching products", ex);
        }
        return list;
    }
    
    public static void main(String[] args) {
        DAOSliders cs = new DAOSliders();
        System.out.println(cs.getAll().get(0).toString());
    }
}
