/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.dashboard;

import dao.FeedbackDAO;
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
import model.Pagination;
import model.Ratting;

/**
 *
 * @author 84355
 */
@WebServlet(name = "FeedBackListController", urlPatterns = {"/feedbackList"})
public class FeedBackListController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            FeedbackDAO fDAO = new FeedbackDAO();
            String search = request.getParameter("search");
            String name = request.getParameter("name");
            String status = request.getParameter("status");
            String ratingString = request.getParameter("rating");
            // Lấy danh sách tất cả người dùng
            List<Ratting> list = fDAO.getAllRatingFilter(null, null, null, null);
            HttpSession session = request.getSession();

            if (name != null) {
                name = name.replace("+", " ");
                list = fDAO.getAllRatingFilter(null, null, name, null);
            }
            else if (search != null && !search.isEmpty()) {
                search = search.replace("+", " ");
                list = fDAO.getAllRatingFilter(null, null, null, search);
            }
            else if (status != null && !status.isEmpty()) {
                list = fDAO.getAllRatingFilter(status, null, null, null);
            }
            else if (ratingString != null && !ratingString.isEmpty()) {
                int rating = Integer.parseInt(ratingString);
                list = fDAO.getAllRatingFilter(null, rating, null, null);
            }

            // start pagging
            int limitPage = 10;
            if (request.getParameter("cp") == null) {
                Pagination Page = new Pagination(list, limitPage, 1);
                Pagination<Ratting> pagination = new Pagination<>(list, limitPage, 1);
                list = pagination.getItemsOnPage();
                session.setAttribute("page", Page);
                request.setAttribute("list", pagination.getItemsOnPage());
            } else if (request.getParameter("cp") != null) {
                int cp = Integer.parseInt(request.getParameter("cp"));
                Pagination Page = new Pagination(list, limitPage, cp);
                Pagination<Ratting> pagination = new Pagination<>(list, limitPage, cp);
                list = pagination.getItemsOnPage();
                session.setAttribute("page", Page);
            }
            // set URL
            request.setAttribute("pagging", "feedbackList");
            session.setAttribute("paramSearch", search);
            session.setAttribute("paramStatus", status);
            session.setAttribute("paramRating", ratingString);
            // end pagging
            request.setAttribute("listFeedBack", list);
            request.getRequestDispatcher("viewsAdmin/viewFeedback.jsp").forward(request, response);
        } catch (SQLException ex) {
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }
}
