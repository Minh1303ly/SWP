/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.*;
import dto.DTOProducts;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Nhat Anh
 */
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
        switch (request.getParameter("service")) {
            case "detail" :
                detail(request, response);
                break;
            case "view" :
                view(request, response);
                break;
            case "addCart" :
                addcart(request, response);
                break;
            case "searchName":
                searchName(request, response);
                break;
            default:
                view(request, response);
        }
        
    }
    
    public void addcart(HttpServletRequest request, HttpServletResponse response){
        try {
            DTOProducts dtoProducts = new DTOProducts();
            request.setAttribute("message", "Hello");
            request.setAttribute("newProduct", 
                    dtoProducts.getProductByStatus("new", 2));
            RequestDispatcher dispatch = request.getRequestDispatcher("test.jsp");
            dispatch.forward(request, response);
        } catch (ServletException | IOException ex) {
            Logger.getLogger(SubProductServlet.class.getName())
                    .log(Level.SEVERE, null, ex);
        }
    }
    
    public void view(HttpServletRequest request, HttpServletResponse response){
        try {
            DTOProducts dtoProducts = new DTOProducts();
            dataForSider(request, response);
            RequestDispatcher dispatch = request.getRequestDispatcher("product_list.jsp");
            dispatch.forward(request, response);
        } catch (ServletException | IOException ex) {
            Logger.getLogger(SubProductServlet.class.getName())
                    .log(Level.SEVERE, null, ex);
        }
    }
    
    public void detail(HttpServletRequest request, HttpServletResponse response){
        try {
            DTOProducts dtoProducts = new DTOProducts();
            dataForSider(request, response);
            request.setAttribute("product",
                    dtoProducts.searchName(
                            request.getParameter("name")).get(0) );
            request.setAttribute("newProduct", 
                    dtoProducts.getProductByStatus("new", 2));
            request.setAttribute("relateProduct",  
                            dtoProducts.getRalateProduct(
                                    request.getParameter("brand"), 6));
            
            
            RequestDispatcher dispatch = request.getRequestDispatcher("product_detail.jsp");
            dispatch.forward(request, response);
        } catch (ServletException | IOException ex) {
            Logger.getLogger(SubProductServlet.class.getName())
                    .log(Level.SEVERE, null, ex);
        }
    }
    
    public void dataForSider(HttpServletRequest request, HttpServletResponse response){
            DTOProducts dtoProducts = new DTOProducts();
            DAOProducts dAOProducts = new DAOProducts();
            DAOBrands dAOBrands = new DAOBrands();
            DAOCategories dAOCategories =new DAOCategories();
            request.setAttribute("colorSider",dAOProducts.getAllColor().toArray() );
            request.setAttribute("brandSider", dAOBrands.getAll());
            request.setAttribute("categorySider", dAOCategories.getAll());
            request.setAttribute("newProductSider", 
                    dtoProducts.getProductByStatus("new", 3));
            
    }
    
    public void searchName(HttpServletRequest request, HttpServletResponse response){
        try {
            DTOProducts dtoProducts = new DTOProducts();
            DAOProducts dAOProducts = new DAOProducts();
            DAOBrands dAOBrands = new DAOBrands();
            DAOCategories dAOCategories =new DAOCategories();
            request.setAttribute("colors",dAOProducts.getAllColor().toArray() );
            request.setAttribute("brands", dAOBrands.getAll());
            request.setAttribute("categories", dAOCategories.getAll());
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
