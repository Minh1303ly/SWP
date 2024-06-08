/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.dashboard;

import dao.CategoryDAO;
import dao.DiscountDAO;
import dao.ProductStatusDAO;
import dao.ProductsDAO;
import dao.SubCategoryDAO;
import dto.ProductDTO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Category;
import model.Discount;
import model.Pagination;
import model.ProductStatus;
import model.SubCategory;
import model.User;

/**
 *
 * @author Admin
 */
@WebServlet(name="ProductListServlet", urlPatterns={"/productList"})
public class ProductListServlet extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
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
            out.println("<title>Servlet ProductListServlet</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProductListServlet at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        HttpSession session = request.getSession();
        CategoryDAO cdb = new CategoryDAO();
        SubCategoryDAO scdb = new SubCategoryDAO();
        ProductStatusDAO psdb = new ProductStatusDAO();
        ProductsDAO pdb = new ProductsDAO();
        DiscountDAO ddb = new DiscountDAO();
        
        //Get parameter
        String search = request.getParameter("search");
        String category = request.getParameter("category");
        String subcategory = request.getParameter("subcategory");
        String status_raw = request.getParameter("status");
        int status = 0;
        
        try{
            status = Integer.parseInt(status_raw);
        }catch(NumberFormatException e){
            e.printStackTrace();
        }
        
        
        //get list category
        List<Category> categories = new ArrayList<>();
        try{
            categories = cdb.getAll();
        }catch(SQLException e){
            e.printStackTrace();
        }
        
        //get list sub category
        List<SubCategory> subCategories = new ArrayList<>();
        try{
            subCategories = scdb.getAll();
        }catch(SQLException e){
            e.printStackTrace();
        }
        
        //get list product status
        List<ProductStatus> listProductStatus = new ArrayList<>();
        try{
            listProductStatus = psdb.getAll();
        }catch(SQLException e){
            e.printStackTrace();
        }
        
        //get list discount
        List<Discount> listDiscount = ddb.getAllDiscount();
        
        // get list product
        List<ProductDTO> listProduct = pdb.filterProductAndSearch(category, subcategory, search, status);
        
        if(search == null || search.equals("")
                && category == null || category.equals("")
                && subcategory == null || subcategory.equals("")
                && status_raw == null || status_raw.equals("")){
            listProduct = pdb.getAllProduct();
        }
        
        // start pagging
        int limitPage = 10;
        if (request.getParameter("cp") == null) {
            Pagination Page = new Pagination(listProduct, limitPage, 1);
            Pagination<ProductDTO> pagination = new Pagination<>(listProduct, limitPage, 1);
            listProduct = pagination.getItemsOnPage();
            session.setAttribute("page", Page);
            request.setAttribute("listProduct", pagination.getItemsOnPage());
        } else if (request.getParameter("cp") != null) {
            int cp = Integer.parseInt(request.getParameter("cp"));
            Pagination Page = new Pagination(listProduct, limitPage, cp);
            Pagination<ProductDTO> pagination = new Pagination<>(listProduct, limitPage, cp);
            listProduct = pagination.getItemsOnPage();
            session.setAttribute("page", Page);
        }
        
        // set URL
        request.setAttribute("pagging", "productList");
        
        request.setAttribute("search", search);
        request.setAttribute("category", category);
        request.setAttribute("subcategory", subcategory);
        request.setAttribute("status", status);
        
        
        // end pagging
        request.setAttribute("listProduct", listProduct);
        
        session.setAttribute("categories", categories);
        session.setAttribute("subCategories", subCategories);
        session.setAttribute("listProductStatus", listProductStatus);
        session.setAttribute("listDiscount", listDiscount);
        
        request.getRequestDispatcher("viewsAdmin/viewProduct.jsp").forward(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
