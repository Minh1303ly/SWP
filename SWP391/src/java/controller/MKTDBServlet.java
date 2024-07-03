/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.BlogDAO;
import dao.ProductDAO;
import dao.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Blog;
import model.Product;
import model.User;

/**
 *
 * @author admin
 */
@WebServlet(name = "MKTDBServlet", urlPatterns = {"/MKTDB"})
public class MKTDBServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String todayFormatted = request.getParameter("to");
        String sevenDaysAgoFormatted = request.getParameter("form");
        if (request.getParameter("form") == null || request.getParameter("to") == null) {
            // Lấy ngày hiện tại
            LocalDate today = LocalDate.now();

            // Lấy ngày cách đây 7 ngày
            LocalDate sevenDaysAgo = today.minusDays(7);

            // Định dạng ngày
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");

            // Chuyển đổi ngày thành chuỗi với định dạng yyyy-MM-dd
             todayFormatted = today.format(formatter);
             sevenDaysAgoFormatted = sevenDaysAgo.format(formatter);
        }

        try {
            List<Blog> blogs = new BlogDAO().getBlogBetweenDay(sevenDaysAgoFormatted, todayFormatted);
            List<Product> products = new ProductDAO().getProductBetweenDay(sevenDaysAgoFormatted, todayFormatted);
            List<User> users = new UserDAO().getUsersBetweenDay(sevenDaysAgoFormatted, todayFormatted);
            request.setAttribute("blogs", blogs);
            request.setAttribute("products", products);
            request.setAttribute("users", users);
            request.setAttribute("from", sevenDaysAgoFormatted);
            request.setAttribute("to", todayFormatted);
        } catch (SQLException ex) {
            Logger.getLogger(MKTDBServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

        request.getRequestDispatcher("viewsAdmin/MKTDB.jsp").forward(request, response);
    }
}
