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
                    order.setNote(resultSet.getNString("notes"));
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

    // Phương thức thêm Order
    public void addOrder(Order order) throws SQLException {
        String query = "INSERT INTO shop_orders (user_id, status_id, email, address, order_total, recipient, recipient_phone, created_at, modified_at) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setInt(1, order.getUserId());
            statement.setInt(2, order.getStatusId());
            statement.setString(3, order.getEmail());
            statement.setString(4, order.getAddress());
            statement.setDouble(5, order.getOrderTotal());
            statement.setString(6, order.getRecipient());
            statement.setString(7, order.getRecipientPhone());
            statement.setDate(8, new java.sql.Date(order.getCreatedAt().getTime())); // Thiết lập thời gian hiện tại cho created_at
            statement.setDate(9, new java.sql.Date(order.getModifiedAt().getTime())); // Thiết lập thời gian hiện tại cho modified_at
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

    // Assume connection is initialized
    public List<Order> getOrdersSale(int saleId, String fromDate, String toDate) throws SQLException {
        List<Order> orders = new ArrayList<>();
        StringBuilder query = new StringBuilder("SELECT * FROM shop_orders WHERE 1=1");

        // Default to the last 7 days if fromDate or toDate is null
        if (fromDate == null || fromDate.isEmpty() || toDate == null || toDate.isEmpty()) {
            LocalDate now = LocalDate.now();
            fromDate = now.minusDays(7).toString();
            toDate = now.toString();
        }

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
                    order.setNote(resultSet.getString("notes"));
                    orders.add(order);
                }
            }
        }
        return orders;
    }

    public static void main(String[] args) {
        OrderDAO oDAO = new OrderDAO();
        try {
            System.out.println(oDAO.getOrdersSale(12, "2000-05-01", "2030-05-01"));
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
