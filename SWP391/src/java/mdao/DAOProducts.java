/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package mdao;

import context.DBContext;
import java.sql.*;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.*;


/**
 *
 * @author Nhat Anh
 */
public class DAOProducts extends DBContext{
    
    public List<Product> getAll() {
        List<Product> list = new LinkedList<>();
        String sql = "SELECT * FROM Products";

        try (PreparedStatement pre = connection.prepareStatement(sql, 
                 ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
             ResultSet rs = pre.executeQuery()) {
            while (rs.next()) {
                    list.add(new Product(
                        rs.getInt(1), 
                        rs.getInt(2), 
                        rs.getInt(3),
                        rs.getInt(4), 
                        rs.getInt(5), 
                        rs.getString(6), 
                        rs.getInt(7), 
                        rs.getInt(8), 
                        rs.getString(9),
                        rs.getString(10), 
                        rs.getString(11),
                        rs.getString(12), 
                        rs.getString(13),
                        rs.getDate(14), 
                        rs.getDate(15)
                    ));
                }           
        } catch (SQLException ex) {
            Logger.getLogger(DAOProducts.class.getName())
                    .log(Level.SEVERE, "Error fetching products", ex);
        }
        return list;
    }
    
    public List<String> getAllColor() {
        List<String> list = new LinkedList<>();
        String sql = "SELECT distinct color FROM Products";

        try (PreparedStatement pre = connection.prepareStatement(sql, 
                 ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
             ResultSet rs = pre.executeQuery()) {
            while (rs.next()) {
                    list.add(rs.getString(1));
                }           
        } catch (SQLException ex) {
            Logger.getLogger(DAOProducts.class.getName())
                    .log(Level.SEVERE, "Error fetching products", ex);
        }
        return list;
    }
    
    
    
    public static void main(String[] args){
        DAOProducts dao = new DAOProducts();
        List<String> ls = dao.getAllColor();
//        System.out.println(ls.get(0).getBrand_id());
        
        ls.forEach( a -> System.out.println(a));
    }
}
