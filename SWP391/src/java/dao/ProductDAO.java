/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import util.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;
import model.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.stream.Collectors;

public class ProductDAO extends DBContext {

    // Just format query product to display list product 
    private final String QUERY_PRODUCT = """
            select products.name, MIN(products.price) as price ,
            products.img1, products.img2,AVG(rating.rating) as AVGrating ,
            discounts.discount_percent, discounts.active, product_status.name
            from products
            LEFT JOIN  product_status on products.status_id = product_status.id
            LEFT JOIN  discounts on products.discount_id = discounts.id
            LEFT JOIN  rating on products.id = rating.product_id                             
                                         """;
    private final String GROUP_BY_PRODUCT = """
            group by products.name, products.price, products.img1, products.img2, 
            discounts.discount_percent, discounts.active,product_status.name, products.created_at
                                            """;
    
    // Method to retrieve all products
    public List<Product> getAll(ProductStatus status) throws SQLException {
        List<Product> products = new ArrayList<>();
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try {
            StringBuilder queryBuilder = new StringBuilder("SELECT id, category_id, discount_id, status_id, brand_id, ");
            queryBuilder.append("name, quantity, price, size, color, description, img1, img2, created_at, modified_at ");
            queryBuilder.append("FROM products");

            if (status != null) {
                queryBuilder.append(" WHERE status_id = ?");
            }

            preparedStatement = connection.prepareStatement(queryBuilder.toString());

            if (status != null) {
                preparedStatement.setInt(1, status.getId());
            }

            resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                Product product = new Product();
                product.setId(resultSet.getInt("id"));
                product.setCategoryId(resultSet.getInt("category_id"));
                product.setDiscountId(resultSet.getInt("discount_id"));
                product.setStatusId(resultSet.getInt("status_id"));
                product.setBrandId(resultSet.getInt("brand_id"));
                product.setName(resultSet.getString("name"));
                product.setQuantity(resultSet.getInt("quantity"));
                product.setPrice((float) resultSet.getDouble("price"));
                product.setSize(resultSet.getString("size"));
                product.setColor(resultSet.getString("color"));
                product.setDescription(resultSet.getString("description"));
                product.setImg1(resultSet.getString("img1"));
                product.setImg2(resultSet.getString("img2"));
                product.setCreatedAt(resultSet.getDate("created_at"));
                product.setModifiedAt(resultSet.getDate("modified_at"));
                products.add(product);
            }
        } finally {
            // Close resources
            if (resultSet != null) {
                resultSet.close();
            }
            if (preparedStatement != null) {
                preparedStatement.close();
            }
        }

        return products;
    }

    // Method to retrieve products with optional filters
    public List<Product> getFilteredProducts(Double minPrice, Double maxPrice,
            String searchKeyword, Integer categoryId, String size, String color,
            ProductStatus status) throws SQLException {
        List<Product> products = new ArrayList<>();
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try {
            StringBuilder queryBuilder = new StringBuilder("SELECT id, category_id, discount_id, status_id, brand_id, ");
            queryBuilder.append("name, quantity, price, size, color, description, img1, img2, created_at, modified_at ");
            queryBuilder.append("FROM products WHERE 1=1");

            if (minPrice != null) {
                queryBuilder.append(" AND price >= ?");
            }

            if (maxPrice != null) {
                queryBuilder.append(" AND price <= ?");
            }

            if (searchKeyword != null && !searchKeyword.isEmpty()) {
                queryBuilder.append(" AND (name LIKE ? OR description LIKE ?)");
            }

            if (categoryId != null) {
                queryBuilder.append(" AND category_id = ?");
            }

            if (size != null && !size.isEmpty()) {
                queryBuilder.append(" AND size = ?");
            }

            if (color != null && !color.isEmpty()) {
                queryBuilder.append(" AND color = ?");
            }

            if (status != null) {
                queryBuilder.append(" AND status_id = ?");
            }

            preparedStatement = connection.prepareStatement(queryBuilder.toString());

            int parameterIndex = 1;

            if (minPrice != null) {
                preparedStatement.setDouble(parameterIndex++, minPrice);
            }

            if (maxPrice != null) {
                preparedStatement.setDouble(parameterIndex++, maxPrice);
            }

            if (searchKeyword != null && !searchKeyword.isEmpty()) {
                preparedStatement.setString(parameterIndex++, "%" + searchKeyword + "%");
                preparedStatement.setString(parameterIndex++, "%" + searchKeyword + "%");
            }

            if (categoryId != null) {
                preparedStatement.setInt(parameterIndex++, categoryId);
            }

            if (size != null && !size.isEmpty()) {
                preparedStatement.setString(parameterIndex++, size);
            }

            if (color != null && !color.isEmpty()) {
                preparedStatement.setString(parameterIndex++, color);
            }

            if (status != null) {
                preparedStatement.setInt(parameterIndex, status.getId());
            }

            resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                Product product = new Product();
                product.setId(resultSet.getInt("id"));
                product.setCategoryId(resultSet.getInt("category_id"));
                product.setDiscountId(resultSet.getInt("discount_id"));
                product.setStatusId(resultSet.getInt("status_id"));
                product.setBrandId(resultSet.getInt("brand_id"));
                product.setName(resultSet.getString("name"));
                product.setQuantity(resultSet.getInt("quantity"));
                product.setPrice((float) resultSet.getDouble("price"));
                product.setSize(resultSet.getString("size"));
                product.setColor(resultSet.getString("color"));
                product.setDescription(resultSet.getString("description"));
                product.setImg1(resultSet.getString("img1"));
                product.setImg2(resultSet.getString("img2"));
                product.setCreatedAt(resultSet.getDate("created_at"));
                product.setModifiedAt(resultSet.getDate("modified_at"));
                products.add(product);
            }
        } finally {
            // Close resources
            if (resultSet != null) {
                resultSet.close();
            }
            if (preparedStatement != null) {
                preparedStatement.close();
            }
        }

        return products;
    }

    // Method to retrieve a Product by its ID
    public Product getProductById(int id) throws SQLException {
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        Product product = null;

        try {
            // SQL query to select a product by its ID
            String query = "SELECT id, category_id, discount_id, status_id, brand_id, "
                    + "name, quantity, price, size, color, description, img1, img2, created_at, modified_at "
                    + "FROM products WHERE id = ?";
            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setInt(1, id);
            resultSet = preparedStatement.executeQuery();

            // If a record is found, create a Product object
            if (resultSet.next()) {
                product = new Product();
                product.setId(resultSet.getInt("id"));
                product.setCategoryId(resultSet.getInt("category_id"));
                product.setDiscountId(resultSet.getInt("discount_id"));
                product.setStatusId(resultSet.getInt("status_id"));
                product.setBrandId(resultSet.getInt("brand_id"));
                product.setName(resultSet.getString("name"));
                product.setQuantity(resultSet.getInt("quantity"));
                product.setPrice((float) resultSet.getDouble("price"));
                product.setSize(resultSet.getString("size"));
                product.setColor(resultSet.getString("color"));
                product.setDescription(resultSet.getString("description"));
                product.setImg1(resultSet.getString("img1"));
                product.setImg2(resultSet.getString("img2"));
                product.setCreatedAt(resultSet.getDate("created_at"));
                product.setModifiedAt(resultSet.getDate("modified_at"));
            }
        } finally {
            // Close resources
            if (resultSet != null) {
                resultSet.close();
            }
            if (preparedStatement != null) {
                preparedStatement.close();
            }
        }

        return product;
    }

    /**
     * Use to get all distinct color in product
     *
     * @return list distinct color in product
     */
    public List<String> getAllColor() {
        List<String> list = new LinkedList<>();
        String sql = "SELECT distinct color FROM Products";
        try (PreparedStatement pre = connection.prepareStatement(sql,
                ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY); ResultSet rs = pre.executeQuery()) {
            while (rs.next()) {
                list.add(rs.getString(1));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName())
                    .log(Level.SEVERE, "Error fetching products", ex);
        }
        return list;
    }

    /**
     * 
     * @param name
     * @return 
     */
    public List<Integer> getAllSizeByName(String name) {
        List<Integer> list = new LinkedList<>();
        String sql = "select distinct size from products where products.name = ?";
        try {
            PreparedStatement pre = connection.prepareStatement(
                    sql, ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_READ_ONLY);
            pre.setString(1, name);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                list.add(rs.getInt(1));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    /**
     * 
     * @param name
     * @return 
     */
    public List<String> getAllColorByName(String name) {
        List<String> list = new LinkedList<>();
        String sql = "select distinct color from products where products.name = ?";
        try {
            PreparedStatement pre = connection.prepareStatement(
                    sql, ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_READ_ONLY);
            pre.setString(1, name);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                list.add(rs.getString(1));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
    /**
     *
     * @param size
     * @return
     */
    public List<Product> getProductOrderByDate(int size) {
        List<Product> list = new LinkedList<>();
        StringBuilder sql = new StringBuilder(QUERY_PRODUCT);
        sql.append(GROUP_BY_PRODUCT);
        sql.append("order by products.created_at desc ");
        sql.append("OFFSET 0 ROWS FETCH NEXT ? rows ONLY; ");
        try {
            PreparedStatement pre = connection.prepareStatement(
                    sql.toString(), ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_READ_ONLY);
            pre.setInt(1, size);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                Product product = new Product(rs.getString(1),
                        rs.getFloat(2), rs.getString(3),
                        rs.getString(4),
                        new Ratting(rs.getInt(5)),
                        new Discount(rs.getInt(6), rs.getBoolean(7)),
                        new ProductStatus(rs.getString(8)));
                list.add(product);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    /**
     * 
     * @param brandName
     * @param size
     * @return 
     */
    public List<Product> getProductHaveSameBrand(String brandName, int size) {
        List<Product> list = new LinkedList<>();
        StringBuilder sql = new StringBuilder(QUERY_PRODUCT);
        sql.append(" LEFT JOIN brands ON products.brand_id = brands.id ");
        sql.append(" where brands.name like ? ");
        sql.append(GROUP_BY_PRODUCT);
        sql.append("order by products.created_at desc ");
        sql.append("OFFSET 0 ROWS FETCH NEXT ? rows ONLY;");
        try {
            PreparedStatement pre = connection.prepareStatement(
                    sql.toString(), ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_READ_ONLY);
            pre.setString(1, "%" + brandName + "%");
            pre.setInt(2, size);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                Product product = new Product(rs.getString(1),
                        rs.getFloat(2), rs.getString(3),
                        rs.getString(4),
                        new Ratting(rs.getInt(5)),
                        new Discount(rs.getInt(6), rs.getBoolean(7)),
                        new ProductStatus(rs.getString(8)));
                list.add(product);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
    /**
     * 
     * @param rating
     * @param size
     * @return 
     */
    public List<Product> getProductByRating(int rating, int size) {
        List<Product> list = new LinkedList<>();
        StringBuilder sql = new StringBuilder(QUERY_PRODUCT);
        sql.append(GROUP_BY_PRODUCT);
        sql.append(" having AVG(rating.rating) >= ? ");
        sql.append("order by products.created_at desc ");
        sql.append("OFFSET 0 ROWS FETCH NEXT ? rows ONLY;");
        try {
            PreparedStatement pre = connection.prepareStatement(
                    sql.toString(), ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_READ_ONLY);
            pre.setFloat(1, rating);
            pre.setInt(2, size);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                Product product = new Product(rs.getString(1),
                        rs.getFloat(2), rs.getString(3),
                        rs.getString(4),
                        new Ratting(rs.getInt(5)),
                        new Discount(rs.getInt(6), rs.getBoolean(7)),
                        new ProductStatus(rs.getString(8)));
                list.add(product);
                product.getProductStatus().getName();
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
    /**
     * 
     * @param size
     * @return 
     */
    public List<Product> getProductLatest(int size) {
        List<Product> list = new LinkedList<>();
        StringBuilder sql = new StringBuilder(QUERY_PRODUCT);
        sql.append(GROUP_BY_PRODUCT);
        sql.append("order by products.created_at desc ");
        sql.append("OFFSET 0 ROWS FETCH NEXT ? rows ONLY;");
        try {
            PreparedStatement pre = connection.prepareStatement(
                    sql.toString(), ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_READ_ONLY);
            pre.setInt(1, size);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                Product product = new Product(rs.getString(1),
                        rs.getFloat(2), rs.getString(3),
                        rs.getString(4),
                        new Ratting(rs.getInt(5)),
                        new Discount(rs.getInt(6), rs.getBoolean(7)),
                        new ProductStatus(rs.getString(8)));
                list.add(product);
                product.getProductStatus().getName();
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
    /**
     * Use to get product have unique name with keys are sizes and colors
     * description, categories, rating, status
     * 
     * @param rs is ResultSet take from input
     * @return list product have unique name
     */
    public List<SubProducts> getProductUniqueName(ResultSet rs) {
        Set<SubProducts> list = new HashSet<>();
        // Convert incomingDataList to a Map to aggregate sizes and colors
        // description, categories, rating, status
        Map<SubProducts, ProductAggregation> productMap = new HashMap<>();
        //Use to set product have same also have same sizes and colors
        // description, categories, rating, status
        try {
            while(rs.next()){
                SubProducts key = new SubProducts(
                        rs.getString(1), rs.getInt(2),
                        null, null, null,
                        rs.getString(6), rs.getString(7), null,
                        rs.getInt(9), rs.getInt(10),
                        null, rs.getString(12));
                ProductAggregation aggregation = 
                        productMap.computeIfAbsent(key, k -> new ProductAggregation());
                aggregation.sizes.add(rs.getInt(3));
                aggregation.colors.add(rs.getString(4));
                aggregation.description.add(rs.getString(5));
                aggregation.rating.add(rs.getInt(8));
                aggregation.status.add(rs.getString(11));
            }
            // Convert map tp set
            list = productMap.entrySet().stream()
                    .map((Map.Entry<SubProducts, ProductAggregation> entry) -> {
                        SubProducts key = entry.getKey();
                        ProductAggregation aggregation = entry.getValue();
                        int[] sizes = aggregation.sizes.stream().mapToInt(i -> i).toArray();
                        String[] colors = aggregation.colors.toArray(String[]::new);
                        String[] description = aggregation.description.toArray(String[]::new);
                        int[] rating = aggregation.rating.stream().mapToInt(i -> i).toArray();
                        String[] status = aggregation.status.toArray(String[]::new);
                        return new SubProducts( key.getName(),
                                key.getPrice(), sizes, colors,
                                description,
                                key.getImg1(), key.getImg2(),
                                rating, key.getDiscount(),
                                key.getDiscount_status(),
                                status,
                                key.getBrand_name());
            })
                    .collect(Collectors.toSet());

        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName())
                    .log(Level.SEVERE, null, ex);
        }

        return new LinkedList<>(list);
    }
    
        /**
     * Use to search product have same given name
     * 
     * @param name is name or text take from input
     * @return list product have same name with given name
     */
    public List<SubProducts> searchName(String name) {
        List<SubProducts> list = new LinkedList<>();
        String sql = """
                    select products.name, products.price, products.size, products.color, products.description,
                    products.img1, products.img2, rating.rating, discounts.discount_percent, discounts.active, 
                    product_status.name, brands.name
                    from products
                    LEFT JOIN product_status on products.status_id = product_status.id
                    LEFT JOIN discounts on products.discount_id = discounts.id
                    LEFT JOIN rating on products.id = rating.product_id                
                    LEFT JOIN brands on products.brand_id = brands.id
                    where products.name like ?
                    """;
        try {
            PreparedStatement pre = connection.prepareStatement(
                    sql, ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_READ_ONLY);
            pre.setString(1,"%"+name+"%");
            ResultSet rs = pre.executeQuery();
            list = getProductUniqueName(rs);
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName())
                    .log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
    
    
    public static void main(String[] args) {
        ProductDAO productDAO = new ProductDAO();
//        List<Product> ls = productDAO.getProductLatest(3);
//        System.out.println(ls.get(0).getDiscount().isActive());
//        ls.forEach(a -> {
//            System.out.println(a.getName());
//        });
        String a="";
        List<SubProducts> lis = productDAO.searchName("k");
    }

}


