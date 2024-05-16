/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.User_addressDAO;
import dal.UsersDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.UserAddress;
import model.User;

/**
 *
 * @author Admin
 */
public class ActiveServlet extends HttpServlet {

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
            out.println("<title>Servlet ActiveServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ActiveServlet at " + request.getContextPath() + "</h1>");
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
        String verifyCode = request.getParameter("code");

        UsersDAO udb = new UsersDAO();
        User_addressDAO uadb = new User_addressDAO();

        HttpSession session = request.getSession();
        Object obj = session.getAttribute("code");
        String code = (String) obj;
        
        if(obj == null){
            request.setAttribute("error", "Verify Fail!");
            request.getRequestDispatcher("home.jsp").forward(request, response);
        }

        Object obj2 = session.getAttribute("signUpAccount");
        User u = new User();
        if (obj2 != null) {
            u = (User) obj2;
        }

        Object obj3 = session.getAttribute("signUpAddress");
        UserAddress ua = new UserAddress();
        if (obj3 != null) {
            ua = (UserAddress) obj3;
        }

        if (code.equals(verifyCode)) {
            Object obj4 = udb.getUserByEmail(u.getEmail());
            User u2 = new User();
            if (obj4 != null) {
                u2 = (User) obj4;
            }

            u2.setStatusId(1);
            udb.updateUser(u2);
            session.setAttribute("account", u2);

            UserAddress ua2 = new UserAddress(u2.getId(), ua.getAddressLine(), ua.getCity(), ua.getCountry());
            uadb.insertUserAddress(ua2);

            response.sendRedirect("home");
        } else {
            request.setAttribute("error", "Verify Fail!");
            request.getRequestDispatcher("home.jsp").forward(request, response);
        }
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