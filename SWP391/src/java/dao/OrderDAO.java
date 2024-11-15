/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;

import context.DBContext;
import java.security.Timestamp;
import java.util.List;
import model.Tag;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.Date;
import java.time.LocalDate;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.*;

public class OrderDAO extends DBContext {

    private UserDAO uDAO;

    public OrderDAO() {
        uDAO = new UserDAO();
    }

    // Phương thức lấy Order theo id
    public Order getOrderById(int id) throws SQLException {
        Order order = null;
        String query = "SELECT * FROM shop_orders WHERE id = ?";
        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setInt(1, id);
            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                    order = new Order();
                    order.setId(resultSet.getInt("id"));
                    order.setUserId(resultSet.getInt("user_id"));
                    order.setSaleId(resultSet.getInt("sale_id"));
                    order.setStatusId(resultSet.getInt("status_id"));
                    order.setEmail(resultSet.getString("email"));
                    order.setAddress(resultSet.getString("address"));
                    order.setOrderTotal(resultSet.getDouble("order_total"));
                    order.setRecipient(resultSet.getString("recipient"));
                    order.setRecipientPhone(resultSet.getString("recipient_phone"));
                    order.setCreatedAt(resultSet.getTimestamp("created_at"));
                    order.setModifiedAt(resultSet.getTimestamp("modified_at"));
                    order.setNotes(resultSet.getNString("notes"));
                    order.setOrderStatus(getStatusById(order.getStatusId()));
                    order.setUser(new UserDAO().getUserById(order.getUserId()));
                    order.setSale(new UserDAO().getUserById(order.getSaleId()));
                }
            }
        }
        return order;
    }

    public void updateOrderStatus(int orderId, int newStatusId) throws SQLException {
        String query = "UPDATE shop_orders SET status_id = ?, modified_at = CURRENT_TIMESTAMP WHERE id = ?";
        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setInt(1, newStatusId);
            statement.setInt(2, orderId);
            statement.executeUpdate();
        }
    }

    public void updateOrder(int orderId, int newStatusId, int saleId, String note) throws SQLException {
        String query = "UPDATE shop_orders SET status_id = ?, notes = ?, sale_id = ?, modified_at = CURRENT_TIMESTAMP WHERE id = ?";
        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setInt(1, newStatusId);
            statement.setNString(2, note);
            statement.setInt(3, saleId);
            statement.setInt(4, orderId);
            statement.executeUpdate();
        }
    }

    public List<Order> getOrdersByUserId(int userId) throws SQLException {
        List<Order> orders = new ArrayList<>();
        String query = "SELECT * FROM shop_orders WHERE user_id = ?";
        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setInt(1, userId);
            try (ResultSet resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                    Order order = new Order();
                    order.setId(resultSet.getInt("id"));
                    order.setUserId(resultSet.getInt("user_id"));
                    order.setStatusId(resultSet.getInt("status_id"));
                    order.setEmail(resultSet.getString("email"));
                    order.setAddress(resultSet.getString("address"));
                    order.setOrderTotal(resultSet.getDouble("order_total"));
                    order.setRecipient(resultSet.getString("recipient"));
                    order.setRecipientPhone(resultSet.getString("recipient_phone"));
                    order.setCreatedAt(resultSet.getTimestamp("created_at"));
                    order.setModifiedAt(resultSet.getTimestamp("modified_at"));
                    orders.add(order);
                }
            }
        }
        return orders;
    }

    // Phương thức lấy tất cả Order
    public List<Order> getAllOrders() throws SQLException {
        List<Order> orders = new ArrayList<>();
        String query = "SELECT * FROM shop_orders";
        try (PreparedStatement statement = connection.prepareStatement(query); ResultSet resultSet = statement.executeQuery()) {
            while (resultSet.next()) {
                Order order = new Order();
                order.setId(resultSet.getInt("id"));
                order.setUserId(resultSet.getInt("user_id"));
                order.setStatusId(resultSet.getInt("status_id"));
                order.setEmail(resultSet.getString("email"));
                order.setAddress(resultSet.getString("address"));
                order.setOrderTotal(resultSet.getDouble("order_total"));
                order.setRecipient(resultSet.getString("recipient"));
                order.setRecipientPhone(resultSet.getString("recipient_phone"));
                order.setCreatedAt(resultSet.getTimestamp("created_at"));
                order.setModifiedAt(resultSet.getTimestamp("modified_at"));

                order.setUser(uDAO.getUserById(order.getUserId()));
                order.setOrderStatus(getStatusById(order.getStatusId()));
                orders.add(order);
            }
        }
        return orders;
    }

    public List<Order> getOrders(int status, String from, String to, String sname) throws SQLException {
        List<Order> orders = new ArrayList<>();
        boolean isFilter = false;
        String query = "SELECT * FROM shop_orders";
        if (status != 0) {
            query += " where status_id=" + status;
            isFilter = true;
        }

        if (!from.isEmpty() && !to.isEmpty()) {
            if (isFilter) {
                query += " and";
            } else {
                query += " where";
            }
            query += " created_at between '" + from + "' AND '" + to + "' OR modified_at between '" + from + "' AND '" + to + "'";
        }

        try (PreparedStatement statement = connection.prepareStatement(query); ResultSet resultSet = statement.executeQuery()) {
            while (resultSet.next()) {
                Order order = new Order();
                order.setId(resultSet.getInt("id"));
                order.setUserId(resultSet.getInt("user_id"));
                order.setSaleId(resultSet.getInt("sale_id"));
                order.setStatusId(resultSet.getInt("status_id"));
                order.setEmail(resultSet.getString("email"));
                order.setAddress(resultSet.getString("address"));
                order.setOrderTotal(resultSet.getDouble("order_total"));
                order.setRecipient(resultSet.getString("recipient"));
                order.setRecipientPhone(resultSet.getString("recipient_phone"));
                order.setCreatedAt(resultSet.getTimestamp("created_at"));
                order.setModifiedAt(resultSet.getTimestamp("modified_at"));

                order.setUser(uDAO.getUserById(order.getUserId()));
                order.setSale(uDAO.getUserById(order.getSaleId()));
                order.setOrderStatus(getStatusById(order.getStatusId()));
                order.setOrderDetails(getOrderDetailsByOrderId(resultSet.getInt("id")));
                orders.add(order);
            }
        }

        if (sname != null && !sname.isEmpty()) {
            List<Order> filterlist = new ArrayList<>();
            for (Order o : orders) {
                if (o.getSale() != null && o.getSale().getFullname().contains(sname)) {
                    filterlist.add(o);
                }
            }
            return filterlist;
        }

        return orders;
    }

    public List<Order> filterOrders(String ID, String CustomerName, List<Order> orders) {
        List<Order> filterList = new ArrayList<>();
        for (Order o : orders) {
            if (!ID.isEmpty() && !String.valueOf(o.getId()).contains(ID)) {
                break;
            }
            if (!CustomerName.isEmpty() && !o.getUser().getFullname().contains(CustomerName)) {
                break;
            }

            filterList.add(o);
        }
        return filterList;
    }

    public List<Order> getAllOrdersFilter(Integer id, Integer status, String from, String to, Integer sname, String customerName) throws SQLException {
        List<Order> orders = new ArrayList<>();
        StringBuilder queryBuilder = new StringBuilder(
                "SELECT so.id, user_id, sale_id, so.status_id, so.email, address, order_total, "
                + "recipient, recipient_phone, so.created_at, "
                + "u.first_name AS user_first_name, u.last_name AS user_last_name, "
                + "us.first_name AS sale_first_name, us.last_name AS sale_last_name "
                + "FROM shop_orders so "
                + "JOIN users u ON so.user_id = u.id "
                + "JOIN users us ON so.sale_id = us.id "
                + "JOIN order_status os ON so.status_id = os.id "
                + "WHERE 1=1"
        );

        if (id != null) {
            queryBuilder.append(" AND so.id = ?");
        }

        if (status != null) {
            queryBuilder.append(" AND so.status_id = ?");
        }

        if (from != null && !from.isEmpty() && to != null && !to.isEmpty()) {
            queryBuilder.append(" AND so.created_at BETWEEN ? AND ?");
        }

        if (customerName != null && !customerName.isEmpty()) {
            String[] nameParts = customerName.split(" ");
            if (nameParts.length >= 2) {
                queryBuilder.append(" AND (u.first_name LIKE ? AND u.last_name LIKE ?)");
            } else {
                queryBuilder.append(" AND (u.first_name LIKE ? OR u.last_name LIKE ?)");
            }
        }
        
        if (sname != null) {
            queryBuilder.append(" AND sale_id = ?");
        }
        String query = queryBuilder.toString();

        try (PreparedStatement statement = connection.prepareStatement(query)) {
            int paramIndex = 1;

            if (id != null) {
                statement.setInt(paramIndex++, id);
            }

            if (status != null) {
                statement.setInt(paramIndex++, status);
            }

            if (from != null && !from.isEmpty() && to != null && !to.isEmpty()) {
                statement.setString(paramIndex++, from);
                statement.setString(paramIndex++, to);
            }

            if (customerName != null && !customerName.isEmpty()) {
                String[] nameParts = customerName.split("");
                if (nameParts.length >= 2) {
                    String firstName = nameParts[0];
                    String lastName = nameParts[1];
                    statement.setString(paramIndex++, "%" + firstName + "%");
                    statement.setString(paramIndex++, "%" + lastName + "%");
                } else {
                    statement.setString(paramIndex++, "%" + customerName + "%");
                    statement.setString(paramIndex++, "%" + customerName + "%");
                }
            }

            if (sname != null) {
                statement.setInt(paramIndex++, sname);
            }

            try (ResultSet resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                    Order order = new Order();
                    order.setId(resultSet.getInt("id"));
                    order.setUserId(resultSet.getInt("user_id"));
                    order.setSaleId(resultSet.getInt("sale_id"));
                    order.setStatusId(resultSet.getInt("status_id"));
                    order.setEmail(resultSet.getString("email"));
                    order.setAddress(resultSet.getString("address"));
                    order.setOrderTotal(resultSet.getDouble("order_total"));
                    order.setRecipient(resultSet.getString("recipient"));
                    order.setRecipientPhone(resultSet.getString("recipient_phone"));
                    order.setCreatedAt(resultSet.getDate("created_at"));

                    User user = new User();
                    user.setId(resultSet.getInt("user_id"));
                    user.setFirst_name(resultSet.getString("user_first_name"));
                    user.setLast_name(resultSet.getString("user_last_name"));
                    order.setUser(user);

                    User sale = new User();
                    sale.setId(resultSet.getInt("sale_id"));
                    sale.setFirst_name(resultSet.getString("sale_first_name"));
                    sale.setLast_name(resultSet.getString("sale_last_name"));
                    order.setSale(sale);

                    // Lấy chi tiết đơn hàng
                    List<OrderDetail> orderDetails = getOrderDetailsByOrderId(order.getId());
                    order.setOrderDetails(orderDetails);

                    orders.add(order);
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(FeedbackDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return orders;
    }



    // Phương thức thêm Order
    public void addOrder(Order order) throws SQLException {
        String query = "INSERT INTO shop_orders (user_id, status_id, email, address, order_total, recipient, recipient_phone, created_at, modified_at, sale_id, notes) VALUES (?, ?, ?, ?, ?, ?, ?, getdate(), getdate(), ?, ?)";
        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setInt(1, order.getUserId());
            statement.setInt(2, order.getStatusId());
            statement.setString(3, order.getEmail());
            statement.setString(4, order.getAddress());
            statement.setDouble(5, order.getOrderTotal());
            statement.setString(6, order.getRecipient());
            statement.setString(7, order.getRecipientPhone());
            // statement.setDate(8, new java.sql.Date(order.getCreatedAt().getTime())); // Thiết lập thời gian hiện tại cho created_at
            // statement.setDate(9, new java.sql.Date(order.getModifiedAt().getTime())); // Thiết lập thời gian hiện tại cho modified_at
            statement.setInt(8, order.getSaleId()>0?order.getSaleId():0);
            statement.setString(9, order.getNotes()==null?null:order.getNotes());
            statement.executeUpdate();
        }
    }

    // Phương thức xóa Order
    public void deleteOrder(int id) throws SQLException {
        String query = "DELETE FROM shop_orders WHERE id = ?";
        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setInt(1, id);
            statement.executeUpdate();
        }
    }

    // Phương thức lấy tất cả OrderDetail
    public List<OrderDetail> getAllOrderDetails() throws SQLException {
        List<OrderDetail> orderDetails = new ArrayList<>();
        String query = "SELECT * FROM order_details";
        try (PreparedStatement statement = connection.prepareStatement(query); ResultSet resultSet = statement.executeQuery()) {
            while (resultSet.next()) {
                OrderDetail orderDetail = new OrderDetail();
                orderDetail.setId(resultSet.getInt("id"));
                orderDetail.setProductId(resultSet.getInt("product_id"));
                orderDetail.setShopOrderId(resultSet.getInt("shop_order_id"));
                orderDetail.setQuantity(resultSet.getInt("quantity"));
                orderDetail.setPrice(resultSet.getDouble("price"));
                orderDetail.setCreatedAt(resultSet.getTimestamp("created_at"));
                orderDetail.setModifiedAt(resultSet.getTimestamp("modified_at"));
                orderDetails.add(orderDetail);
            }
            statement.close();
        }
        return orderDetails;
    }

    // Phương thức lấy danh sách OrderDetail dựa trên OrderId
    public List<OrderDetail> getOrderDetailsByOrderId(int orderId) throws SQLException {
        List<OrderDetail> orderDetails = new ArrayList<>();
        String query = "SELECT * FROM order_details WHERE shop_order_id = ?";
        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setInt(1, orderId);
            try (ResultSet resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                    OrderDetail orderDetail = new OrderDetail();
                    orderDetail.setId(resultSet.getInt("id"));
                    orderDetail.setProductId(resultSet.getInt("product_id"));
                    orderDetail.setShopOrderId(resultSet.getInt("shop_order_id"));
                    orderDetail.setQuantity(resultSet.getInt("quantity"));
                    orderDetail.setPrice(resultSet.getDouble("price"));
                    orderDetail.setCreatedAt(resultSet.getTimestamp("created_at"));
                    orderDetail.setModifiedAt(resultSet.getTimestamp("modified_at"));
                    orderDetail.setProduct(new ProductDAO().getProductById(orderDetail.getProductId()));
                    orderDetails.add(orderDetail);
                }
                statement.close();
            }
        }
        return orderDetails;
    }

    // Phương thức thêm OrderDetail
    public void addOrderDetail(OrderDetail orderDetail) throws SQLException {
        String query = "INSERT INTO order_details (product_id, shop_order_id, quantity, price, created_at, modified_at) VALUES (?, ?, ?, ?, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)";
        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setInt(1, orderDetail.getProductId());
            statement.setInt(2, orderDetail.getShopOrderId());
            statement.setInt(3, orderDetail.getQuantity());
            statement.setDouble(4, orderDetail.getPrice());
            statement.executeUpdate();
        }
    }

    // Phương thức xóa OrderDetail
    public void deleteOrderDetail(int id) throws SQLException {
        String query = "DELETE FROM order_details WHERE id = ?";
        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setInt(1, id);
            statement.executeUpdate();
        }
    }

    // Phương thức cập nhật OrderDetail
    public void updateOrderDetail(OrderDetail orderDetail) throws SQLException {
        String query = "UPDATE order_details SET product_id = ?, shop_order_id = ?, quantity = ?, price = ?, modified_at = CURRENT_TIMESTAMP WHERE id = ?";
        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setInt(1, orderDetail.getProductId());
            statement.setInt(2, orderDetail.getShopOrderId());
            statement.setInt(3, orderDetail.getQuantity());
            statement.setDouble(4, orderDetail.getPrice());
            statement.setInt(5, orderDetail.getId());
            statement.executeUpdate();
        }
    }
    // Method to retrieve all order statuses

    public List<OrderStatus> getAllStatus() throws SQLException {
        List<OrderStatus> statuses = new ArrayList<>();
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try {
            String query = "SELECT id, name FROM order_status";
            preparedStatement = connection.prepareStatement(query);
            resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                OrderStatus status = new OrderStatus();
                status.setId(resultSet.getInt("id"));
                status.setName(resultSet.getString("name"));
                statuses.add(status);
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

        return statuses;
    }

    // Method to retrieve order status by ID
    public OrderStatus getStatusById(int id) throws SQLException {
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        OrderStatus status = null;

        try {
            String query = "SELECT id, name FROM order_status WHERE id = ?";
            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setInt(1, id);
            resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                status = new OrderStatus();
                status.setId(resultSet.getInt("id"));
                status.setName(resultSet.getString("name"));
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

        return status;
    }
    
    public int getLatestIdShopOrder(){
        String sql="select max(id) from shop_orders";
        try {
            PreparedStatement pre = connection.prepareStatement(
                    sql, ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_READ_ONLY);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
               return rs.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName())
                    .log(Level.SEVERE, null, ex);
        }
        return 0;
    }
    
    // Assume connection is initialized
    public List<Order> getOrdersSale(int saleId, String fromDate, String toDate) throws SQLException {
        List<Order> orders = new ArrayList<>();
        StringBuilder query = new StringBuilder("SELECT * FROM shop_orders WHERE 1=1");

        // Default to the last 7 days if fromDate or toDate is null

        query.append(" AND created_at BETWEEN ? AND ?");

        if (saleId > 0) {
            query.append(" AND sale_id = ?");
        }

        try (PreparedStatement statement = connection.prepareStatement(query.toString())) {
            int paramIndex = 1;
            statement.setString(paramIndex++, fromDate);
            statement.setString(paramIndex++, toDate);

            if (saleId > 0) {
                statement.setInt(paramIndex++, saleId);
            }

            try (ResultSet resultSet = statement.executeQuery()) {
                System.out.println(query);
                while (resultSet.next()) {
                    Order order = new Order();
                    order.setId(resultSet.getInt("id"));
                    order.setUserId(resultSet.getInt("user_id"));
                    order.setStatusId(resultSet.getInt("status_id"));
                    order.setEmail(resultSet.getString("email"));
                    order.setAddress(resultSet.getString("address"));
                    order.setOrderTotal(resultSet.getDouble("order_total"));
                    order.setRecipient(resultSet.getString("recipient"));
                    order.setRecipientPhone(resultSet.getString("recipient_phone"));
                    order.setCreatedAt(resultSet.getTimestamp("created_at"));
                    order.setModifiedAt(resultSet.getTimestamp("modified_at"));
                    order.setSaleId(resultSet.getInt("sale_id"));
                    order.setNotes(resultSet.getString("notes"));
                    orders.add(order);
                }
            }
        }
        return orders;
    }

    public static void main(String[] args) {
        try {
            OrderDAO oDAO = new OrderDAO();
            OrderDetail detail = new OrderDetail(5, 10, 5, 45, null, null);
            oDAO.addOrderDetail(detail);
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
