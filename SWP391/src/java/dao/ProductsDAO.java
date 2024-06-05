/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import dto.ProductDTO;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.UserStatus;

/**
 *
 * @author Admin
 */
public class ProductsDAO extends DBContext {

    // get all product
    public List<ProductDTO> getAllProduct() {
        List<ProductDTO> list = new ArrayList<>();
        String sql = "SELECT DISTINCT P.[discount_id]\n"//1
                + "      ,P.[status_id]\n"//2
                + "      ,P.[brand_id]\n"//3
                + "      ,P.[name]\n"//4
                + "	  ,P.[price]\n"//5
                + "      ,P.[description]\n"//6
                + "      ,P.[img1]\n"//7
                + "      ,P.[img2]\n"//8
                + "	  ,C.[id] AS category_id\n"//9
                + "  FROM [dbo].[products] AS P\n"
                + "  FULL JOIN [dbo].[product_subcate] AS PS\n"
                + "  ON P.id = PS.product_id\n"
                + "  FULL JOIN [dbo].[subcategories] AS S\n"
                + "  ON PS.subcategory_id = S.id\n"
                + "  FULL JOIN [dbo].[categories] AS C\n"
                + "  ON C.id = S.category_id";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                ProductDTO p = new ProductDTO();

                p.setDiscountId(rs.getInt(1));
                p.setStatusId(rs.getInt(2));
                p.setBrandId(rs.getInt(3));
                p.setName(rs.getString(4));
                p.setPrice(rs.getFloat(5));
                p.setDescription(rs.getString(6));
                p.setImg1(rs.getString(7));
                p.setImg2(rs.getString(8));
                p.setCategoryId(rs.getInt(9));
                
                SubCategoryDAO sdb = new SubCategoryDAO();
                p.setSubCategoryId(sdb.getSubCategoryByProduct(p.getName()));

                if(p.getName() != null){
                    list.add(p);
                }
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
}
