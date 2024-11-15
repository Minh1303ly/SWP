/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.dashboard;

import controller.OrderDetailController;
import dao.OrderDAO;
import dao.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.OrderDetail;
import model.User;

/**
 *
 * @author admin
 */
@WebServlet(name = "OrderDetailServlet", urlPatterns = {"/OrderDetailAdmin"})
public class OrderDetailServlet extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String idRaw = request.getParameter("id");
            double totalPrice = 0;
            int totalUnit = 0;

            OrderDAO oDAO = new OrderDAO();
            List<OrderDetail> list = oDAO.getOrderDetailsByOrderId(Integer.parseInt(idRaw));
            for (OrderDetail o : list) {
                totalPrice += o.getPrice() * o.getQuantity();
                totalUnit += o.getQuantity();
            }
            request.setAttribute("totalPrice", totalPrice);
            request.setAttribute("totalUnit", totalUnit);
            request.setAttribute("order", oDAO.getOrderById(Integer.parseInt(idRaw)));
            List<User> users = new UserDAO().getAllUsers();
            request.setAttribute("users", users);
            request.setAttribute("list", list);
        } catch (Exception ex) {
            Logger.getLogger(OrderDetailController.class.getName()).log(Level.SEVERE, null, ex);
        }
        request.getRequestDispatcher("viewsAdmin/orderDetail.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int orderid = Integer.parseInt(request.getParameter("orderid"));
        int saleid = Integer.parseInt(request.getParameter("sale"));
        int status = Integer.parseInt(request.getParameter("status"));
        String note = request.getParameter("note");
        try {
            new OrderDAO().updateOrder(orderid, status, saleid, note);
        } catch (SQLException ex) {
            Logger.getLogger(OrderDetailServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        response.sendRedirect("OrderDetailAdmin?id="+orderid);
    }
}
