/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.home;

import dao.BlogDAO;
import mdao.DAOCategories;
import mdao.DAOSliders;
import dto.*;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.*;

/**
 *
 * @author Nhat Anh
 */
@WebServlet(name = "HomeServlet", urlPatterns = {"/home"})
public class HomeServlet extends HttpServlet {

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
            try (PrintWriter out = response.getWriter()) {
                switch(request.getParameter("service")){
                    case "view" -> view(request, response);
                    case "setHeader" -> setHeader(request, response);
                    default -> view(request, response);
                }
            }
        }
    }
    
    
    public void view(HttpServletRequest request, HttpServletResponse response){
        
        try {
            DAOSliders daoSlider = new DAOSliders();
            BlogDAO bDao = new BlogDAO();  
            DTOProducts dTOProducts = new DTOProducts();
            request.setAttribute("title", "Home");
            
            request.setAttribute("blog", bDao.getHotBlog());
            
           request.setAttribute("topSelling", 
                    dTOProducts.getProductLatest("hot", 12));
           
            request.setAttribute("featured", 
                   dTOProducts.getProductByRating(3, 7));
           
            request.setAttribute("slider", daoSlider.getAll());
            RequestDispatcher dispatch = request.getRequestDispatcher("home.jsp");
            dispatch.forward(request, response);
        } catch (ServletException | IOException ex) {
            Logger.getLogger(HomeServlet.class.getName())
                    .log(Level.SEVERE, null, ex);
        }
    }
    
    public void setHeader(HttpServletRequest request, HttpServletResponse response){
        try {
            DAOCategories cDAO = new DAOCategories();
            request.setAttribute("categories", cDAO.getAll());
            RequestDispatcher dispatch = request.getRequestDispatcher("header.jsp");
            dispatch.forward(request, response);
        } catch (ServletException | IOException ex) {
            Logger.getLogger(HomeServlet.class.getName())
                    .log(Level.SEVERE, null, ex);
        }
    }
    
    public static void main(String[] args) {
        DAOCategories cDAO = new DAOCategories();
        List<Category> ls = cDAO.getAll();
        System.out.println(ls.get(0).toString());
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
