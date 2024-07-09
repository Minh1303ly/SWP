/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.dashboard;

import dao.OrderDAO;
import dao.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Order;
import model.Pagination;
import model.User;

/**
 *
 * @author admin
 */
@WebServlet(name = "OrderListServlet", urlPatterns = {"/orderList"})
public class OrderListServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
      
            OrderDAO oDAO = new OrderDAO();
            // Get the parameters from the request
            String from = request.getParameter("from");
            String to = request.getParameter("to");
            String statusString = request.getParameter("status");
            String idString = request.getParameter("id");
            String name = request.getParameter("name");
            String snameString = request.getParameter("sname");

            HttpSession session = request.getSession();
            Integer status = null;
            Integer id = null;            
            Integer sname = null;

            // Convert ratingString to Integer if it's not null or empty
            if (statusString != null && !statusString.isEmpty()) {
                status = Integer.parseInt(statusString);
            }
            if (idString != null && !idString.isEmpty()) {
                id = Integer.parseInt(idString);
            }
            if (snameString != null && !snameString.isEmpty()) {
                sname = Integer.parseInt(snameString);
            }
            List<Order> list = oDAO.getAllOrdersFilter(id, status, from, to, sname, name);
            List<User> users = new UserDAO().getAllUsers();
            request.setAttribute("users", users);
            // start pagging
            int limitPage = 10;
            if (request.getParameter("cp") == null) {
                Pagination Page = new Pagination(list, limitPage, 1);
                Pagination<Order> pagination = new Pagination<>(list, limitPage, 1);
                list = pagination.getItemsOnPage();
                session.setAttribute("page", Page);
                request.setAttribute("list", pagination.getItemsOnPage());
            } else if (request.getParameter("cp") != null) {
                int cp = Integer.parseInt(request.getParameter("cp"));
                Pagination Page = new Pagination(list, limitPage, cp);
                Pagination<Order> pagination = new Pagination<>(list, limitPage, cp);
                list = pagination.getItemsOnPage();
                session.setAttribute("page", Page);
            }
            // set URL
            request.setAttribute("pagging", "orderList");
            session.setAttribute("from", from);
            session.setAttribute("to", to);
            session.setAttribute("status", statusString);
            session.setAttribute("id", idString);
            session.setAttribute("name", name);
            session.setAttribute("sname", sname);
            // end pagging
            request.setAttribute("listOrder", list);
            request.getRequestDispatcher("viewsAdmin/orderList.jsp").forward(request, response);

        } catch (SQLException ex) {
            Logger.getLogger(OrderListServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }
}
