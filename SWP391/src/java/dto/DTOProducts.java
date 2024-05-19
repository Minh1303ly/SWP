/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dto;

import context.DBContext;
import java.sql.*;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.stream.Collectors;
import model.SubProducts;

/**
 *
 * @author Nhat Anh
 */
public class DTOProducts extends DBContext {

    private final String SQL = """
                    select products.name, products.price, products.size, products.color, products.description,
                    products.img1, products.img2, rating.rating, discounts.discount_percent, discounts.active, 
                    product_status.name, brands.name, categories.name
                    from products
                    FULL OUTER JOIN product_status on products.status_id = product_status.id
                    FULL OUTER JOIN discounts on products.discount_id = discounts.id
                    FULL OUTER JOIN rating on products.id = rating.product_id
                    FULL OUTER JOIN categories on products.category_id = categories.id
                    FULL OUTER JOIN brands on products.brand_id = brands.id""";

    public List<SubProducts> getAll() {
        List<SubProducts> list = new LinkedList<>();
        try {
            PreparedStatement pre = connection.prepareStatement(
                    SQL, ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_READ_ONLY);
            ResultSet rs = pre.executeQuery();
            list = getProduct(rs);
        } catch (SQLException ex) {
            Logger.getLogger(DTOProducts.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public List<SubProducts> getProduct(ResultSet rs) {
        List<SubProducts> list = new LinkedList<>();
        // Convert incomingDataList to a Map to aggregate sizes and colors
        Map<SubProducts, ProductAggregation> productMap = new HashMap<>();
        try {
            while(rs.next()){
                SubProducts key = new SubProducts(
                        rs.getString(1), rs.getInt(2),
                        null, null, rs.getString(5),
                        rs.getString(6), rs.getString(7), rs.getInt(8),
                        rs.getInt(9), rs.getInt(10),
                        rs.getString(11), rs.getString(12),null);
                ProductAggregation aggregation = 
                        productMap.computeIfAbsent(key, k -> new ProductAggregation());
                aggregation.sizes.add(rs.getInt(3));
                aggregation.colors.add(rs.getString(4));
                aggregation.categories.add(rs.getString(13));
            }
            list = productMap.entrySet().stream()
                    .map(entry -> {
                        SubProducts key = entry.getKey();
                        ProductAggregation aggregation = entry.getValue();
                        int[] sizes = aggregation.sizes.stream().mapToInt(i -> i).toArray();
                        String[] colors = aggregation.colors.toArray(new String[0]);
                        String[] categories = aggregation.categories.toArray(new String[0]);
                        return new SubProducts(key.getName(),
                                key.getPrice(), sizes, colors,
                                key.getDescription(),
                                key.getImg1(), key.getImg2(),
                                key.getRating(), key.getDiscount(),
                                key.getDiscount_status(), key.getStatus(),
                                key.getBrand_name(),categories);
                    })
                    .collect(Collectors.toList());

        } catch (SQLException ex) {
            Logger.getLogger(DTOProducts.class.getName())
                    .log(Level.SEVERE, null, ex);
        }

        return list;
    }

    public List<SubProducts> getProductByStatus(String status, int sizeOfList) {
        List<SubProducts> list = new LinkedList<>();
        StringBuilder query = new StringBuilder(SQL);
        query.append(" where product_status.name like ?");
        try {
            PreparedStatement pre = connection.prepareStatement(
                    query.toString(), ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_READ_ONLY);
            pre.setString(1,status);
            ResultSet rs = pre.executeQuery();
            list = getProduct(rs);
        } catch (SQLException ex) {
            Logger.getLogger(DTOProducts.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list.subList(0, list.size()>sizeOfList?sizeOfList:list.size());
    }
    
    
    public List<SubProducts> getProductByRating(int rating, int sizeOfList) {
        List<SubProducts> list = new LinkedList<>();
        StringBuilder query = new StringBuilder(SQL);
        query.append(" where rating.rating = ? and product_status.name not like 'off'");
        try {
            PreparedStatement pre = connection.prepareStatement(
                    query.toString(), ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_READ_ONLY);
            pre.setInt(1,rating);
            ResultSet rs = pre.executeQuery();
            list = getProduct(rs);
        } catch (SQLException ex) {
            Logger.getLogger(DTOProducts.class.getName())
                    .log(Level.SEVERE, null, ex);
        }
        return list.subList(0, list.size()>sizeOfList?sizeOfList:list.size());
    }
    
    public List<SubProducts> searchName(String name) {
        List<SubProducts> list = new LinkedList<>();
        StringBuilder query = new StringBuilder(SQL);
        query.append(" where products.name like ?");
        try {
            PreparedStatement pre = connection.prepareStatement(
                    query.toString(), ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_READ_ONLY);
            pre.setString(1,"%"+name+"%");
            ResultSet rs = pre.executeQuery();
            list = getProduct(rs);
        } catch (SQLException ex) {
            Logger.getLogger(DTOProducts.class.getName())
                    .log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
    public List<SubProducts> filter() {
        List<SubProducts> list = new LinkedList<>();
        StringBuilder query = new StringBuilder(SQL);
        return list;
    } 
    
    public List<SubProducts> getRalateProduct(String brand, 
            int sizeOfList) {
        List<SubProducts> list = new LinkedList<>();
        StringBuilder query = new StringBuilder(SQL);
        query.append(" where brands.name like ? ");
        try {
            PreparedStatement pre = connection.prepareStatement(
                    query.toString(), ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_READ_ONLY);
//            pre.setString(1,Support.printArray(category));
            pre.setString(1,"%"+brand+"%");
            ResultSet rs = pre.executeQuery();
            list = getProduct(rs);
        } catch (SQLException ex) {
            Logger.getLogger(DTOProducts.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list.subList(0, list.size()>sizeOfList?sizeOfList:list.size());
    }

    public static void main(String[] args) {
        DTOProducts call = new DTOProducts();
//        List<SubProducts> ls = call.getProductByStatus("Hot", 12);
        List<SubProducts> ls = call.getAll();
        String[] m = {"men","women"};
//        List<SubProducts> ls = call.getRalateProduct("nike",20);
       ls.forEach(a -> System.out.println(a.toString()));
//        for(String k : m){
//            System.out.println(k);
        }
//        String[] m = {"a"};
//        System.out.println(m.toString());
//        String k = "123456";
//        System.out.println(Support.printArray(m));
    }



class ProductAggregation {

    Set<Integer> sizes = new HashSet<>();
    Set<String> colors = new HashSet<>();
    Set<String> categories = new HashSet<>();
}
