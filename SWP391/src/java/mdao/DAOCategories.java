/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package mdao;

import context.DBContext;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Category;

/**
 *
 * @author Nhat Anh
 */
public class DAOCategories extends DBContext{
    
    /**
     * 
     * @return 
     */
    public List<Category> getAll(){
        List<Category> list = new LinkedList<>();
        try {
            String sql = """
                        select c.id, c.name from Categories as c
                        join category_status as s on c.status_id = s.id
                        where s.name = 'Active'""";
            PreparedStatement pre = connection.prepareStatement(sql,
                    ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_READ_ONLY);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {                
                list.add(new Category(rs.getInt(1), rs.getString(2), null, null));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOCategories.class.getName())
                    .log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
     public static void main(String[] args) {
        DAOCategories aOBrands = new DAOCategories();
        List<Category> ls = new LinkedList<>();
        ls = aOBrands.getAll();
        ls.forEach(a -> {System.out.println(a.toString());});
        
    }
}
