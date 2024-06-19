/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.CartItem;
import model.Product;
import util.Filter;

/**
 *
 * @author Nhat Anh
 */
public class CartItemDAO extends DBContext{
    
    public boolean add(int idShoppingSession, String name, String color, 
            int size, int quantity){
        ProductDAO productDAO = new ProductDAO();
        Filter filter = new Filter(name, new String[]{color}, size);
        Product product = productDAO.get(filter);
         try {
             String sql = "";
            PreparedStatement pre = connection.prepareStatement(
                    sql, ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_READ_ONLY);
            
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName())
                    .log(Level.SEVERE, null, ex);
        }
        return false;
    }
}
