/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.OrderDAO;
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

/**
 *
 * @author admin
 */
@WebServlet(name = "OrderListServlet", urlPatterns = {"/OrderList"})
public class OrderListServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet OrderListServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet OrderListServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.setAttribute("pagging", "OrderList");
        
        int status = 0;
        String from = "";
        String to = "";
        String id = "";
        String name = "";
        String sname = "";
        if (request.getParameter("status") != null) {
            session.setAttribute("olstatus", request.getParameter("status"));
        }

        if (request.getParameter("from") != null) {
            session.setAttribute("olfrom", request.getParameter("from"));
        }

        if (request.getParameter("to") != null) {
            session.setAttribute("olto", request.getParameter("to"));
        }

        if (request.getParameter("id") != null) {
            session.setAttribute("olid", request.getParameter("id"));
        }

        if (request.getParameter("name") != null) {
            session.setAttribute("olname", request.getParameter("name"));
        }
        
        if (request.getParameter("sname") != null) {
            session.setAttribute("olsname", request.getParameter("sname"));
        }

        if (session.getAttribute("olstatus") != null) {
            status = Integer.parseInt((String) session.getAttribute("olstatus"));
        }
        if (session.getAttribute("olfrom") != null) {
            from = (String) session.getAttribute("olfrom");
        }

        if (session.getAttribute("olto") != null) {
            to = (String) session.getAttribute("olto");
        }

        if (session.getAttribute("olid") != null) {
            id = (String) session.getAttribute("olid");
        }

        if (session.getAttribute("olname") != null) {
            name = (String) session.getAttribute("olname");
        }
        
        if (session.getAttribute("olsname") != null) {
            sname = (String) session.getAttribute("olsname");
        }
        try {
            OrderDAO odao = new OrderDAO();
            List<Order> olist = odao.getOrders(status, from, to, sname);
            olist = odao.filterOrders(id, name, olist);
            int cp = 1;
            int perpage = 1;
            if(request.getParameter("cp")!=null) cp = Integer.parseInt(request.getParameter("cp"));
            if(request.getParameter("perpage")!=null) perpage = Integer.parseInt(request.getParameter("perpage"));
            session.setAttribute("page", new Pagination<Order>(olist, perpage, cp));
            request.setAttribute("cp", cp);
            request.setAttribute("perpage", perpage);
            request.setAttribute("olist", olist);
        } catch (SQLException ex) {
            Logger.getLogger(OrderListServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        request.getRequestDispatcher("viewsAdmin/orderList.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
