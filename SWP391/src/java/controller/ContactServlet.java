/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.CartItemDAO;
import dao.ShoppingSessionDAO;
import dao.UserDAO;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.stream.Collectors;
import model.CartItem;
import model.User;
import util.Address;

/**
 *
 * @author Nhat Anh
 */
@WebServlet(name = "ContactServlet", urlPatterns = {"/contact"})
public class ContactServlet extends HttpServlet {
    
    private static String productContact;
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
            if (request.getParameter("service") == null) {
                view(request, response);
            } else {
                switch (request.getParameter("service")) {
                    case "payment" ->
                        payment(request, response);
                    default ->
                        response.sendRedirect("404.jsp");
                }
            }
        }
    }
    
    public int[] getChosenProduct(HttpServletRequest request, HttpServletResponse response){
        productContact = request.getParameter("checkout");
        return Arrays.stream(productContact.split(","))
                    .mapToInt(Integer::parseInt)
                        .toArray();
    }
    
    private void payment(HttpServletRequest request, HttpServletResponse response) {
        //TO DO make shop_order with ramdon sales and status submit
        // TO DO all product with attribte(productContact) into shop setail
        // with id_shop_order
        // Shop_detail add by list<CartIteam> 
    }    
    
    public void view(HttpServletRequest request, HttpServletResponse response){
        try {      
            UserDAO userDAO = new UserDAO();
            HttpSession session = request.getSession(true);
            CartItemDAO cartItemDAO = new CartItemDAO();
            ShoppingSessionDAO shoppingSessionDAO = new ShoppingSessionDAO();
            SubProductServlet.dataForSider(request, response);
            List<CartItem> list;
            //Get user
            User user = (User)session.getAttribute("account");
            //Get list
            list = user==null?(List<CartItem>)session.getAttribute("cart")
                    :cartItemDAO.getAllBySession(
                            shoppingSessionDAO
                                    .getIdShoppingSessionByUser(user));
            // check null
            if(list==null){
                response.sendRedirect("404.jsp");
                return;
            }
            
            //Get chosen list
            request.setAttribute("cartContact",
                    list.stream().filter(item -> 
                            item.checkExist(getChosenProduct(request, response)))
                            .collect(Collectors.toList()));
            
            //Get information recieve
            if(user!=null){               
                request.setAttribute("contact",user);
                request.setAttribute("address",
                        new Address(
                                userDAO.getUserById(user.getId())
                                        .getUserAddress().getAddressLine()));           
            }          
            RequestDispatcher dispatch = request.getRequestDispatcher("contact.jsp");
            dispatch.forward(request, response);
        } catch (ServletException | IOException ex) {
            Logger.getLogger(ContactServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    
    public static void main(String[] args) {
        productContact="15,21";
        
        for(String a : productContact.split(",")){
            System.out.println(a);
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
        processRequest(request, response);
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
