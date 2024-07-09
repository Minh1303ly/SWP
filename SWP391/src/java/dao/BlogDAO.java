package dao;

import controller.*;
import context.DBContext;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Blog;
import model.BlogCategories;
import model.Tag;

/**
 *
 * @author 84355
 */
public class BlogDAO extends DBContext {

    private static final String FILTER_BLOGS = "SELECT * FROM (SELECT ROW_NUMBER() OVER (ORDER BY %s) AS rownum, id, user_id, blog_cate_id, title, content, cover_img, main_img, description, created_at, modified_at, status FROM blogs WHERE 1=1";
    private static final String INSERT_BLOG_SQL = "INSERT INTO blogs (user_id, blog_cate_id, title, content, cover_img, main_img, description, created_at, modified_at, status) VALUES (?, ?, ?, ?, ?, ?, ?, GETDATE(), GETDATE(), ?)";
    private static final String UPDATE_BLOG_SQL = "UPDATE blogs SET user_id = ?, blog_cate_id = ?, title = ?, content = ?, cover_img = ?, main_img = ?, description = ?, modified_at = GETDATE(), status = ? WHERE id = ?";
    private UserDAO uDAO;
    private BlogCategoriesDAO bDAO;

    public BlogDAO() {
        uDAO = new UserDAO();
        bDAO = new BlogCategoriesDAO();
    }

    public List<Blog> getAllBlogs(Integer author, Integer category, String status, String title, String sortBy, int start, int total) {
        List<Blog> blogs = new ArrayList<>();
        String orderByClause = sortBy != null && !sortBy.isEmpty() ? sortBy : "id";
        String query = String.format(FILTER_BLOGS, orderByClause);

        if (author != null) {
            query += " AND user_id = ?";
        }
        if (category != null) {
            query += " AND blog_cate_id = ?";
        }
        if (status != null && !status.isEmpty()) {
            query += " AND status = ?";
        }
        if (title != null && !title.isEmpty()) {
            query += " AND title LIKE ?";
        }

        query += ") AS temp WHERE rownum BETWEEN ? AND ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            int parameterIndex = 1;
            if (author != null) {
                preparedStatement.setInt(parameterIndex++, author);
            }
            if (category != null) {
                preparedStatement.setInt(parameterIndex++, category);
            }
            if (status != null && !status.isEmpty()) {
                preparedStatement.setString(parameterIndex++, status);
            }
            if (title != null && !title.isEmpty()) {
                preparedStatement.setString(parameterIndex++, "%" + title + "%");
            }

            preparedStatement.setInt(parameterIndex++, start + 1);
            preparedStatement.setInt(parameterIndex++, start + total);

            ResultSet resultSet = preparedStatement.executeQuery();
            System.out.println(query);

            while (resultSet.next()) {
                Blog p = new Blog();
                p.setId(resultSet.getInt("id"));
                p.setUser_id(resultSet.getInt("user_id"));
                p.setBlog_cate_id(resultSet.getInt("blog_cate_id"));
                p.setTitle(resultSet.getString("title"));
                p.setContext(resultSet.getString("content"));
                p.setCover_img(resultSet.getString("cover_img"));
                p.setMain_img(resultSet.getString("main_img"));
                p.setDescription(resultSet.getString("description"));
                p.setCreated_at(resultSet.getTimestamp("created_at"));
                p.setModified_at(resultSet.getTimestamp("modified_at"));
                p.setStatus(resultSet.getString("status"));
                p.setBlogCategory(bDAO.getByID(p.getBlog_cate_id()));
                p.setUser(uDAO.getUserById(p.getUser_id()));
                blogs.add(p);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return blogs;
    }

    public List<Blog> getAllBlog(Integer quantity) {
        List<Blog> list = new ArrayList<>();
        String query;
        if (quantity == null) {
            query = "SELECT id, user_id, blog_cate_id, title, content, cover_img, main_img, description, created_at, modified_at FROM blogs";
        } else {
            query = "SELECT TOP (?) id, user_id, blog_cate_id, title, content, cover_img, main_img, description, created_at, modified_at FROM blogs ORDER BY created_at ASC";
        }
        try (PreparedStatement st = connection.prepareStatement(query)) {
            if (quantity != null) {
                st.setInt(1, quantity);
            }
            try (ResultSet resultSet = st.executeQuery()) {
                while (resultSet.next()) {
                    Blog p = new Blog();
                    p.setId(resultSet.getInt("id"));
                    p.setUser_id(resultSet.getInt("user_id"));
                    p.setBlog_cate_id(resultSet.getInt("blog_cate_id"));
                    p.setTitle(resultSet.getString("title"));
                    p.setContext(resultSet.getString("content"));
                    p.setCover_img(resultSet.getString("cover_img"));
                    p.setMain_img(resultSet.getString("main_img"));
                    p.setDescription(resultSet.getString("description"));
                    p.setCreated_at(resultSet.getDate("created_at"));
                    p.setModified_at(resultSet.getDate("modified_at"));
                    BlogCategories blogCategory = new BlogCategoriesDAO().getByID(resultSet.getInt("blog_cate_id"));
                    p.setBlogCategory(blogCategory);
                    list.add(p);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }


    public List<Blog> getBlogBetweenDay(String from, String to) {
        List<Blog> list = new ArrayList<>();
        String query = "SELECT id, user_id, blog_cate_id, title, content, cover_img, main_img, description, created_at, modified_at FROM blogs where created_at BETWEEN ? AND ? OR modified_at BETWEEN ? AND ?";
        try (PreparedStatement st = connection.prepareStatement(query)) {
            st.setString(1, from);
            st.setString(3, from);
            st.setString(2, to);
            st.setString(4, to);
            try (ResultSet resultSet = st.executeQuery()) {
                while (resultSet.next()) {
                    Blog p = new Blog();
                    p.setId(resultSet.getInt("id"));
                    p.setUser_id(resultSet.getInt("user_id"));
                    p.setBlog_cate_id(resultSet.getInt("blog_cate_id"));
                    p.setTitle(resultSet.getString("title"));
                    p.setContext(resultSet.getString("content"));
                    p.setCover_img(resultSet.getString("cover_img"));
                    p.setMain_img(resultSet.getString("main_img"));
                    p.setDescription(resultSet.getString("description"));
                    p.setCreated_at(resultSet.getDate("created_at"));
                    p.setModified_at(resultSet.getDate("modified_at"));
                    BlogCategories blogCategory = new BlogCategoriesDAO().getByID(resultSet.getInt("blog_cate_id"));
                    p.setBlogCategory(blogCategory);
                    list.add(p);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
//    public List<Blog> getAllBlog(int currentPage, int limitSize) {
//        List<Blog> list = new ArrayList<>();
//        // Edit query with other entity
//        String query = "SELECT id, user_id, blog_cate_id, title, content, cover_img, main_img, description, created_at, modified_at "
//                // Select total of blog
//                + "FROM (SELECT ROW_NUMBER() OVER (ORDER BY created_at DESC) AS RowNum, * FROM blogs) AS RowConstrainedResult "
//                + "WHERE RowNum > ? AND RowNum <= ?";
//        try (PreparedStatement st = connection.prepareStatement(query)) {
//            int offset = (currentPage - 1) * limitSize;
//            st.setInt(1, offset);
//            st.setInt(2, offset + limitSize);
//            try (ResultSet resultSet = st.executeQuery()) {
//                while (resultSet.next()) {
//                    Blog p = new Blog();
//                    p.setId(resultSet.getInt("id"));
//                    p.setUser_id(resultSet.getInt("user_id"));
//                    p.setBlog_cate_id(resultSet.getInt("blog_cate_id"));
//                    p.setTitle(resultSet.getString("title"));
//                    p.setContext(resultSet.getString("content"));
//                    p.setCover_img(resultSet.getString("cover_img"));
//                    p.setMain_img(resultSet.getString("main_img"));
//                    p.setDescription(resultSet.getString("description"));
//                    p.setCreated_at(resultSet.getDate("created_at"));
//                    p.setModified_at(resultSet.getDate("modified_at"));
//                    BlogCategories blogCategory = new BlogCategoriesDAO().getByID(resultSet.getInt("blog_cate_id"));
//                    p.setBlogCategory(blogCategory);
//                    list.add(p);
//                }
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return list;
//    }

    public Blog getByID(int id) {
        Blog blog = null;
        String query = "SELECT id, user_id, blog_cate_id, title, content, cover_img, main_img, description, created_at, modified_at FROM blogs WHERE id = ?";
        try (PreparedStatement st = connection.prepareStatement(query)) {
            st.setInt(1, id);
            try (ResultSet resultSet = st.executeQuery()) {
                if (resultSet.next()) {
                    blog = new Blog();
                    blog.setId(resultSet.getInt("id"));
                    blog.setUser_id(resultSet.getInt("user_id"));
                    blog.setBlog_cate_id(resultSet.getInt("blog_cate_id"));
                    blog.setTitle(resultSet.getString("title"));
                    blog.setContext(resultSet.getString("content"));
                    blog.setCover_img(resultSet.getString("cover_img"));
                    blog.setMain_img(resultSet.getString("main_img"));
                    blog.setDescription(resultSet.getString("description"));
                    blog.setCreated_at(resultSet.getDate("created_at"));
                    blog.setModified_at(resultSet.getDate("modified_at"));
                    blog.setStatus(resultSet.getString("status"));
                    blog.setUser(new UserDAO().getUserById(blog.getUser_id()));
                    BlogCategories blogCategory = new BlogCategoriesDAO().getByID(resultSet.getInt("blog_cate_id"));
                    blog.setBlogCategory(blogCategory);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return blog;
    }

    public List<Blog> filterBlog(String title, List<Tag> listTag, Integer categoryId) {
        List<Blog> filteredBlogs = new ArrayList<>();
        StringBuilder queryBuilder = new StringBuilder("SELECT id, user_id, blog_cate_id, title, content, cover_img, main_img, description, created_at, modified_at FROM blogs WHERE 1 = 1");

        if (title != null) {
            queryBuilder.append(" AND title LIKE ?");
        }

        if (listTag != null && !listTag.isEmpty()) {
            queryBuilder.append(" AND id IN (SELECT blog_id FROM blog_tags WHERE tag_id IN (");
            for (int i = 0; i < listTag.size(); i++) {
                if (i != 0) {
                    queryBuilder.append(",");
                }
                queryBuilder.append("?");
            }
            queryBuilder.append("))");
        }

        if (categoryId != null) {
            queryBuilder.append(" AND blog_cate_id = ?");
        }

        try (PreparedStatement statement = connection.prepareStatement(queryBuilder.toString())) {
            int parameterIndex = 1;
            if (title != null) {
                statement.setString(parameterIndex++, "%" + title + "%");
            }
            if (listTag != null) {
                for (Tag tag : listTag) {
                    statement.setInt(parameterIndex++, tag.getId());
                }
            }
            if (categoryId != null) {
                statement.setInt(parameterIndex++, categoryId);
            }

            try (ResultSet resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                    Blog p = new Blog();
                    p.setId(resultSet.getInt("id"));
                    p.setUser_id(resultSet.getInt("user_id"));
                    p.setBlog_cate_id(resultSet.getInt("blog_cate_id"));
                    p.setTitle(resultSet.getString("title"));
                    p.setContext(resultSet.getString("content"));
                    p.setCover_img(resultSet.getString("cover_img"));
                    p.setMain_img(resultSet.getString("main_img"));
                    p.setDescription(resultSet.getString("description"));
                    p.setCreated_at(resultSet.getDate("created_at"));
                    p.setModified_at(resultSet.getDate("modified_at"));
                    BlogCategories blogCategory = new BlogCategoriesDAO().getByID(resultSet.getInt("blog_cate_id"));
                    p.setBlogCategory(blogCategory);
                    filteredBlogs.add(p);
                }
            }
        } catch (SQLException ex) {
            ex.printStackTrace(); // Handle or log the exception as needed
        }

        return filteredBlogs;
    }

    public Map<BlogCategories, List<Blog>> getBlogsByCategory() {
        Map<Integer, List<Blog>> blogMap = new HashMap<>();
        String query = "SELECT id, user_id, blog_cate_id, title, content, cover_img, main_img, description, created_at, modified_at FROM blogs";
        try (PreparedStatement st = connection.prepareStatement(query); ResultSet resultSet = st.executeQuery()) {
            while (resultSet.next()) {
                Blog p = new Blog();
                p.setId(resultSet.getInt("id"));
                p.setUser_id(resultSet.getInt("user_id"));
                p.setBlog_cate_id(resultSet.getInt("blog_cate_id"));
                p.setTitle(resultSet.getString("title"));
                p.setContext(resultSet.getString("content"));
                p.setCover_img(resultSet.getString("cover_img"));
                p.setMain_img(resultSet.getString("main_img"));
                p.setDescription(resultSet.getString("description"));
                p.setCreated_at(resultSet.getDate("created_at"));
                p.setModified_at(resultSet.getDate("modified_at"));

                int categoryId = resultSet.getInt("blog_cate_id");

                // Kiểm tra xem danh mục đã tồn tại trong HashMap chưa
                if (!blogMap.containsKey(categoryId)) {
                    // Nếu không, tạo một danh sách mới cho danh mục
                    blogMap.put(categoryId, new ArrayList<>());
                }
                // Thêm bài viết vào danh sách bài viết cho danh mục
                blogMap.get(categoryId).add(p);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        // Chuyển đổi danh sách bài viết của từng danh mục thành danh mục thực tế và trả về
        Map<BlogCategories, List<Blog>> result = new HashMap<>();
        for (Map.Entry<Integer, List<Blog>> entry : blogMap.entrySet()) {
            BlogCategories blogCategory = new BlogCategoriesDAO().getByID(entry.getKey());
            result.put(blogCategory, entry.getValue());
        }

        return result;
    }
    
    /**
     * Use to get top 4 blog order by date created descending
     * 
     * @return list 4 blog order by date created descending
     */
    public List<Blog> getHotBlog(){
        List<Blog> list = new LinkedList<>();
        try {
            String sql = "select top (2) * from blogs order by created_at desc";
            PreparedStatement pre = connection.prepareStatement(sql,
                    ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_READ_ONLY);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {                
                list.add(new Blog(rs.getInt(1), rs.getInt(2),
                        rs.getInt(3), rs.getString(4),
                        rs.getString(5),
                        rs.getString(6), rs.getString(7),
                        rs.getString(8),
                        rs.getDate(9), rs.getDate(10)));
            }          
        } catch (SQLException ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
        }       
        return list;
    }
    
    /**
     * Use to get top 3 blog order by created_at descending
     * 
     * @return list blog order by created_at descending
     */
    public List<Blog> getLatestBlog(){
        List<Blog> list = new LinkedList<>();
        try {
            String sql = "select top (3) * from blogs order by created_at desc";
            PreparedStatement pre = connection.prepareStatement(sql,
                    ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_READ_ONLY);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {                
                list.add(new Blog(rs.getInt(1), rs.getInt(2),
                        rs.getInt(3), rs.getString(4),
                        rs.getString(5),
                        rs.getString(6), rs.getString(7),
                        rs.getString(8),
                        rs.getDate(9), rs.getDate(10)));
            }          
        } catch (SQLException ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
        }       
        return list;
    }

    public void insertBlog(Blog blog) throws SQLException {
        try (PreparedStatement preparedStatement = connection.prepareStatement(INSERT_BLOG_SQL)) {
            preparedStatement.setInt(1, blog.getUser_id());
            preparedStatement.setInt(2, blog.getBlog_cate_id());
            preparedStatement.setString(3, blog.getTitle());
            preparedStatement.setString(4, blog.getContext());
            preparedStatement.setString(5, blog.getCover_img());
            preparedStatement.setString(6, blog.getMain_img());
            preparedStatement.setString(7, blog.getDescription());
            preparedStatement.setString(8, blog.getStatus());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void updateBlog(Blog blog) throws SQLException {
        try (PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_BLOG_SQL)) {
            preparedStatement.setInt(1, blog.getUser_id());
            preparedStatement.setInt(2, blog.getBlog_cate_id());
            preparedStatement.setString(3, blog.getTitle());
            preparedStatement.setString(4, blog.getContext());
            preparedStatement.setString(5, blog.getCover_img());
            preparedStatement.setString(6, blog.getMain_img());
            preparedStatement.setString(7, blog.getDescription());
            preparedStatement.setString(8, blog.getStatus());
            preparedStatement.setInt(9, blog.getId());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        BlogDAO bDAO = new BlogDAO();
        Map<BlogCategories, List<Blog>> blogMap = bDAO.getBlogsByCategory();
        System.out.println(blogMap.size());

        for (Map.Entry<BlogCategories, List<Blog>> entry : blogMap.entrySet()) {
            BlogCategories category = entry.getKey();
            List<Blog> blogs = entry.getValue();

            System.out.println("Category: " + category.getName());
            System.out.println("Size: " + blogs.size());

        }

    }
}
