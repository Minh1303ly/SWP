package controller;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
import dao.CartItemDAO;
import dao.ProductDAO;
import dao.ShoppingSessionDAO;
import dao.SlidersDAO;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.CartItem;
import model.Product;
import model.User;

/**
 *
 * @author Nhat Anh
 */
@WebServlet(name = "CartServlet", urlPatterns = {"/cart"})
public class CartServlet extends HttpServlet {

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

        if (request.getParameter("service") == null) {
            view(request, response);
        } else {
            switch (request.getParameter("service")) {
                case "view" ->
                    view(request, response);
                case "addCart" ->
                    addCart(request, response);
                default ->
                    response.sendRedirect("404.html");
            }
        }
    }

    /**
     *
     * @param request
     * @param response
     */
    public void addCart(HttpServletRequest request, HttpServletResponse response) {
        try (PrintWriter out = response.getWriter()) {
            String name = request.getParameter("name");
            String color = request.getParameter("color");
            String size = request.getParameter("size");
            String quantity = request.getParameter("quantity");
            if (color.equalsIgnoreCase("color")) {
                color = null;
            }
            if (size.equalsIgnoreCase("size")) {
                size = null;
            }
            if (color == null || size == null || name == null) {
                return;
            }
            HttpSession session = request.getSession(true);
            quantity = quantity == null ? "1" : quantity;
            if (session.getAttribute("account") == null) {
                out.print(addCartForGuest(request, name, color,
                         Integer.parseInt(size),
                         Integer.parseInt(quantity)));
            } else {
                out.print(addCartForUser(request, name, color,
                         Integer.parseInt(size),
                         Integer.parseInt(quantity)));
            }

        } catch (IOException ex) {
            Logger.getLogger(SubProductServlet.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
    }

    public boolean addCartForGuest(HttpServletRequest request,
             String name, String color,
             int size, int quantity) {
        HttpSession session = request.getSession(true);
        ProductDAO productDAO = new ProductDAO();
        List<CartItem> ls = (List<CartItem>)session.getAttribute("cart");
        ls = ls==null?new LinkedList<>():ls;
        Product product = productDAO.getProductDetailForCart(
                name, color, size);
        if(product==null){
            return false;
        }
        if (quantity > product.getQuantity()) {
            return false;
        }
        for(CartItem a : ls){
            if(a.getProductId()==product.getId()){
                a.setQuantity(a.getQuantity()+quantity);
                session.setAttribute("cart", ls);
                return true;
            }
        }
        ls.add(new CartItem(
                ls.size() + 1,
                 product.getId(),
                 quantity,
                 product));
        session.setAttribute("cart", ls);
        return true;
    }

    public boolean addCartForUser(HttpServletRequest request,
             String name, String color,
             int size, int quantity) {
        HttpSession session = request.getSession(true);
        ShoppingSessionDAO shoppingSessionDAO = new ShoppingSessionDAO();
        CartItemDAO cartItemDAO = new CartItemDAO();
        ProductDAO productDAO = new ProductDAO();
        Product product = productDAO.getProductDetailForCart(
                        name,color,size);
        int idSession = shoppingSessionDAO
                        .getIdShoppingSessionByUser(
                                (User) session.getAttribute("account"));
        CartItem cartItem = cartItemDAO.checkExistInSession(
                idSession
                ,product.getId());
        if(cartItem!=null){
            return cartItemDAO.update(cartItem.getId()
                    , quantity + cartItem.getQuantity() );
        }
        return cartItemDAO.add(idSession,
                 product, quantity);
    }

    public void view(HttpServletRequest request, HttpServletResponse response) {
        try (PrintWriter out = response.getWriter()) {
            ProductDAO productDAO = new ProductDAO();
            HttpSession session = request.getSession(true);
            List<String> ls = productDAO.getAllColor();
            int i = 1;
            for (String a : ls) {
                out.print("<tr>\n"
                        + "                                            <th scope=\"row\">1</th>\n"
                        + "                                            <td class=\"wider-col\">Data 2</td>\n"
                        + "                                            <td>Data 3</td>\n"
                        + "                                            <td>Data 4</td>\n"
                        + "                                            <td>Data 5</td>\n"
                        + "                                            <td class=\"wider-col\">\n"
                        + "                                                <div class=\"qty-input\">\n"
                        + "                                                    <button class=\"qty-count qty-count_minus\" data-action=\"minus\" type=\"submit\" onclick=\"update('minus','#'+'quantity_3')\">-</button>\n"
                        + "                                                    <input class=\"product-qty\" type=\"number\" id=\"quantity_3\" min=\"1\" value=\"1\" onchange=\"update('','#quantity_3')\">\n"
                        + "                                                    <button class=\"qty-count qty-count_add\" data-action=\"add\" type=\"submit\" onclick=\"update('add','#quantity_3')\">+</button>\n"
                        + "                                                </div>\n"
                        + "\n"
                        + "                                            </td>\n"
                        + "                                            <td>Data 7</td>\n"
                        + "                                            <td>\n"
                        + "                                                <i class=\"ti-trash\" onclick=\"remove(3)\"></i>\n"
                        + "                                            </td>\n"
                        + "                                        </tr>");

            }
        } catch (IOException ex) {
            Logger.getLogger(SubProductServlet.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static void main(String[] args) {
        List<CartItem> ls = new LinkedList<>();
        System.out.println(ls.size());
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
