/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.SlidersDAO;
import dao.*;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Slider;
import util.Filter;

/**
 *
 * @author Nhat Anh
 */
@WebServlet(name = "SubProductServlet", urlPatterns = {"/product"})
public class SubProductServlet extends HttpServlet {

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
                case "detail" ->
                    detail(request, response);
                case "view" ->
                    view(request, response);
                case "addCartByAjax" ->
                    addCartByAjax(request, response);
                case "addCart" ->
                    addCart(request, response);
                case "search" ->
                    search(request, response);
                case "getAllColorByName" ->
                    getAllColorByName(request, response);
                case "getAllSizeByName" ->
                    getAllSizeByName(request, response);
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
    public void getAllColorByName(HttpServletRequest request, HttpServletResponse response) {
        try (PrintWriter out = response.getWriter()) {
            ProductDAO productDAO = new ProductDAO();
            String name = request.getParameter("name").replace("_", " ");
            List<String> ls = productDAO.getAllColorByName(name);
            ls.forEach(a -> {
                out.print("<option value=\"" + a + "\">" + a + "</option>");
            });
        } catch (IOException ex) {
            Logger.getLogger(SubProductServlet.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * 
     * @param request
     * @param response 
     */
    public void getAllSizeByName(HttpServletRequest request, HttpServletResponse response) {
        try (PrintWriter out = response.getWriter()) {
            ProductDAO productDAO = new ProductDAO();
            String name = request.getParameter("name").replace("_", " ");
            List<Integer> ls = productDAO.getAllSizeByName(name);
            ls.forEach(a -> {
                out.print("<option value=\"" + a + "\">" + a + "</option>");
            });

        } catch (IOException ex) {
            Logger.getLogger(SubProductServlet.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     *
     * @param request
     * @param response
     */
    public void addCart(HttpServletRequest request, HttpServletResponse response) {
        try {
            ProductDAO productDAO = new ProductDAO();
            SlidersDAO daoSlider = new SlidersDAO();
            dataForSider(request, response);
            request.setAttribute("product",
                    productDAO.searchUniqueName(
                            request.getParameter("name")).get(0));          
            request.setAttribute("slider", daoSlider.getRadom());
            RequestDispatcher dispatch = request.getRequestDispatcher("product_detail.jsp");
            dispatch.forward(request, response);
        } catch (ServletException | IOException ex) {
            Logger.getLogger(SubProductServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     *
     * @param request
     * @param response
     */
    public void addCartByAjax(HttpServletRequest request, HttpServletResponse response) {
        try (PrintWriter out = response.getWriter()) {
            String name = request.getParameter("name");
            String color = request.getParameter("color");
             String size = request.getParameter("size");
            out.print("hello" + name + color + size);

        } catch (IOException ex) {
            Logger.getLogger(SubProductServlet.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     *
     *
     * @param request servlet request
     * @param response servlet response
     */
    public void view(HttpServletRequest request, HttpServletResponse response) {
        try {
            SlidersDAO daoSlider = new SlidersDAO();
            dataForSider(request, response);
            request.setAttribute("slider", daoSlider.getRadom());
            HttpSession session= request.getSession(true);  
            Filter filter = new Filter("view",null,null, 
                    null, null, null, null);
            session.setAttribute("filter", filter);       
            RequestDispatcher dispatch = request.getRequestDispatcher("product_list.jsp");
            dispatch.forward(request, response);
        } catch (ServletException | IOException ex) {
            Logger.getLogger(SubProductServlet.class.getName())
                    .log(Level.SEVERE, null, ex);
        }
    }
    
    /**
     *
     *
     * @param request servlet request
     * @param response servlet response
     */
    public void viewByCategory(HttpServletRequest request, HttpServletResponse response) {
        try {
            SlidersDAO daoSlider = new SlidersDAO();
            dataForSider(request, response);
            request.setAttribute("slider", daoSlider.getRadom());
            HttpSession session= request.getSession(true);  
            Filter filter = new Filter("viewByCategory",
                    null,
                    request.getParameter("category"), 
                    request.getParameter("subCategory"), 
                    null, null, null);
            session.setAttribute("filter", filter);       
            RequestDispatcher dispatch = request.getRequestDispatcher("product_list.jsp");
            dispatch.forward(request, response);
        } catch (ServletException | IOException ex) {
            Logger.getLogger(SubProductServlet.class.getName())
                    .log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Use take information of product for selected product from wed
     *
     * @param request servlet request
     * @param response servlet response
     */
    public void detail(HttpServletRequest request, HttpServletResponse response) {
        try {
            ProductDAO productDAO = new ProductDAO();
            SlidersDAO daoSlider = new SlidersDAO();
            dataForSider(request, response);
            request.setAttribute("product",
                    productDAO.searchUniqueName(
                            request.getParameter("name")).get(0));
            request.setAttribute("slider", daoSlider.getRadom());
            RequestDispatcher dispatch = request.getRequestDispatcher("product_detail.jsp");
            dispatch.forward(request, response);
        } catch (ServletException | IOException ex) {
            Logger.getLogger(SubProductServlet.class.getName())
                    .log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Use to set data for sider of wed
     *
     * @param request servlet request
     * @param response servlet response
     */
    public void dataForSider(HttpServletRequest request, HttpServletResponse response) {
        ProductDAO productDAO = new ProductDAO();
        ProductDAO dAOProducts = new ProductDAO();
        BrandDAO dAOBrands = new BrandDAO();
        CategoryDAO dAOCategories = new CategoryDAO();
        request.setAttribute("colorSider", dAOProducts.getAllColor().toArray());
        request.setAttribute("brandSider", dAOBrands.getAllByStatus());
        request.setAttribute("categorySider", dAOCategories.getHierarchyCategory());
        request.setAttribute("latestProduct",
                productDAO.getProductLatest( 3));
    }

    /**
     *
     *
     * @param request servlet request
     * @param response servlet response
     */
    public void search(HttpServletRequest request, HttpServletResponse response) {
        try {   
            SlidersDAO daoSlider = new SlidersDAO();
            dataForSider(request, response);
            request.setAttribute("slider", daoSlider.getRadom());
            HttpSession session= request.getSession(true);  
            Filter filter = new Filter("search", 
                    request.getParameter("name"),
                    null, null, null, null, null);
            session.setAttribute("filter", filter);
            RequestDispatcher dispatch = request.getRequestDispatcher("product_list.jsp");
            dispatch.forward(request, response);
        } catch (ServletException | IOException ex) {
            Logger.getLogger(SubProductServlet.class.getName())
                    .log(Level.SEVERE, null, ex);
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
