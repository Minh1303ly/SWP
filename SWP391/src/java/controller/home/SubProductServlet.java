/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.home;

import mdao.DAOSliders;
import mdao.DAOCategories;
import mdao.DAOBrands;
import mdao.DAOProducts;
import dto.DTOProducts;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Slider;

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
        if(request.getParameter("service")==null){
            view(request, response);
        }
        else{
            switch (request.getParameter("service")) {
                case "detail" :
                    detail(request, response);
                    break;
                case "view" :
                    view(request, response);
                    break;
                case "addCartByAjax" :
                    addCartByAjax(request, response);
                    break;
                case "addCart" :
                    addCart(request, response);
                    break;
                case "searchName":
                    searchName(request, response);
                    break;
                default:
                    view(request, response);
            }
        }
    }
    
    public void addCart(HttpServletRequest request, HttpServletResponse response){
        try {
            DTOProducts dtoProducts = new DTOProducts();
            DAOSliders daoSlider = new DAOSliders();
            dataForSider(request, response);
            request.setAttribute("product",
                    dtoProducts.searchName(
                            request.getParameter("name")).get(0) );
            List<Slider> ls = daoSlider.getAll();
            Slider slider = ls.get((int)(Math.random()*ls.size()+1));
            request.setAttribute("slider", slider);
            request.setAttribute("relateProduct",
                    dtoProducts.getRalateProduct(
                            request.getParameter("brand"), 6));
            
            
            RequestDispatcher dispatch = request.getRequestDispatcher("product_detail.jsp");
            dispatch.forward(request, response);
        } catch (ServletException | IOException ex) {
            Logger.getLogger(SubProductServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void addCartByAjax(HttpServletRequest request, HttpServletResponse response){
        try {
            DTOProducts dtoProducts = new DTOProducts();
            request.setAttribute("message", "Hello");
            request.setAttribute("newProduct", 
                    dtoProducts.getProductLatest("new", 2));
            
            
            //Needs to reponse ajax
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write("{\"status\":\"success\"}");
        } catch (IOException ex) {
            Logger.getLogger(SubProductServlet.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void view(HttpServletRequest request, HttpServletResponse response){
        try {
            DTOProducts dtoProducts = new DTOProducts();
            DAOSliders daoSlider = new DAOSliders();
            dataForSider(request, response);
            List<Slider> ls = daoSlider.getAll();
            Slider slider = ls.get((int)(Math.random()*ls.size()+1));
            request.setAttribute("slider", slider);
            request.setAttribute("relateProduct",  
                            dtoProducts.getRalateProduct(
                                    request.getParameter("brand"), 6)); 
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
            DAOSliders daoSlider = new DAOSliders();
            dataForSider(request, response);
            request.setAttribute("product",
                    dtoProducts.searchName(
                            request.getParameter("name")).get(0) );
            List<Slider> ls = daoSlider.getAll();
            Slider slider = ls.get((int)(Math.random()*ls.size()+1));
            request.setAttribute("slider", slider);
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
                    dtoProducts.getProductLatest("new", 3));
            
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
