package controller;

import dao.OrderDAO;
import dao.UserDAO;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Order;

/**
 *
 * @author admin
 */
@WebServlet(name = "SaleDBServlet", urlPatterns = {"/saleDB"})
public class SaleDBServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        UserDAO udao = new UserDAO();
        OrderDAO odao = new OrderDAO();

        request.setAttribute("listSale", udao.getAllUserWithParam(0, null, null, 3));

        int saleId = request.getParameter("saleId") != null ? Integer.parseInt(request.getParameter("saleId")) : 0;
        String fromDate = request.getParameter("fromDate");
        String toDate = request.getParameter("toDate");

        if (toDate != null && toDate.isEmpty()) {
            toDate = null;
        }
        if (fromDate != null && fromDate.isEmpty()) {
            fromDate = null;
        }

        request.setAttribute("toDate", toDate);
        request.setAttribute("fromDate", fromDate);

        try {
            List<Order> orders = odao.getOrdersSale(saleId, fromDate, toDate);
            Map<String, Object> rates = calculateOrderRates(orders);
            request.setAttribute("totalOrders", orders.size());
            request.setAttribute("orders", orders);
            request.setAttribute("successRate", rates.get("successRate"));
            request.setAttribute("success", (int) (orders.size() * (double) rates.get("successRate") / 100));
            request.setAttribute("failed", (int) (orders.size() - orders.size() * (double) rates.get("successRate") / 100));
            request.setAttribute("failureRate", rates.get("failureRate"));
            request.setAttribute("totalRevenue", rates.get("totalRevenue"));
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        request.getRequestDispatcher("viewsAdmin/saleDB.jsp").forward(request, response);
    }

    public Map<String, Object> calculateOrderRates(List<Order> orders) {
        int totalOrders = orders.size();
        int successfulOrders = 0;
        int failedOrders = 0;
        double totalRevenue = 0.0;

        for (Order order : orders) {
            if (order.getStatusId() == 1) { // Assuming status_id 1 means successful
                successfulOrders++;
                totalRevenue += order.getOrderTotal(); // Assuming getPrice() returns the price of the order
            } else {
                failedOrders++;
            }
        }

        Map<String, Object> rates = new HashMap<>();
        rates.put("successRate", totalOrders > 0 ? (double) successfulOrders / totalOrders * 100 : 0);
        rates.put("failureRate", totalOrders > 0 ? (double) failedOrders / totalOrders * 100 : 0);
        rates.put("totalRevenue", totalRevenue);

        return rates;
    }
}
