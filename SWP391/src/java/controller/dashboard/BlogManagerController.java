/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.dashboard;

import dao.BlogCategoriesDAO;
import dao.BlogDAO;
import dao.UserDAO;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import java.io.File;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Blog;
import model.BlogCategories;
import model.User;

/**
 *
 * @author Admin
 */
@WebServlet(name = "BlogManagerController", urlPatterns = {"/blogManager"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50)   // 50MB
public class BlogManagerController extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private final int PAGE_LIMIT = 10;
    private BlogDAO blogDAO;
    private BlogCategoriesDAO cDAo;
    private UserDAO uDAO;

    public void init() {
        blogDAO = new BlogDAO();
        cDAo = new BlogCategoriesDAO();
        uDAO = new UserDAO();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            listBlogs(request, response);
            return;
        }
        try {
            switch (action) {
                case "new":
                    showNewForm(request, response);
                    break;
                case "insert":
                    insertBlog(request, response);
                    break;
                case "edit":
                    showEditForm(request, response);
                    break;
                case "update":
                    updateBlog(request, response);
                    break;
                default:
                    listBlogs(request, response);
                    break;
            }
        } catch (Exception ex) {
            request.setAttribute("errorCode", 500);
            request.setAttribute("errorMessage", ex.getMessage());
            request.getRequestDispatcher("/accessDenied.jsp").forward(request, response);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            listBlogs(request, response);
            return;
        }

        try {

            switch (action) {
                case "insert":
                    insertBlog(request, response);
                    break;
                case "update":
                    updateBlog(request, response);
                    break;
                case "InActive":
                    inActive(request, response);
                    break;
                case "Active":
                    Active(request, response);
                    break;
                default:
                    listBlogs(request, response);
                    break;
            }
        } catch (Exception e) {
            request.setAttribute("errorCode", 500);
            request.setAttribute("errorMessage", e.getMessage());
            request.getRequestDispatcher("/accessDenied.jsp").forward(request, response);
        }

    }

    private void listBlogs(HttpServletRequest request, HttpServletResponse response) {
        try {
            // Parameters for filtering and pagination
            String category = request.getParameter("category");
            String author = request.getParameter("author");
            String status = request.getParameter("status");
            String title = request.getParameter("title");
            request.setAttribute("title", title);
            String raw_cp = request.getParameter("page") == null ? "1" : request.getParameter("page");
            Integer authorRaw = null;
            if (status != null && status.isEmpty()) {
                status = null;
            }
            if (title != null && title.isEmpty()) {
                title = null;
            }
            if (author != null && !author.isEmpty()) {
                authorRaw = Integer.parseInt(author);
                request.setAttribute("selectedUserId", authorRaw);
            }
            Integer categoryRaw = null;
            if (category != null && !category.isEmpty()) {
                categoryRaw = Integer.parseInt(category);
                request.setAttribute("selectedCateId", categoryRaw);
            }
            // Pagination
            int currentPage = Integer.parseInt(raw_cp);
            int start = (currentPage - 1) * PAGE_LIMIT;
            List<Blog> listBlogs = blogDAO.getAllBlogs(authorRaw, categoryRaw, status, title, null, start, PAGE_LIMIT);
            int totalBlogs = blogDAO.getAllBlogs(authorRaw, categoryRaw, status, title, null, 0, Integer.MAX_VALUE).size();
            int totalPages = (int) Math.ceil((double) totalBlogs / PAGE_LIMIT);

            request.setAttribute("selectedStatus", status);
            request.setAttribute("listCate", cDAo.getAll());
            request.setAttribute("listAut", uDAO.getAllUsers());
            request.setAttribute("listBlogs", listBlogs);
            request.setAttribute("currentPage", currentPage);
            request.setAttribute("totalPages", totalPages);

            RequestDispatcher dispatcher = request.getRequestDispatcher("viewsAdmin/viewBlog.jsp");
            dispatcher.forward(request, response);
        } catch (Exception ex) {
            System.out.println("");
        }
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("viewsAdmin/blog-form.jsp");
        request.setAttribute("listCate", cDAo.getAll());
        dispatcher.forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) throws Exception {
        int id = Integer.parseInt(request.getParameter("id"));
        Blog existingBlog = blogDAO.getByID(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("viewsAdmin/blog-form.jsp");
        request.setAttribute("listCate", cDAo.getAll());
        request.setAttribute("blog", existingBlog);
        dispatcher.forward(request, response);
    }

    private void insertBlog(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();
//        User user = (User) session.getAttribute("account");
//        int userId = Integer.parseInt(request.getParameter("user_id"));
        int userId = 1;
        int blogCateId = Integer.parseInt(request.getParameter("blog_cate_id"));
        String title = request.getParameter("title");
        String context = request.getParameter("context");
        String description = request.getParameter("description");
        String status = request.getParameter("status");

        // Handle file upload
        String coverImgPath = saveUploadedFile(request.getPart("cover_img"));
        String mainImgPath = saveUploadedFile(request.getPart("main_img"));

        Blog newBlog = new Blog();
        newBlog.setStatus("Active");
        newBlog.setBlog_cate_id(blogCateId);
        newBlog.setContext(context);
        newBlog.setTitle(title);
        newBlog.setUser_id(userId);
        newBlog.setCover_img(coverImgPath);
        newBlog.setMain_img(mainImgPath);
        newBlog.setDescription(description);
        newBlog.setStatus(status);
        newBlog.setCreated_at(new Date());
        newBlog.setModified_at(new Date());

        try {
            blogDAO.insertBlog(newBlog);
            response.sendRedirect("blogManager");
        } catch (Exception e) {
            throw new ServletException(e);
        }
    }

    private String saveUploadedFile(Part filePart) throws IOException {
        if (filePart == null || filePart.getSubmittedFileName().isEmpty()) {
            return null; // No file uploaded
        }

        String fileName = filePart.getSubmittedFileName();

        // Get the real path to the 'img' directory
        String relativePath = "img/blogs"; // Relative to the web directory
        String fileSavePath = getServletContext().getRealPath("") + File.separator + relativePath;

        // Create directories if they don't exist
        File fileSaveDir = new File(fileSavePath);
        if (!fileSaveDir.exists()) {
            fileSaveDir.mkdirs();
        }

        String filePath = fileSavePath + File.separator + fileName;
        filePart.write(filePath);

        // Return the relative path to be stored in the database
        return relativePath + "/" + fileName;
    }

    private void updateBlog(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        int blogId = Integer.parseInt(request.getParameter("id"));

        int userId = Integer.parseInt(request.getParameter("user_id"));
        int blogCateId = Integer.parseInt(request.getParameter("blog_cate_id"));
        String title = request.getParameter("title");
        String context = request.getParameter("context");
        String description = request.getParameter("description");

        // Handle file upload
        String coverImgPath = saveUploadedFile(request.getPart("cover_img"));
        String mainImgPath = saveUploadedFile(request.getPart("main_img"));

        Blog newBlog = blogDAO.getByID(blogId);
        newBlog.setBlog_cate_id(blogCateId);
        newBlog.setContext(context);
        newBlog.setTitle(title);
        if (coverImgPath != null) {
            newBlog.setCover_img(coverImgPath);
        }
        if (mainImgPath != null) {
            newBlog.setMain_img(mainImgPath);
        }
        newBlog.setDescription(description);
        try {
            blogDAO.updateBlog(newBlog);
            response.sendRedirect("blogManager");
        } catch (Exception e) {
            throw new ServletException(e);
        }
    }

    private void inActive(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Blog b = blogDAO.getByID(id);
        b.setStatus("InActive");
        blogDAO.updateBlog(b);
        response.sendRedirect("blogManager?action=edit&id=" + id);
    }

    private void Active(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Blog b = blogDAO.getByID(id);
        b.setStatus("Active");
        blogDAO.updateBlog(b);
        response.sendRedirect("blogManager?action=edit&id=" + id);
    }

}
