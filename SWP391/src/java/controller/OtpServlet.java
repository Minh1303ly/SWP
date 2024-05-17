/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.User_addressDAO;
import dal.UsersDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import model.UserAddress;
import model.User;
import util.Email;
import util.Encrypt;

/**
 *
 * @author Admin
 */
public class OtpServlet extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet OtpServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet OtpServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    public static boolean isValidEmailAddress(String email) {
        boolean result = true;
        try {
            InternetAddress emailAddr = new InternetAddress(email);
            emailAddr.validate();
        } catch (AddressException ex) {
            result = false;
        }
        return result;
    }

    public static boolean isValidPassword(String password) {
        /*
        It contains at least one digit (1).
        It contains at least one lowercase letter (b).
        It contains at least one uppercase letter (A).
        It contains at least one special character (@).
        It has no whitespace.
        Its length is within the specified range (8 characters).
         */

        // Regex to check valid password.
        String regex = "^(?=.*[0-9])"
                + "(?=.*[a-z])(?=.*[A-Z])"
                + "(?=.*[@#$%^&+=])"
                + "(?=\\S+$).{8,20}$";

        // Compile the ReGex
        Pattern p = Pattern.compile(regex);

        // If the password is empty
        // return false
        if (password == null) {
            return false;
        }

        // Pattern class contains matcher() method
        // to find matching between given password
        // and regular expression.
        Matcher m = p.matcher(password);

        // Return if the password
        // matched the ReGex
        return m.matches();
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
        request.getRequestDispatcher("otp.jsp").forward(request, response);
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
        String email = request.getParameter("email");
        String password_raw = request.getParameter("password");
        String password = Encrypt.toSHA1(password_raw);
        String gender_raw = request.getParameter("gender");
        String first_name = request.getParameter("first_name");
        String last_name = request.getParameter("last_name");
        String address_line = request.getParameter("address_line");
        String city = request.getParameter("city");
        String country = request.getParameter("country");
        String telephone = request.getParameter("telephone");
        boolean gender = true;

        try {
            if(gender_raw.equals("false")){
                gender = false;
            }
        } catch (NumberFormatException e) {

        }

        UsersDAO udb = new UsersDAO();
//        User_addressDAO uadb = new User_addressDAO();

        //Users u = new User(email, password, 1, 2, first_name, last_name, gender, telephone, new Date(), new Date());
        UserAddress ua = new UserAddress(address_line, city, country);

        if (email == null || email.equals("")
                || password_raw == null || password.equals("")
                || gender_raw == null || gender_raw.equals("")
                || first_name == null || first_name.equals("")
                || last_name == null || last_name.equals("")
                || address_line == null || address_line.equals("")
                || city == null || city.equals("")
                || country == null || country.equals("")
                || telephone == null || telephone.equals("")) {
            request.setAttribute("error", "Not Empty");
            request.getRequestDispatcher("home.jsp").forward(request, response);
        } else if (!isValidEmailAddress(email)) {
            request.setAttribute("error", "Wrong Email Format");
            request.getRequestDispatcher("home.jsp").forward(request, response);
        } else if (!isValidPassword(password_raw)) {
            request.setAttribute("error", "Wrong Password Format");
            request.getRequestDispatcher("home.jsp").forward(request, response);
        } else if (udb.getUserByEmail(email) != null) {
            request.setAttribute("error", "Email Existed");
            request.getRequestDispatcher("home.jsp").forward(request, response);
        } else {
            String code = Email.getRandomNumber();
            String context = request.getScheme()
                    + "://"
                    + request.getServerName()
                    + ":"
                    + request.getServerPort()
                    + "/SWP391/active";
            
            User u = new User(email, password, 1, 2, first_name, last_name, gender, telephone, new Date(), new Date(), code);
            
            Email.sendEmail(email, "Verify Your Email Address", context, code);
            HttpSession session = request.getSession();
            session.setAttribute("signUpAccount", u);
            session.setAttribute("signUpAddress", ua);
            session.setAttribute("code", code);
            
            udb.insertUser(u);
            
            request.getRequestDispatcher("otp.jsp").forward(request, response);
        }
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
