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
import model.Brand;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
/**
 *
 * @author Nhat Anh
 */
public class DAOBrands extends DBContext{
    public List<Brand> getAll(){
        List<Brand> list = new LinkedList<>();
        try {
            String sql = """
                         select c.id, c.name from Brands as c
                                     join brand_status as s on c.status_id = s.id
                                     where s.name = 'Active'""";
            
            PreparedStatement pre = connection.prepareStatement(sql,
                    ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_READ_ONLY);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {                
                list.add(new Brand(rs.getInt(1), rs.getString(2), null, null));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOCategories.class.getName())
                    .log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
    public static void main(String[] args) {
        DAOBrands aOBrands = new DAOBrands();
        List<Brand> ls = new LinkedList<>();
        ls = aOBrands.getAll();
        ls.forEach(a -> {System.out.println(a.toString());});
        
    }
}
