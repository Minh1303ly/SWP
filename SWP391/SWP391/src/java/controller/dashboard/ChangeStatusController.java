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

/**
 *
 * @author 84355
 */
@WebServlet(name = "ChangeStatusController", urlPatterns = {"/feedbackStatus"})
public class ChangeStatusController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            String status = request.getParameter("status");
            String statusImage = request.getParameter("statusImage");
            String mode = request.getParameter("mode");
            FeedbackDAO dao = new FeedbackDAO();
            switch (mode) {
                case "status":
                    dao.changeRatingStatus(id, status);
                    response.sendRedirect("feedbackList");
                    break;
                case "image":
                    dao.changeRatingStatusImage(id, statusImage);
                    response.sendRedirect("feedbackDetail?id=" + id);
                    break;
            }
        } catch (Exception e) {
            response.sendRedirect("error.jsp");
        }
    }
}
