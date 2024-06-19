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
    
    public boolean add(int idShoppingSession, Product product, int quantity){
        if(quantity > product.getQuantity()){
            return false;
        }
        try {
             String sql = """
                          INSERT INTO [dbo].[cart_item]
                                     ([session_id]
                                     ,[product_id]
                                     ,[quantity]
                                     ,[created_at]
                                     ,[modified_at])
                               VALUES
                                     (?
                                     ,?
                                     ,?
                                     ,GETDATE()
                                     ,GETDATE())""";
            PreparedStatement pre = connection.prepareStatement(
                    sql, ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_READ_ONLY);
            pre.setInt(1,idShoppingSession);
            pre.setInt(2,product.getId());
            pre.setInt(3,quantity);
            return pre.executeUpdate()==1;
            
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName())
                    .log(Level.SEVERE, null, ex);
        }
        return false;
    }
    
    public static void main(String[] args) {
        CartItemDAO  cartItemDAO = new CartItemDAO();
        Product product = new Product();
        product.setId(1);
        product.setQuantity(10);
        System.out.println(cartItemDAO.add(1, product, 5));
    }
}
